# WWW::ClickSendClient::FAXApi

## Load the API package
```perl
use WWW::ClickSendClient::Object::FAXApi;
```

All URIs are relative to *https://rest.clicksend.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**fax_receipts_get**](FAXApi.md#fax_receipts_get) | **GET** /fax/receipts | Get all delivery receipts
[**fax_receipts_post**](FAXApi.md#fax_receipts_post) | **POST** /fax/receipts | Add a delivery receipt
[**fax_receipts_read_put**](FAXApi.md#fax_receipts_read_put) | **PUT** /fax/receipts-read | Mark delivery receipts as read


# **fax_receipts_get**
> string fax_receipts_get(page => $page, limit => $limit)

Get all delivery receipts

Get all delivery receipts

### Example 
```perl
use Data::Dumper;
use WWW::ClickSendClient::FAXApi;
my $api_instance = WWW::ClickSendClient::FAXApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $page = 56; # int | Page number
my $limit = 56; # int | Number of records per page

eval { 
    my $result = $api_instance->fax_receipts_get(page => $page, limit => $limit);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling FAXApi->fax_receipts_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Page number | [optional] [default to 1]
 **limit** | **int**| Number of records per page | [optional] [default to 10]

### Return type

**string**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **fax_receipts_post**
> string fax_receipts_post(url => $url)

Add a delivery receipt

Add a delivery receipt

### Example 
```perl
use Data::Dumper;
use WWW::ClickSendClient::FAXApi;
my $api_instance = WWW::ClickSendClient::FAXApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $url = WWW::ClickSendClient::Object::Url->new(); # Url | Url model

eval { 
    my $result = $api_instance->fax_receipts_post(url => $url);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling FAXApi->fax_receipts_post: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **url** | [**Url**](Url.md)| Url model | 

### Return type

**string**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **fax_receipts_read_put**
> string fax_receipts_read_put(date_before => $date_before)

Mark delivery receipts as read

Mark delivery receipts as read

### Example 
```perl
use Data::Dumper;
use WWW::ClickSendClient::FAXApi;
my $api_instance = WWW::ClickSendClient::FAXApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $date_before = WWW::ClickSendClient::Object::DateBefore->new(); # DateBefore | DateBefore model

eval { 
    my $result = $api_instance->fax_receipts_read_put(date_before => $date_before);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling FAXApi->fax_receipts_read_put: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **date_before** | [**DateBefore**](DateBefore.md)| DateBefore model | [optional] 

### Return type

**string**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

