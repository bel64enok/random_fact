    let myImage = document.querySelector('img');

    myImage.onclick = function() {
        let mySrc = myImage.getAttribute('src');
        if(mySrc === 'images/dice-six-faces-random-white.png') {
            myImage.setAttribute ('src','images/dice-six-faces-random-black.png');
        } else {
            myImage.setAttribute ('src','images/dice-six-faces-random-white.png');
        }
    }

// Personalized welcome message code

    let myButton = document.querySelector('button');
    let myHeading = document.querySelector('h1');

    function setUserName() {
        let myName = prompt('Please enter your name.');
        if(!myName) {
            setUserName();
        } else {
            localStorage.setItem('name', myName);
            myHeading.innerHTML = 'Random Fact, ' + myName;
        }
    }

    if(!localStorage.getItem('name')) {
        setUserName();
    } else {
        let storedName = localStorage.getItem('name');
        myHeading.innerHTML = 'Mozilla is cool, ' + storedName;
    }

    myButton.onclick = function() {
        setUserName();
    }