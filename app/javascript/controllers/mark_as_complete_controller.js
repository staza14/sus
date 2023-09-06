import { Controller } from "@hotwired/stimulus";
import Rails from "@rails/ujs";

// Connects to data-controller="mark-as-complete"
export default class extends Controller {
  static targets = ["submit", "id"]

  connect() {
  }

  update(event) {
    // event.preventDefault()

    // const url = this.element.action
    // fetch(url, {
    //   method: this.element.method,
    //   headers: { "Accept": "text/plain" },
    //   body: new FormData(this.element)
    // })
    //   .then(response => response.text())
    //   .then((data) => {
    //     console.log(this.submitTarget)
    //     this.submitTarget.classList.toggle("green");
    //   })

      const parentElement = event.target.parentElement;

      if (parentElement.dataset.dayStatus == "true") {
        parentElement.dataset.dayStatus = "false"
      } else {
        parentElement.dataset.dayStatus = "true"
      }
      event.target.classList.toggle("green");


  }

  async fetchSave(url, status) {
      const response = await fetch(url, {
        method: "PATCH",
        headers: { "Accept": "application/json",
                  "X-CSRF-Token": Rails.csrfToken(),
        },
        body: JSON.stringify({ status: status })
      })
      const data = await response.json()
      await console.log(data)
      return true;
  }

  async saveDay(dayDiv) {
    const dayId = dayDiv.dataset.dayId
    const challengeId = dayDiv.dataset.challengeId
    const status = dayDiv.dataset.dayStatus

    const url = `${this.element.dataset.host}active_challenges/${challengeId}/active_challenge_days/${dayId}?status=${status}`
    console.log(url)
    console.log(status)
    await this.fetchSave(url, status)
    console.log("finished fetchSave")
  }

  async save() {
    console.log("Connected")

    console.log(this.idTargets)

    await Promise.all(
      this.idTargets.map( async dayDiv => {
        const promise = await this.saveDay(dayDiv)
        return promise
      })
    )

    // await this.idTargets.forEach(dayDiv => {
    //   // this.saveDay(dayDiv)
    // })
    console.log("it finished")
    location.reload();
    //window.location.href = "http://localhost:3000/dashboard"
  }

}
