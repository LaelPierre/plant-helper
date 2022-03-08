import { Controller } from "stimulus"
// import Slider from "bootstrap-slider"

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
    console.log(this.tempSliderTarget.value)
    this.tempLabelTarget.innerHTML = `Temperature <span class='range-value'>${this.tempSliderTarget.value}</span>`
  }

  sunSliderMethod() {
    console.log(this.sunSliderTarget.value)
    this.sunLabelTarget.innerHTML = `SunLight <span class='range-value'>${this.sunSliderTarget.value}</span>`
  }
}
