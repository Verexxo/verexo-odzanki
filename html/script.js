window.addEventListener('message', (event) => {
    const data = event.data;


    if (data.type === 'pd') {
        const pdopen = data.pdopen;
        
        document.getElementById('name1').innerText = data.firstname;
        document.getElementById('name2').innerText = data.lastname;
        document.getElementById('name1-1').innerText = data.firstname;
        document.getElementById('name2-2').innerText = data.lastname;
        document.getElementById('badge').innerText = data.badge;
        document.getElementById('stopien-pd').innerText = data.gname;

        
        if (pdopen) {
            document.getElementById('pd').style.display = 'block';
            
           
            setTimeout(function() {
                document.getElementById('pd').style.display = 'none';

            }, 6000);
        } else {
            document.getElementById('pd').style.display = 'none';
        }
    }
    
    if (data.type === 'ems') {

        const emsopen = data.pdopen;
    
        document.getElementById('name1-ems').innerText = data.firstname;
        document.getElementById('name2-ems').innerText = data.lastname;
        document.getElementById('name1-ems-1').innerText = data.firstname;
        document.getElementById('name2-ems-2').innerText = data.lastname;
        document.getElementById('badge-ems').innerText = data.badge;
        document.getElementById('stopien-ems').innerText = data.gname;
      
        if (emsopen) {
            document.getElementById('ems').style.display = 'block';
            setTimeout(function() {
                document.getElementById('ems').style.display = 'none';
  
            }, 6000);
        } else {
            document.getElementById('ems').style.display = 'none';
            
        }
        
    }

    if (data.type === 'lsc') {

        const lscopen = data.pdopen;
    
        document.getElementById('name1-lsc').innerText = data.firstname;
        document.getElementById('name2-lsc').innerText = data.lastname;
        document.getElementById('name1-lsc-1').innerText = data.firstname;
        document.getElementById('name2-lsc-2').innerText = data.lastname;
        document.getElementById('badge-lsc').innerText = data.badge;
        document.getElementById('stopien-lsc').innerText = data.gname;
        if (lscopen) {
            document.getElementById('lsc').style.display = 'block';
            setTimeout(function() {
                document.getElementById('lsc').style.display = 'none';
  
            }, 6000);
        } else {
            document.getElementById('lsc').style.display = 'none';
            
        }
        
    }
    if (data.type === 'sasd') {

        const sasdopen = data.pdopen;
    
        document.getElementById('name1-sasd').innerText = data.firstname;
        document.getElementById('name2-sasd').innerText = data.lastname;
        document.getElementById('name1-sasd-1').innerText = data.firstname;
        document.getElementById('name2-sasd-2').innerText = data.lastname;
        document.getElementById('badge-sasd').innerText = data.badge;
        document.getElementById('stopien-sasd').innerText = data.gname;
        if (sasdopen) {
            document.getElementById('sasd').style.display = 'block';
            setTimeout(function() {
                document.getElementById('sasd').style.display = 'none';
          
            }, 6000);
            
        } else {
            document.getElementById('sasd').style.display = 'none';
            
        }
        
    }

    if (data.type === 'doj') {

        const sasdopen = data.pdopen;
    
        document.getElementById('name1-doj').innerText = data.firstname;
        document.getElementById('name2-doj').innerText = data.lastname;
        document.getElementById('name1-doj-1').innerText = data.firstname;
        document.getElementById('name2-doj-2').innerText = data.lastname;
        document.getElementById('badge-doj').innerText = data.badge;
        document.getElementById('stopien-doj').innerText = data.gname;
        if (sasdopen) {
            document.getElementById('doj').style.display = 'block';
            setTimeout(function() {
                document.getElementById('doj').style.display = 'none';
          
            }, 6000);
            
        } else {
            document.getElementById('doj').style.display = 'none';
            
        }
        
    }
    console.log(data.type)
    if (data.type === 'lsc2') {

        const sasdopen = data.pdopen;
    
        document.getElementById('name1-lsc2').innerText = data.firstname;
        document.getElementById('name2-lsc2').innerText = data.lastname;
        document.getElementById('name1-lsc2-1').innerText = data.firstname;
        document.getElementById('name2-lsc2-2').innerText = data.lastname;
        document.getElementById('badge-lsc2').innerText = data.badge;
        document.getElementById('stopien-lsc2').innerText = data.gname;
        if (sasdopen) {
            document.getElementById('lsc22').style.display = 'block';
            setTimeout(function() {
                document.getElementById('lsc22').style.display = 'none';
          
            }, 6000);
            
        } else {
            document.getElementById('lsc22').style.display = 'none';
            
        }
        
    }
});


document.onkeyup = function (data) {
    if (data.which == 27) {
        $.post('https://verexo-odznaki/exit', JSON.stringify({}));

        
    }
}
function exit() {
    $.post('https://verexo-odznaki/exit', JSON.stringify({}));
}