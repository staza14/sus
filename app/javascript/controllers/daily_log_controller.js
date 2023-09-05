import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["section"];
  static values = { currentSectionIndex: Number };

  connect() {
    console.log("sign up connected");

  }

  showSection2(e) {
    e.preventDefault();
    this.sectionTargets[0].classList.add("d-none");
    this.sectionTargets[1].classList.remove("d-none");
  }

  showSection1(e) {
    e.preventDefault();
    this.sectionTargets[0].classList.remove("d-none");
    this.sectionTargets[1].classList.add("d-none");
  }

  showSection3(e) {
    e.preventDefault();
    this.sectionTargets[1].classList.add("d-none");
    this.sectionTargets[2].classList.remove("d-none");
  }

  backToSection2(e) {
    e.preventDefault();
    this.sectionTargets[2].classList.add("d-none");
    this.sectionTargets[1].classList.remove("d-none");
  }
}
