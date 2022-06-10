function render() {
    const productsStore = localStorageUtil.getProducts();

    if(isDisk == true) {
        productsPage.render();
        //isDisk = false;
    } else {
        productsPage.renderRims();
        //isDisk = true;
    }

    
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