$(()=>{
    let pager = $(".pager");
    let table = $(".product-table");
    let tbody = table.find("tbody");
    let searchForm = $(".search-form");
    let searchButton = searchForm.find("input[type=submit]");
    let searchInput = searchForm.find("input[type=search]");
    let searchFeild = searchForm.find("select");
    let allCheckButton = $(".all-check-button");
    let checkBox = tbody.find("input[type=checkbox]")
    let categoryMenu = $(".product-category-menu");
    let pub = $(".seller-pub");

//    categoryMenu.click(e=>{
//        let select = null;
//        if(e.target.tagName == "LI")
//            select = e.target;
//        else if(e.target.tagName == "SPAN")
//            select = e.target.parentElement
//
//            console.log(select);
//    })
    
    allCheckButton.click(e=>{
        if(allCheckButton.prop("checked"))
            checkBox.prop("checked",true)
        else
            checkBox.prop("checked",false)
    })
    
    pub.click(e=>{
    	
    	
    })
    
 
    
});

