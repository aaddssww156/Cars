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

    showManufacturerModels(event, name){

    }

    render(){
        const html = `
        
        <div class="tab">
        <!-- <form action="/" method="get" name="tires_all"> -->
        <button class="tablinks" onclick="filterPage.openCity(event, 'Tires')">Шины</button>
        </form>
        <!-- <form action="/disks" method="get" name="disks_all"> -->
        <button class="tablinks" onclick="filterPage.openCity(event, 'Rims')">Диски</button>
        </form>
      </div>
      
      <!-- Содержимое вкладки шины -->
      <div id="Tires" class="tabcontent">
      <form action="/tires" name="tires" method="post">
      <div>
      
      <div class="row">
      <label for="manufacturer">Производитель</label>
      <select id="manufacturer" name="manufacturer">
        <option value="toyota">Toyota</option>
        <option value="nissan">Nissan</option>        
      </select>
      </div>

      <div class ="row">
      <label for="model">Модель</label>
      <input type="text" id="model" name="model" placeholder="Модель...">
      </div>

      <div class ="row">
      <label for="kuzov">Кузов</label>
      <input type="text" id="kuzov" name="kuzov" placeholder="Кузов...">
      </div>

      <div class ="row">
      <label for="length">Ширина</label>
      <input type="text" id="length" name="length" placeholder="Ширина...">
      </div>

      <div class="row">
      <label for="lname">Высота</label>
      <input type="text" id="height" name="height" placeholder="Высота..">
      </div>

      <div class="row">
      <label for="radius">Радиус</label>
      <input list="radius-vars" id="radius" name="radius"/>
      <datalist id="radius-vars">
        <option value="R14">
        <option value="R14">
               
      </datalist>
      </div> 

      <div class="row">
      <label for="season">Сезон</label>
      <select id="season" name="season">
        <option value="summer">Лето</option>
        <option value="Winter">Зима</option>        
      </select>
      </div>

      <div>
      <button type="submit">Принять</button>
      </div>
      </div>
        </form>       
      </div>
      


      <!-- Содержимое вкладки диски -->
      <div id="Rims" class="tabcontent">
      <form action="/disks" method="post" name="disks"> 
      <div>

      <div class="row">
      <label for="manufacturer">Производитель</label>
      <select id="manufacturer" name="manufacturer">
        <option value="toyota">Toyota</option>
        <option value="nissan">Nissan</option>        
      </select>
      </div>

      <div class ="row">
      <label for="model">Модель</label>
      <input type="text" id="model" name="model" placeholder="Модель...">
      </div>

      <div class ="row">
      <label for="kuzov">Кузов</label>
      <input type="text" id="kuzov" name="kuzov" placeholder="Кузов...">
      </div>

      <div class="row">
      <label for="length">Ширина</label>
      <input type="text" id="length" name="length" placeholder="Ширина...">
      </div>
    
      <div class="row">
      <label for="radius">Радиус</label>
      <input list="radius-vars" id="radius" name="radius"/>
      <datalist id="radius-vars">
        <option value="R14">
        <option value="R15">
               
      </datalist>
      </div>
            
      <div class="row">
      <label for="dia">DIA</label>
      <input type="text" id="dia" name="dia" placeholder="DIA...">
      </div>
      
      <div class="row">
      <label for="pcd">PCD</label>
      <input type="text" id="pcd" name="pcd" placeholder="PCD...">
      </div>

      <div>
      <button type="submit">Принять</button>
      </div>
      </div>
        </form>       
      
      </div>     
      
      
        `;
        ROOT_FILTER.innerHTML = html;        
    }
}

const filterPage = new Filter();