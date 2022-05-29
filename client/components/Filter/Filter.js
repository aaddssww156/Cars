class Filter {

    openCity(evt, cityName) {
        // Объявить все переменные
        var i, tabcontent, tablinks;
      
        // Получить все элементы с помощью class="tabcontent" и спрятать их
        tabcontent = document.getElementsByClassName("tabcontent");
        for (i = 0; i < tabcontent.length; i++) {
          tabcontent[i].style.display = "none";
        }
        
      
        // Получить все элементы с помощью class="tablinks" и удалить class "active"
        tablinks = document.getElementsByClassName("tablinks");
        for (i = 0; i < tablinks.length; i++) {
          tablinks[i].className = tablinks[i].className.replace(" active", "");
        }
      
        // Показать текущую вкладку и добавить "active" класс для кнопки, которая открыла вкладку
        document.getElementById(cityName).style.display = "block";
        evt.currentTarget.className += " active";

        
      }

    render(){
        const html = `
        
        <div class="tab">
        <button class="tablinks" onclick="filterPage.openCity(event, 'Tires')">Шины</button>
        <button class="tablinks" onclick="filterPage.openCity(event, 'Rims')">Диски</button>
        
      </div>
      
      <!-- Содержимое вкладки шины -->
      <div id="Tires" class="tabcontent">
      <form action="findTires.js">
      <label for="length">Ширина</label>
      <input type="text" id="length" name="length" placeholder="Ширина...">
    
      <label for="lname">Высота</label>
      <input type="text" id="height" name="height" placeholder="Высота..">
    
      <label for="radius">Радиус</label>
      <input list="radius-vars" id="radius" name="radius"/>
      <datalist id="radius-vars">
        <option value="R14">
        <option value="R14">
               
      </datalist>
            

      <label for="season">Сезон</label>
      <select id="season" name="season">
        <option value="summer">Лето</option>
        <option value="Winter">Зима</option>        
      </select>
    
      <input type="submit" value="Принять">
        </form>       
      </div>
      


      <!-- Содержимое вкладки диски -->
      <div id="Rims" class="tabcontent">
      <form action="findRims.js">
      <label for="length">Ширина</label>
      <input type="text" id="length" name="length" placeholder="Ширина...">
    
    
      <label for="radius">Радиус</label>
      <input list="radius-vars" id="radius" name="radius"/>
      <datalist id="radius-vars">
        <option value="R14">
        <option value="R15">
               
      </datalist>
            

      <label for="dia">DIA</label>
      <input type="text" id="dia" name="dia" placeholder="DIA...">

      <label for="pcd">PCD</label>
      <input type="text" id="pcd" name="pcd" placeholder="PCD...">
    
      <input type="submit" value="Принять">
        </form>       
      
      </div>     
      
      
        `;
        ROOT_FILTER.innerHTML = html;        
    }
}

const filterPage = new Filter();