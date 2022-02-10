import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ["form", "moviebutton"]

  connect() {
    console.log("Hello from 'form-dropdown' controller!")
  }

  clickAddMovie(event) {
    this.formTarget.classList.remove("d-none")
    this.moviebuttonTarget.classList.add("d-none")
  }
}