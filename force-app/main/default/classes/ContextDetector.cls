public class ContextDetector {
    public static void detectContext() {
        Request reqInfo = Request.getCurrent();
        Quiddity currentType = reqInfo.getQuiddity();

        switch on currentType {
            when REST {
                System.debug('Executing in REST context');
            }
            when AURA {
                System.debug('Executing in Aura context');
            }
            when BATCH_APEX {
                System.debug('Executing in batch Apex context');
            }
            when QUEUEABLE {
                System.debug('Executing in queueable context');
            }
            when FUTURE {
                System.debug('Executing in future context');
            }
            when ANONYMOUS {
                System.debug('Executing in ANONYMOUS context');
            }
        }
    }
}
