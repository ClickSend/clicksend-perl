# WWW::SwaggerClient::Object::PostLetter

## Load the model package
```perl
use WWW::SwaggerClient::Object::PostLetter;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**file_url** | **string** | URL of file to send | 
**recipients** | [**ARRAY[PostRecipient]**](PostRecipient.md) | Array of PostRecipient models | 
**template_used** | **int** | Whether using our template | [optional] [default to 0]
**duplex** | **int** | Whether letter is duplex | [optional] [default to 0]
**colour** | **int** | Whether letter is in colour | [optional] [default to 0]
**source** | **string** | Source being sent from | [optional] [default to &#39;sdk&#39;]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


