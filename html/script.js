$(function(){
    let countNoti = 0;

    window.addEventListener('message' , function(event) {

        const {action , text , time , title , inCar} = event.data

        if(action == 'show:noti') {
            countNoti++

            let idNoti = countNoti;

            $('.noti').show();
            $('.noti').append( `
                <div class="ncontainer" id="noti-${idNoti}">
                    <div id="ntitle">
                    <i class="fa-solid fa-check" id="info-icon"></i>${title}</div>
                    <div id="infotext">${text}</div>
                </div>
            `)

            setTimeout(function(){
                $(`#noti-${idNoti}`).hide();
                $(`#noti-${idNoti}`).empty();
            } , time)
        };

        if(action == 'car:show') {
            if(inCar) {
                $('.noti').css({'bottom' : '11vw' , 'left' : '2.5vw'});
            }else{
                $('.noti').css({'bottom' : '2vw' , 'left' : '2vw'});
            };
        };
        
    })
})