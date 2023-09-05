import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["section"];
  static values = { currentSectionIndex: Number };

  connect() {
    console.log("Daily log connected");
    // this.currentSectionIndex = 0;
    // this.showCurrentSection();
  }

  // showSection(event) {
  //   event.preventDefault();
  //   const sectionName = event.currentTarget.getAttribute("data-section");
  //   this.currentSectionIndex = this.sectionTargets.findIndex(
  //     (s) => s.getAttribute("data-section") === sectionName
  //   );
  //   this.showCurrentSection();
  // }

  // showPreviousSection() {
  //   this.currentSectionIndex -= 1;
  //   if (this.currentSectionIndex < 0) {
  //     this.currentSectionIndex = 0;
  //   }
  //   this.showCurrentSection();
  // }

  // showNextSection() {
  //   this.currentSectionIndex += 1;
  //   if (this.currentSectionIndex >= this.sectionTargets.length) {
  //     this.currentSectionIndex = this.sectionTargets.length - 1;
  //   }
  //   this.showCurrentSection();
  // }

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

  // showNextSection(e) {
  //   console.log(e.currenttarget);
  //   console.log(this.sectionTargets);
  // }

  // showCurrentSection() {
  //   this.hideAllSections();
  //   this.sectionTargets[this.currentSectionIndex].classList.remove("d-none");
  // }

  // hideAllSections() {
  //   this.sectionTargets.forEach((section) => {
  //     section.classList.add("d-none");
  //   });
  // }
}
