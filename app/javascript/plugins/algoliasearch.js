import { displaySearch } from '../plugins/algoliadisplay'

const algoliasearch = require("algoliasearch");

const client = algoliasearch(window.algolia_application_id, algolia_search_only_api_key);
const index = client.initIndex("Meal");
const cardsContainer = document.querySelector('.container-cards');

const initAlgoliaSearch = () => {

// console.log("je suis dans initAlgoliaSearch");

const form = document.querySelector('.algolia-form');
// console.log(form);
form.addEventListener("keyup", (event) => {
  event.preventDefault();
  // cardsContainer.innerHTML = '';
  const input = document.querySelector('.search-input');
  // console.log(input.value);
  const query = input.value;

index
  .search(query)
  .then(({ hits }) => {
    // console.log(hits);
    displaySearch(hits);
  })
  .catch(err => {
    console.log(err);
  });

});



}

export { initAlgoliaSearch };
