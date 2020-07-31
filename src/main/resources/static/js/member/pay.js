$(()=>{
   let addressInfoContainer = $(".address-info-container");
   let addressRadio = addressInfoContainer.find("input[type=radio]");
   let oldDeliInfo = addressInfoContainer.find(".old-delivery-info");
   let newDeliInfo = addressInfoContainer.find(".new-delivery-info");

   addressRadio.click(e=>{
       if($(e.target).val() == "new"){
            oldDeliInfo.addClass("d-none"); 
            newDeliInfo.removeClass("d-none");
       }
       else{
            oldDeliInfo.removeClass("d-none"); 
            newDeliInfo.addClass("d-none");
       }
   })
});