import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="mark-as-complete"
export default class extends Controller {
  static targets = ["submit"]
  connect() {
  }

  update(event) {
    event.preventDefault()
    const url = this.element.action
    fetch(url, {
      method: this.element.method,
      headers: { "Accept": "text/plain" },
      body: new FormData(this.element)
    })
      .then(response => response.text())
      .then((data) => {
        console.log(this.submitTarget)
        this.submitTarget.classList.toggle("green");
      })
  }
}
