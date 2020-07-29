/**
 * 
 */

$(function(){
	let allFavItem = $(".all-view-font.fav-item");
	let favItemList = $(".att-list.fav-item-list");
	
	allFavItem.click(function(e){
		e.preventDefault();
		
		fetch(`/favitem/viewList`)
	    .then(res => res.json())
	    .then(json=>{
	    	let a = $(".fav");
	    	a.remove();
	    	
	    	for(let n of json ){
	    		favItemList.append(
	    		`<a class="fav" href="/item/${n.itemId}">
                            		<div class="att-item fav-item">
                            			<img src="../images/${n.itemImgName }">
                            			<div class="att-item-des">[은팜독점] ${ n.itemName}</div>
                            		</div>
                            	</a>`);
	    	}

	    });
	});
});
	


	