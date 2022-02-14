import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  updateNavbar() {
    if (window.scrollY >= 400) {
      this.element.classList.add("filtered-background")
    } else {
      this.element.classList.remove("filtered-background")
    }
  };
}