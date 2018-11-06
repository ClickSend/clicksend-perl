# WWW::ClickSendClient::Object::Email

## Load the model package
```perl
use WWW::ClickSendClient::Object::Email;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**to** | [**ARRAY[EmailRecipient]**](EmailRecipient.md) | Array of To Recipient items. | 
**cc** | [**ARRAY[EmailRecipient]**](EmailRecipient.md) | Array of Cc Recipient items. | [optional] 
**bcc** | [**ARRAY[EmailRecipient]**](EmailRecipient.md) | Array of Bcc Recipient items. | [optional] 
**from** | [**ARRAY[EmailFrom]**](EmailFrom.md) | From Email object. | 
**body** | **string** | Body of the email. | 
**attachments** | [**ARRAY[Attachment]**](Attachment.md) | Array of Attachment items. | [optional] 
**schedule** | [**Number**](Number.md) | Schedule. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


