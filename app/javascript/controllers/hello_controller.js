import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  connect() {
    const text = "Hello World! it's working yaay";
    console.log(text);
    this.element.textContent = text;
  }
}
