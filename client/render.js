function render() {
    const productsStore = localStorageUtil.getProducts();

    headerPage.render(productsStore.length);
    productsPage.render();
    filterPage.render();
}

let CATALOG = [];



fetch('catalog.json')
    .then(res => res.json())
    .then(body => {
        CATALOG = body;
        render();
        
    })
    .catch(error => {
        console.log(error);
    });