$(document).ready( ()=>{


//Funcao do Modal
function iniciaModal(modalID) {
   
    const modal = document.getElementById(modalID);
    if (modal) {

        modal.classList.add('ativa');
        console.log(modalID);
        modal.addEventListener('click', (e) => {
            if (e.target.id == modalID || e.target.className == 'fechar' || e.target.className == 'x-icon') {
                console.log("Fechou");
                modal.classList.remove('ativa');
            }


        });


  };


}
const about = document.querySelector('.about');
about.addEventListener('click',() => iniciaModal('modal'));
    
});


            



  






