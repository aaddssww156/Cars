class Filter {

    render(){
        const html = `
        <div class="tab">
        <button class="tablinks" onclick="openCity(event, 'London')">Лондон</button>
        <button class="tablinks" onclick="openCity(event, 'Paris')">Париж</button>
        <button class="tablinks" onclick="openCity(event, 'Tokyo')">Токио</button>
      </div>
      
      <!-- Содержимое вкладки -->
      <div id="London" class="tabcontent">
        <h3>Лондон</h3>
        <p>Лондон является столицей Англии.</p>
      </div>
      
      <div id="Paris" class="tabcontent">
        <h3>Париж</h3>
        <p>Париж является столицей Франции.</p>
      </div>
      
      <div id="Tokyo" class="tabcontent">
        <h3>Токио</h3>
        <p>Токио является столицей Японии.</p>
      </div> 
        `;
        ROOT_FILTER.innerHTML = html;
    }
}

const filterPage = new Filter();