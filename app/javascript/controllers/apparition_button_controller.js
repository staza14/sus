import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="apparition-button"
export default class extends Controller {
  static targets = ["button"]
  connect() {
    console.log("Hello")
  }

  showButton() {
    this.buttonTarget.classList.remove("d-none")
  }

  loginbutton() {
    setTimeout(() => this.showButton(), 3000)
  }

}
