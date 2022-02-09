import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ["form"]

  connect() {
    console.log("Hello from 'form-dropdown' controller!")
  }

  clickAddMovie(event) {
    event.preventDefault()
    this.formTarget.classList.remove("d-none")
  }
}