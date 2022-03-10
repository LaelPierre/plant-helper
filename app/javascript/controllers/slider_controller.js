import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [ "tempSlider", "tempLabel", "sunSlider", "sunLabel" ]

  connect() {
    this.tempSliderMethod()
    this.sunSliderMethod()
    // const slider = new Slider(this.tempSliderTarget.id, {
      // const slider = new Slider("ex8", {
        //   // tooltip: 'always'
        // });
        // console.log(slider)
        // console.log(this.tempSliderTarget.value)
  }

  tempSliderMethod() {
    this.tempLabelTarget.innerHTML = `Temperature <span class='range-value'>${this.tempSliderTarget.value}</span>`
  }

  sunSliderMethod() {
    this.sunLabelTarget.innerHTML = `Sunlight <span class='range-value'>${this.sunSliderTarget.value}</span>`
  }
}
