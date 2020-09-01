# WWW::ClickSendClient::UploadApi

## Load the API package
```perl
use WWW::ClickSendClient::Object::UploadApi;
```

All URIs are relative to *https://rest.clicksend.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**uploads_post**](UploadApi.md#uploads_post) | **POST** /uploads | Upload File


# **uploads_post**
> string uploads_post(upload_file => $upload_file, convert => $convert)

Upload File

Upload File

### Example 
```perl
use Data::Dumper;
use WWW::ClickSendClient::UploadApi;
my $api_instance = WWW::ClickSendClient::UploadApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $upload_file = WWW::ClickSendClient::Object::UploadFile->new(); # UploadFile | Your file to be uploaded
my $convert = 'convert_example'; # string | 

eval { 
    my $result = $api_instance->uploads_post(upload_file => $upload_file, convert => $convert);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UploadApi->uploads_post: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **upload_file** | [**UploadFile**](UploadFile.md)| Your file to be uploaded | 
 **convert** | **string**|  | 

### Return type

**string**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

