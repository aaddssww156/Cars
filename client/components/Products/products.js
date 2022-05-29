class Products{
    constructor() {
        this.classNameActive = 'products-element__btn_active';
        this.labelAdd = 'Добавить в корзину';
        this.labelRemove = 'Удалить из корзины';
        this.imgArray = ['https://vladivostok.td-kama.com/upload/resize_cache/iblock/1c7/440_440_1/02_Bosco%20AT_V-237.png','https://autodromo.ru/sites/default/files/styles/node/public/articles/23-11.png?itok=VsRkwED2','https://grosta.ru/upload/iblock/ca3/ca3b2ffae7da9d4bfdb532467b1ce30d.jpg','https://ae04.alicdn.com/kf/U46a6a362d3e4416bb0ba10ef6bb53a5ax/Pirelli-225-60-17-v-99-powergy-summer-tire.jpg_480x480xzq55.jpg'];
    }
    
    handleSetLocationStorage(element, id){
        const { pushProduct, products } = localStorageUtil.putProducts(id);
        
        if (pushProduct) {
            element.classList.add(this.classNameActive);
            element.innerHTML = this.labelRemove;
        } else {
            element.classList.remove(this.classNameActive);
            element.innerHTML = this.labelAdd;
        }

        headerPage.render(products.length);
    }

    render(){
        const productsStore = localStorageUtil.getProducts();
        let htmlCatalog = '';
        
        CATALOG.forEach(({id, manufacturer, name, width, height, radius, season, price, img }) => {
            let activeClass = '';
            let activeText = '';
            img = this.imgArray[Math.floor(Math.random() * this.imgArray.length)];
            if (productsStore.indexOf(id) === -1) {
                activeText = this.labelAdd;                
            } else {
                activeClass = ' ' + this.classNameActive;
                activeText = this.labelRemove;              

            }

            htmlCatalog += `
                <li class="products-element">
                    <span class="products-element__name">${manufacturer}</span>
                    <span class="products-element__name">${name}</span>
                    <img class="products-element__img" src="${img}"/>
                    <span>${width}</span>
                    <span>${height}</span>
                    <span>${radius}</span>
                    <span>${season}</span>
                    <span class="products-element__price">
                        🏷️ ${price.toLocaleString()} RUB
                    </span>
                    <button class="products-element__btn${activeClass}"
                     onclick="productsPage.handleSetLocationStorage(this, '${id}');">
                        ${activeText}
                    </button>
                </li>
            `;
        });

        const html = `
            <ul class="products-container">
                ${htmlCatalog}
            </ul>        
        `;

        ROOT_PRODUCTS.innerHTML = html;
    }
}
const productsPage = new Products();

