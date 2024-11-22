import { LightningElement } from 'lwc';

export default class Demo extends LightningElement {
    renderedCallback() {
        // old way
        console.log(this.template.host);
        console.log(this.template.host.tagName);

        // new way
        console.log('New:', this.hostElement);
        console.log('New::', this.hostElement.tagName);
    }
}
