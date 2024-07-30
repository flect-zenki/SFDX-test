public class ModelController {
    private ApexPages.StandardController standardController;

    public ModelController(ApexPages.StandardController standardController) {
        this.standardController = standardController;
    }

    public PageReference nextConfirm() {
        return Page.ModelForm_Confirm;
    }

    public PageReference goBackInput_1() {
        return Page.ModelForm_Input_1;
    }

    public PageReference saveAndNextCompletion() {
        VisualforceSave__c obj = (VisualforceSave__c)standardController.getRecord();
        insert obj;
        return Page.ModelForm_Completion;
    }
}