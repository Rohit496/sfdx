import { LightningElement, track } from 'lwc';

export default class VoiceToText extends LightningElement {
    @track transcript = '';
    @track isRecording = false;
    @track errorMessage = '';
    recognition;
    finalTranscript = '';
    connectedCallback() {
        const SpeechRecognition =
            window.SpeechRecognition || window.webkitSpeechRecognition;
        if (SpeechRecognition) {
            this.recognition = new SpeechRecognition();
            this.recognition.continuous = true; // Keep listening until stopped
            this.recognition.interimResults = true;
            this.recognition.onresult = (event) => {
                let interimTranscript = '';
                for (let i = event.resultIndex; i < event.results.length; ++i) {
                    if (event.results[i].isFinal) {
                        this.finalTranscript += event.results[i][0].transcript;
                    } else {
                        interimTranscript += event.results[i][0].transcript;
                    }
                }
                this.transcript = this.finalTranscript + interimTranscript;
            };
            this.recognition.onerror = (event) => {
                console.error('Speech recognition error:', event.error);
                this.errorMessage = `Error: ${event.error}`;
                this.isRecording = false;
            };
        } else {
            console.error('Speech recognition not supported in this browser.');
            this.errorMessage =
                'Speech recognition is not supported in your browser. Please use Chrome or Edge.';
        }
    }
    startRecording() {
        if (this.recognition && !this.isRecording) {
            this.transcript = ''; // Clear the previous transcript
            this.finalTranscript = ''; // Clear the final transcript
            this.errorMessage = ''; // Clear any errors
            this.isRecording = true;
            this.recognition.start();
        }
    }
    stopRecording() {
        if (this.recognition && this.isRecording) {
            this.isRecording = false;
            this.recognition.stop();
        }
    }
    get isStartButtonDisabled() {
        return this.isRecording;
    }
    get isStopButtonDisabled() {
        return !this.isRecording;
    }
    get hasErrorMessage() {
        return this.errorMessage !== ''; // Computed property to check if there's an error
    }

    get shouldShowDefaultMessage() {
        return this.transcript === '' && this.errorMessage === ''; // Computed property to show default message
    }
}
