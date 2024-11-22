Organization og = [SELECT Id, IsSandbox FROM Organization];
if (og.IsSandbox) {
    System.debug('Sandbox');
} else {
    System.debug('Production');
}
