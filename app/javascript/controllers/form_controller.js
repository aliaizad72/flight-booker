import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="form"
export default class extends Controller {
  static targets = [ "template" ]
  connect() {
  }

  add() {
    let clone = this.templateTarget.content.cloneNode(true)
    document.body.appendChild(clone)
  }
}
