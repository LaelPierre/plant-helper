import { Controller } from "stimulus"
// import Slider from "bootstrap-slider"

export default class extends Controller {
  static targets = [ "tempSlider", "tempLabel", "sunSlider", "sunLabel" ]

  connect() {
    this.tempSliderMethod()
    // const slider = new Slider(this.tempSliderTarget.id, {
      // const slider = new Slider("ex8", {
        //   // tooltip: 'always'
        // });
        // console.log(slider)
        // console.log(this.tempSliderTarget.value)
  }

  tempSliderMethod() {
    console.log(this.tempLabelTarget)
    this.tempLabelTarget.innerHTML = `Temperature ${this.tempSliderTarget.value}`
  }

  connect() {
    this.sunSliderMethod()
    // const slider = new Slider(this.tempSliderTarget.id, {
      // const slider = new Slider("ex8", {
        //   // tooltip: 'always'
        // });
        // console.log(slider)
        // console.log(this.tempSliderTarget.value)
  }

  sunSliderMethod() {
    console.log(this.sunLabelTarget)
    this.sunLabelTarget.innerHTML = `SunLight ${this.sunSliderTarget.value}`
  }
}
