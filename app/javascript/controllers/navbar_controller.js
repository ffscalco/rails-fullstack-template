import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  toogle(event) {
    document.getElementById(event.params.target).classList.toggle("hidden");
    document.getElementById(event.params.target).classList.toggle("bg-white");
    document.getElementById(event.params.target).classList.toggle("m-2");
    document.getElementById(event.params.target).classList.toggle("py-3");
    document.getElementById(event.params.target).classList.toggle("px-6");
  }
}
