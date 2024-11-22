trigger CaseTrigger on Case(before insert) {
    for (Case cas : Trigger.new) {
        if (cas.Subject == 'Test') {
            cas.addError('You cannot create a case with the subject "Test"');
        }
    }

}
