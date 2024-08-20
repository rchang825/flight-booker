import { Controller } from "@hotwired/stimulus"
export default class extends Controller {
    connect() {
        console.log(this.element)
    }
    add() {
        alert("Adding Passenger Using Stimulus");
    }
    remove() {
        alert("Removing Passenger Using Stimulus");
    }
}
