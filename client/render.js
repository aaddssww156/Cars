function render(isDisk) {
    const productsStore = localStorageUtil.getProducts();
    
    console.log("do IF " + isDisk)
    /*if (isDisk == false) {
        productsPage.render();
        alert("false")
                
    } else if (isDisk == true){
        productsPage.renderRims(); 
        alert("true")    
        
    }*/

    
    switch(isDisk) {
        case 'true': 
        productsPage.renderRims();        
        break;

        case 'false': 
        productsPage.render();        
        break;
    }
    
    
    
    //productsPage.render();
    filterPage.render();
}

let CATALOG = [];



fetch('catalog.json')
    .then(res => res.json())
    .then(body => {
        CATALOG = body;
        render(localStorage.isDisk);
        console.log(localStorage.isDisk)
    })
    .catch(error => {
        console.log(error);
    });