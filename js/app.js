function app() {   
    const xmlhttp = new XMLHttpRequest();
    xmlhttp.onload = function () {
        console.log("response="+this.responseText);
        localStorage.setItem('items', this.responseText);      
    };
    xmlhttp.open("GET", "json_demo_db.php");
    xmlhttp.send();
    this.select = document.getElementsByTagName('select');
    this.listing = document.getElementById('listing');
    this.nameInput = document.getElementsByClassName('text-input');
    this.checkBoxes = document.querySelectorAll('input[type="checkbox"]');
    this.checkboxLabel = document.querySelector('.price-filter label');
    try {
        this.items = JSON.parse(localStorage.getItem('items')) || [];
    } catch (error) {
        console.log('Error:',error.message);
    }

    this.filters = {
        name: '',
        language: '',
        genre: ''
    };
    this.filteredItems = this.items;
}

app.prototype.render = function () {
    if (this.filteredItems.length === 0) {
        const template = `
            <h1 class="no-data">
                No results found.
            </h1>`;
        const element = document.createElement('div');
        element.innerHTML = template;
        this.listing.innerHTML = template;
    }
    this.filteredItems.forEach((item) => {
        const {name,actors,posterimg,trailerlink,movielink,genre,lang} = item;
        const template = `
            <div class="row">
                <div class="mobile-image">
                    <img src="images/${posterimg}.jpg"/>
                </div>
                <div class="mobile-content">
                    <h3 style="color:#0f71a1;font-size:2rem">
                        ${name}
                    </h3>
                    <h5>
                        Genre: ${genre}<br></br>
                        Language: ${lang}<br></br>
                        Actors: ${actors}<br></br>                                         
                    </h5>                                     
                </div>
                ${movielink}          
                  
            </div>`;
        const element = document.createElement('div');
        element.innerHTML = template;
        this.listing.appendChild(element);
    });
}

app.prototype.bindEvents = function () {
    this.nameInput[0].addEventListener('input', (e) => {
        this.filters.name = e.target.value;
        this.filterResults();
    });

    this.select[0].addEventListener('change', (e) => {
        this.filters.language = e.target.value;
        this.filterResults();
    });

    this.checkBoxes.forEach((checkbox) => {
        checkbox.addEventListener('click', (e) => {
            if (!this.filters.genre) {
                this.filters.genre = [];
            }
            const index = this.filters.genre.indexOf(e.target.value);
            if (index !== -1) {
                this.filters.genre.splice(index, 1);
            }
            else {
                this.filters.genre.push(e.target.value);
            }
            this.filterResults();
        });
    });
}

app.prototype.filterResults = function () {
    this.listing.innerHTML = '';
    const range = {
        '0': "SuperHero",
        '1': "Horror",
        '2': "Comedy",
        '3': "Romance",
        '4': "Thriller",
        '5': "Drama",
        '6': "Action"
    };
    this.filteredItems = this.items.filter((item) => {
        let filter = true;
        if (this.filters.name && !item.name.toLocaleLowerCase().includes(this.filters.name.toLocaleLowerCase())) {
            filter = false;
        };

        if (filter && this.filters.language && !item.lang.toLocaleLowerCase().includes(this.filters.language.toLocaleLowerCase())) {
            filter = false;
        };

        if (filter && this.filters.genre && this.filters.genre.length > 0) {
            const result = this.filters.genre.map((genre) => {
                return range[genre];
            });
            const filteredPrice = result.filter((eachItem) => {
                return item.genre === eachItem;
            });

            if (filteredPrice.length === 0) {
                filter = false;
            }
        }

        return filter;
    });
    this.render();
}

const instance = new app();
instance.render();
instance.bindEvents();