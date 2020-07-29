$(()=>{
    let itemExplain = $(".product-explain");
    let itemTitle = itemExplain.find(".product-dt");
    let orderForm = $(".submits");
    let basketButton = orderForm.find(".basket-button");
    let attButton = orderForm.find(".att-button");
    let msgBox = $(".msg-box");
    let msgContent = msgBox.find(".msg");
    let msgClose = msgBox.find(".close");

    msgClose.click(e=>{
        msgBox.addClass("d-none");
    });

    basketButton.click(e=>{
        e.preventDefault();
    })	

    attButton.click(e=>{
        e.preventDefault(); 

        let itemId = itemTitle.data("id");

        fetch(`../favitem/contain?id=${itemId}`)
        .then(res => res.json())
        .then(json=>{
            if(json == 1){
                msg = "관심상품에 등록하였습니다.";
            }
            else if(json == 2){
                msg= "관심상품에서 해제되었습니다.";
            }
            else{
                msp = "관심상품에 등록할 수 없습니다.";
            }

            alertMsgBox(msg);
        })
    })

    const alertMsgBox = msg =>{
        msgContent.text(msg);
        msgBox.removeClass("d-none");
    }
})   