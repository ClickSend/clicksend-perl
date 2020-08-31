# WWW::ClickSendClient::DetectAddressApi

## Load the API package
```perl
use WWW::ClickSendClient::Object::DetectAddressApi;
```

All URIs are relative to *https://rest.clicksend.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**detect_address_post**](DetectAddressApi.md#detect_address_post) | **POST** /post/letters/detect-address | Detects address in uploaded file.


# **detect_address_post**
> string detect_address_post(content => $content)

Detects address in uploaded file.

Detects address in uploaded file.

### Example 
```perl
use Data::Dumper;
use WWW::ClickSendClient::DetectAddressApi;
my $api_instance = WWW::ClickSendClient::DetectAddressApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $content = WWW::ClickSendClient::Object::Content->new(); # Content | Your file to be uploaded

eval { 
    my $result = $api_instance->detect_address_post(content => $content);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DetectAddressApi->detect_address_post: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **content** | [**Content**](Content.md)| Your file to be uploaded | 

### Return type

**string**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

