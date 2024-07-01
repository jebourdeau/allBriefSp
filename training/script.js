let div = document.getElementsByClassName('box');
let next = document.querySelector("#next");
let prev = document.querySelector("#prev");
let result = document.querySelector('h1');
let toggle = document.querySelector("#toggle");





prev.addEventListener('click', Prevclick)
     function Prevclick() {
    for (let i = 0; i < div.length; i++) {
        if (div[i].classList.contains('active')) {
            div[i].classList.remove('active');
            if (i === 0){
                div[div.length - 1].classList.add('active');
                break;
            }
            div[i - 1].classList.add('active');
            
        }
        
    }
}

next.addEventListener('click', Nextclick)
function Nextclick() {
    for (let i = 0; i < div.length; i++) {
        if (div[i].classList.contains('active')) {
            div[i].classList.remove('active');
            if(i === div.length - 1){
                div[0].classList.add('active');
                break;
            }
            div[i + 1].classList.add('active');
            break;
        }
        
    }
}

toggle.addEventListener('click', ()=>{
    setInterval(Nextclick, 150 );
    for (let i = 0; i < div.length; i++) {
        const element = div[i];
        if (div[i].classList.contains('active')) {
            div[i].classList.remove('active');          
        }        
    }
    div[Math.floor(Math.random()*10)].classList.add('active');
    setTimeout (Nextclick, 500);
    clearInterval(500);
    // result.innerHTML = "YOU WIN!!";
})

// let timerId = setTimeout("next", [300], ["let's go!!"]);
// const element = document.getElementById("h1");
// setInterval(function() {element.innerHTML += "Hello"}, 1000);


// const addClass = () => {
// for (let i = 0; i < div.length; i++) {
//     const element = div[i];
//     element.classList.add("active");
//     console.log(element, ':', element.classList);
// }
// }
// const removeClass = () => {
// for (let i = 0; i < div.length; i++) {
//     const element = div[i];
//     element.classList.remove("active");
//     console.log(element, ':', element.classList);
// }
// }
// btns.forEach(element => {
//     element.addEventListener("click", () => {
//     if(element.id == "prev"){
//         addClass();
//     }; 
//     if(element.id == "next"){
//         removeClass();
//     }; 
//  });
// });



// btn.addEventListener("click", () => {
//     if(div.classList.includes('active')){
//         removeClass()
//     }else{
//         addClass()
//     }
// });

