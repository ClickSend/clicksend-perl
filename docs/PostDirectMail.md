# WWW::ClickSendClient::Object::PostDirectMail

## Load the model package
```perl
use WWW::ClickSendClient::Object::PostDirectMail;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **string** | Campaign name | 
**file_urls** | **ARRAY[string]** | Campaign file URLs (maximum 2) | 
**size** | **string** | Document size - A5 or DL | 
**areas** | [**ARRAY[PostDirectMailArea]**](PostDirectMailArea.md) | PostDirectMailArea model | 
**schedule** | **int** | Leave blank for immediate delivery. Your schedule time in unix format. | [optional] [default to 0]
**source** | **string** | Your method of sending e.g. &#39;wordpress&#39;, &#39;php&#39;, &#39;c#&#39;. | [optional] [default to &#39;sdk&#39;]
**custom_string** | **string** | A custom string for your own reference | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


