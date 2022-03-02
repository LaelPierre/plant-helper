import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ["content", "searchBar", "form"]

  connect() {
    console.log(this.contentTarget)
  }

  search() {
    console.log(this.formTarget);

    const url = `${this.formTarget.action}?query=${this.searchBarTarget.value}`
    fetch(url, { headers: { "Accept": "text/plain" } })
    .then(response => response.text())
    .then((data) => {
      this.contentTarget.innerHTML = data
      // console.log(data);
    })
  }
}
