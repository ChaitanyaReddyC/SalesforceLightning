<aura:application implements="force:appHostable">
	<ltng:require styles="{!$Resource.SLDS090 +
                        '/assets/styles/salesforce-lightning-design-system-ltng.css'}"/>
    <aura:attribute name="pageNumber" type="Integer" default="1"/>  
    <aura:handler name="init" value="{!this}" action="{!c.doInit}"/>
    <aura:attribute name="stage" type="String" default="XXX"/>
    <div class="slds-page-header">
        	<div >
                <p align="center" class="font-size-xx-large slds-text-heading--label">ACCOUNT CREATION</p>
            </div>
    </div>
        
    
    <c:CreateAccount visible="{! v.stage=='first'}"/>
    <c:AccountCreated visible="{! v.stage=='second'}"/>
    
    

</aura:application>