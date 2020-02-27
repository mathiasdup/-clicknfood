

const cardsContainer = document.querySelector('.container-cards');
// console.log(cardsContainer);


const displaySearch = (data) => {
  const cards = document.querySelectorAll('.card-trip-algolia');
  cards.forEach((card) =>  {
    card.classList.add("hidden-search");
    data.forEach((element) => {
      console.log(card.dataset.id);
      if (element.objectID === card.dataset.id) {
        card.classList.remove("hidden-search");
      };
    });
  });
}





export { displaySearch };
