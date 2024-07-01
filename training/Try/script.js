async function getListFilms() {
    const options = {
      method: 'GET',
      headers: {
        accept: 'application/json',
        Authorization: 'Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI1ZjViOWQ4NTQzODM2OGYxMzg2OTc3MzlkMDY3NmU5MCIsInN1YiI6IjY1ZGI2NDU5ODI2MWVlMDE4NWMyZmE3OSIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.EqaglO-GjtRSZOQomGgTqN6cuNF7LE1oecefis70Kds'
      }
    };
    
    fetch('https://api.themoviedb.org/3/discover/movie?include_adult=false&include_video=false&language=en-US&page=1&primary_release_date.gte=2024-02-27&sort_by=popularity.desc', options)
      .then(response => response.json())
      .then(response => response.results)
      .then(movies => movies.forEach(createFilmInDOM))
      .catch(err => console.error(err));
  }
  function createFilmInDOM(){
    let crea = document.querySelector('.film')
        crea.innerHTML +=`
        <div class="film-group">
            <h2>${montitre}</h2>
        </div>
        `
  }