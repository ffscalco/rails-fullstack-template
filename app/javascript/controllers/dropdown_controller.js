import { Controller } from "@hotwired/stimulus"
import { createPopper } from "@popperjs/core";

export default class extends Controller {
  toogle(event) {
    let element = event.currentTarget;

    createPopper(element, document.getElementById(event.params.target), {
      placement: "bottom-start",
    });

    document.getElementById(event.params.target).classList.toggle("hidden");
    document.getElementById(event.params.target).classList.toggle("block");
  }
}
