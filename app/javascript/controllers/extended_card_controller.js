import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ["extendCard", "card"]

  connect() {
    // console.log(this.cardTarget)
  }

  revealCard() {
    // console.log(modalBody);
    this.extendCardTarget.classList.remove("d-none")
    this.extendCardTarget.classList.add("d-flex")
    this.extendCardTarget.classList.add("plant-info-popup")
    // const modalBody = document.getElementsByClassName("modal-body")
    // modalBody.style.overflow="hidden"

  }

  hideCard() {
    console.log("connected");
    this.extendCardTarget.classList.remove("d-flex")
    this.extendCardTarget.classList.add("d-none")
    this.extendCardTarget.classList.remove("plant-info-popup")
  }
}
