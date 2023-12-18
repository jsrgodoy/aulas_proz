document.addEventListener('keyup', (e) => {
    if (e.code == 'Backspace') {     
      window.location.href = './index.html';
  }
  console.log(e.code) 
    
  })