import { LightningElement, track } from 'lwc';
interface myInterface {
    hello: string;
}
export default class DemoTypeScript extends LightningElement {
    message: myInterface = { hello: 'world' };
}
