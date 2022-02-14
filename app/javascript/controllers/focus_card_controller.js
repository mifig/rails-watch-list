import { Controller } from "stimulus"

export default class extends Controller {
  // static targets = ["card"]

  connect() {
    console.log("Hello from 'focus-card' controller!")
  }

  focusCard(event) {
    event.target.classList.add("focus-card")
  }

  unfocusCard(event) {
    event.target.classList.remove("focus-card")
  }
}