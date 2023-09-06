import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["section"];
  static values = { currentSectionIndex: Number };

  static sectionColors = {
    "section-transportation": "#BBACEC",
    "section-meals": "#80DBC1",
    "section-home": "#FACDA4"
  };

  connect() {
    console.log("sign up connected");

    this.currentSectionColor = this.element.getAttribute("data-header-color");
  }
  showSection1(e) {
    e.preventDefault();
    this.sectionTargets[0].classList.remove("d-none");
    this.sectionTargets[1].classList.add("d-none");

    this.updateHeaderColor("section-transportation");
  }

  showSection2(e) {
    e.preventDefault();
    this.sectionTargets[0].classList.add("d-none");
    this.sectionTargets[1].classList.remove("d-none");

    this.updateHeaderColor("section-meals");
  }

  showSection3(e) {
    e.preventDefault();
    this.sectionTargets[1].classList.add("d-none");
    this.sectionTargets[2].classList.remove("d-none");

    this.updateHeaderColor("section-home");
  }

  backToSection2(e) {
    e.preventDefault();
    this.sectionTargets[2].classList.add("d-none");
    this.sectionTargets[1].classList.remove("d-none");

    this.currentSectionColor = "section-meals";
    this.updateHeaderColor(this.currentSectionColor);
  }

  updateHeaderColor(newColorClass) {
    const modalHeader = document.querySelector(".add-entry-form");
    modalHeader.style.backgroundColor = this.constructor.sectionColors[newColorClass];
    console.log(this.constructor.sectionColors[newColorClass])
    console.log('--------')
    console.log(modalHeader)
    console.log(modalHeader.style.backgroundColor)
    this.currentSectionColor = newColorClass;
  }
}
