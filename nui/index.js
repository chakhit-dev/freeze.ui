function playMyAudio(){
    document.getElementById("myAudio").play();
}

function openNUI(){
    $('#container').show()
}

$('#close').click(function () {
    $.post('http://lnw_freeze/Freeza')
    $('#container').hide()
    playMyAudio()
})

window.addEventListener('message', (event) => {

    if (event.data.type === 'open') {
        openNUI();
    }
});