import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="toggle"
export default class extends Controller {
  static targets = ["form", "button"]


  connect() {
    console.log("hello")
  }

  fire () {
    console.log("hello")
    console.log(this.formTarget)
    this.formTarget.classList.toggle("d-none");
}
}
