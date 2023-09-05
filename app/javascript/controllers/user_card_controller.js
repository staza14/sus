import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="user-card"
export default class extends Controller {
  static targets = ["button", "cards", "input", "cont"]


  revealContent(e) {
    e.preventDefault()
    // this.cardsTarget.classList.remove("d-none");

    console.log(this.inputTarget.value)

    const url = `${e.target.action}?query=${this.inputTarget.value}`;
    fetch(url, { headers: { 'Accept': 'text/plain' } })
    .then(response => response.text())
    .then((data) => {
      this.cardsTarget.innerHTML = data;
      this.cardsTarget.classList.add('active');
      this.contTarget.classList.add('active');
    })
  }
}
