import { Controller } from "@hotwired/stimulus";
import { createPopper } from "@popperjs/core";

export default class extends Controller {
  toogle(event) {
    event.preventDefault();
    const element = event.currentTarget;
    const dropdown = element.nextSibling;
    const dropdownPlacement =
      dropdown.getAttribute("data-popper-placement") || "bottom-start";

    createPopper(element, dropdown, {
      placement: dropdownPlacement,
    });

    dropdown.classList.toggle("hidden");
    dropdown.classList.toggle("block");
  }
}
