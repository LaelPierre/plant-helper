import { Controller } from "stimulus"
import { Tooltip } from "bootstrap"

export default class extends Controller {


  connect() {
    const tooltipTriggerList = [].slice.call(this.element.querySelectorAll('[data-bs-toggle="tooltip"]'))
    console.log(tooltipTriggerList);
    tooltipTriggerList.map(function (tooltipTriggerEl) {
      return new Tooltip(tooltipTriggerEl)
    })
  }
}
