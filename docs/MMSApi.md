# WWW::SwaggerClient::MMSApi

## Load the API package
```perl
use WWW::SwaggerClient::Object::MMSApi;
```

All URIs are relative to *https://rest.clicksend.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**mms_price_post**](MMSApi.md#mms_price_post) | **POST** /mms/price | Get Price for MMS sent
[**mms_send_post**](MMSApi.md#mms_send_post) | **POST** /mms/send | Send MMS


# **mms_price_post**
> string mms_price_post(mms_messages => $mms_messages)

Get Price for MMS sent

Get Price for MMS sent

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::MMSApi;
my $api_instance = WWW::SwaggerClient::MMSApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $mms_messages = WWW::SwaggerClient::Object::MmsMessageCollection->new(); # MmsMessageCollection | MmsMessageCollection model

eval { 
    my $result = $api_instance->mms_price_post(mms_messages => $mms_messages);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MMSApi->mms_price_post: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mms_messages** | [**MmsMessageCollection**](MmsMessageCollection.md)| MmsMessageCollection model | 

### Return type

**string**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mms_send_post**
> string mms_send_post(mms_messages => $mms_messages)

Send MMS

Send MMS

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::MMSApi;
my $api_instance = WWW::SwaggerClient::MMSApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $mms_messages = WWW::SwaggerClient::Object::MmsMessageCollection->new(); # MmsMessageCollection | MmsMessageCollection model

eval { 
    my $result = $api_instance->mms_send_post(mms_messages => $mms_messages);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MMSApi->mms_send_post: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mms_messages** | [**MmsMessageCollection**](MmsMessageCollection.md)| MmsMessageCollection model | 

### Return type

**string**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

