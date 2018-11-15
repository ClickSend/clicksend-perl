# WWW::ClickSendClient::PostPostcardApi

## Load the API package
```perl
use WWW::ClickSendClient::Object::PostPostcardApi;
```

All URIs are relative to *https://rest.clicksend.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**post_postcards_history_export_get**](PostPostcardApi.md#post_postcards_history_export_get) | **GET** /post/postcards/history/export | Export postcard history to a CSV file
[**post_postcards_history_get**](PostPostcardApi.md#post_postcards_history_get) | **GET** /post/postcards/history | Retrieve the history of postcards sent or scheduled
[**post_postcards_price_post**](PostPostcardApi.md#post_postcards_price_post) | **POST** /post/postcards/price | Calculate price for sending one or more postcards
[**post_postcards_send_post**](PostPostcardApi.md#post_postcards_send_post) | **POST** /post/postcards/send | Send one or more postcards


# **post_postcards_history_export_get**
> File post_postcards_history_export_get(filename => $filename)

Export postcard history to a CSV file

Export postcard history to a CSV file

### Example 
```perl
use Data::Dumper;
use WWW::ClickSendClient::PostPostcardApi;
my $api_instance = WWW::ClickSendClient::PostPostcardApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $filename = 'filename_example'; # string | Filename to export to

eval { 
    my $result = $api_instance->post_postcards_history_export_get(filename => $filename);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling PostPostcardApi->post_postcards_history_export_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filename** | **string**| Filename to export to | 

### Return type

[**File**](File.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_postcards_history_get**
> string post_postcards_history_get(page => $page, limit => $limit)

Retrieve the history of postcards sent or scheduled

Retrieve the history of postcards sent or scheduled

### Example 
```perl
use Data::Dumper;
use WWW::ClickSendClient::PostPostcardApi;
my $api_instance = WWW::ClickSendClient::PostPostcardApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $page = 56; # int | Page number
my $limit = 56; # int | Number of records per page

eval { 
    my $result = $api_instance->post_postcards_history_get(page => $page, limit => $limit);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling PostPostcardApi->post_postcards_history_get: $@\n";
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

# **post_postcards_price_post**
> string post_postcards_price_post(post_postcards => $post_postcards)

Calculate price for sending one or more postcards

Calculate price for sending one or more postcards

### Example 
```perl
use Data::Dumper;
use WWW::ClickSendClient::PostPostcardApi;
my $api_instance = WWW::ClickSendClient::PostPostcardApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $post_postcards = WWW::ClickSendClient::Object::PostPostcard->new(); # PostPostcard | PostPostcard model

eval { 
    my $result = $api_instance->post_postcards_price_post(post_postcards => $post_postcards);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling PostPostcardApi->post_postcards_price_post: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **post_postcards** | [**PostPostcard**](PostPostcard.md)| PostPostcard model | 

### Return type

**string**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_postcards_send_post**
> string post_postcards_send_post(post_postcards => $post_postcards)

Send one or more postcards

Send one or more postcards

### Example 
```perl
use Data::Dumper;
use WWW::ClickSendClient::PostPostcardApi;
my $api_instance = WWW::ClickSendClient::PostPostcardApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $post_postcards = WWW::ClickSendClient::Object::PostPostcard->new(); # PostPostcard | PostPostcard model

eval { 
    my $result = $api_instance->post_postcards_send_post(post_postcards => $post_postcards);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling PostPostcardApi->post_postcards_send_post: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **post_postcards** | [**PostPostcard**](PostPostcard.md)| PostPostcard model | 

### Return type

**string**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

