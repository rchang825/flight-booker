import { Controller } from "@hotwired/stimulus"
export default class extends Controller {
    static targets = ["passengersContainer", "template"];

    connect() {
        this.numPassengers = 1;
        this.index = 1;
    }

    add() {
        console.log("Adding Passenger Using Stimulus");
        const template = this.templateTarget;
        const clone = template.content.cloneNode(true);
        const passengersContainer = this.passengersContainerTarget;
        clone.querySelectorAll('label')[0].setAttribute('for', "booking_passengers_attributes_" + this.index + "_name");
        clone.querySelectorAll('input')[0].setAttribute('name', "booking[passengers_attributes][" + this.index + "][name]");
        clone.querySelectorAll('input')[0].setAttribute('id', "booking_passengers_attributes_"+ this.index + "_name");
        clone.querySelectorAll('label')[1].setAttribute('for', "booking_passengers_attributes_" + this.index + "_email");
        clone.querySelectorAll('input')[1].setAttribute('name', "booking[passengers_attributes][" + this.index + "][email]");
        clone.querySelectorAll('input')[1].setAttribute('id', "booking_passengers_attributes_"+ this.index + "_email");
        passengersContainer.appendChild(clone);
        this.index++;
        this.numPassengers++;
    }

    remove(event) {
        console.log("Removing Passenger Using Stimulus");
        if(this.numPassengers > 1) {
            const target = event.target.parentElement;
            target.remove();
            this.numPassengers--;
        }
        else
            alert("Can't remove the last passenger!");
    }
}
