const croque = () => {
  const cards = document.querySelectorAll(".card-trip");
  console.log(cards);
    cards.forEach((card) => {
      card.addEventListener("mouseover", (event) => {
      console.log('card');
    });
  });
}


export { croque };

// NO USE FOR NOW
