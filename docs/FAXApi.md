# WWW::ClickSendClient::FAXApi

## Load the API package
```perl
use WWW::ClickSendClient::Object::FAXApi;
```

All URIs are relative to *https://rest.clicksend.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**fax_history_get**](FAXApi.md#fax_history_get) | **GET** /fax/history | Get a list of Fax History.
[**fax_price_post**](FAXApi.md#fax_price_post) | **POST** /fax/price | Calculate Total Price for Fax Messages sent
[**fax_receipts_by_message_id_get**](FAXApi.md#fax_receipts_by_message_id_get) | **GET** /fax/receipts/{message_id} | Get a single fax receipt based on message id.
[**fax_receipts_get**](FAXApi.md#fax_receipts_get) | **GET** /fax/receipts | Get all delivery receipts
[**fax_receipts_post**](FAXApi.md#fax_receipts_post) | **POST** /fax/receipts | Add a delivery receipt
[**fax_receipts_read_put**](FAXApi.md#fax_receipts_read_put) | **PUT** /fax/receipts-read | Mark delivery receipts as read
[**fax_send_post**](FAXApi.md#fax_send_post) | **POST** /fax/send | Send a fax using supplied supported file-types.


# **fax_history_get**
> string fax_history_get(date_from => $date_from, date_to => $date_to, q => $q, order => $order, page => $page, limit => $limit)

Get a list of Fax History.

Get a list of Fax History.

### Example 
```perl
use Data::Dumper;
use WWW::ClickSendClient::FAXApi;
my $api_instance = WWW::ClickSendClient::FAXApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $date_from = 56; # int | Customize result by setting from date (timestsamp) Example: 1457572619.
my $date_to = 56; # int | Customize result by setting to date (timestamp) Example: 1457573000.
my $q = 'q_example'; # string | Custom query Example: status:Sent,status_code:201.
my $order = 'order_example'; # string | Order result by Example: date_added:desc,list_id:desc.
my $page = 56; # int | Page number
my $limit = 56; # int | Number of records per page

eval { 
    my $result = $api_instance->fax_history_get(date_from => $date_from, date_to => $date_to, q => $q, order => $order, page => $page, limit => $limit);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling FAXApi->fax_history_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **date_from** | **int**| Customize result by setting from date (timestsamp) Example: 1457572619. | [optional] 
 **date_to** | **int**| Customize result by setting to date (timestamp) Example: 1457573000. | [optional] 
 **q** | **string**| Custom query Example: status:Sent,status_code:201. | [optional] 
 **order** | **string**| Order result by Example: date_added:desc,list_id:desc. | [optional] 
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

# **fax_price_post**
> string fax_price_post(fax_message => $fax_message)

Calculate Total Price for Fax Messages sent

Calculate Total Price for Fax Messages sent

### Example 
```perl
use Data::Dumper;
use WWW::ClickSendClient::FAXApi;
my $api_instance = WWW::ClickSendClient::FAXApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $fax_message = WWW::ClickSendClient::Object::FaxMessageCollection->new(); # FaxMessageCollection | FaxMessageCollection model

eval { 
    my $result = $api_instance->fax_price_post(fax_message => $fax_message);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling FAXApi->fax_price_post: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fax_message** | [**FaxMessageCollection**](FaxMessageCollection.md)| FaxMessageCollection model | 

### Return type

**string**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **fax_receipts_by_message_id_get**
> string fax_receipts_by_message_id_get(message_id => $message_id)

Get a single fax receipt based on message id.

Get a single fax receipt based on message id.

### Example 
```perl
use Data::Dumper;
use WWW::ClickSendClient::FAXApi;
my $api_instance = WWW::ClickSendClient::FAXApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $message_id = 'message_id_example'; # string | ID of the message receipt to retrieve

eval { 
    my $result = $api_instance->fax_receipts_by_message_id_get(message_id => $message_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling FAXApi->fax_receipts_by_message_id_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **message_id** | **string**| ID of the message receipt to retrieve | 

### Return type

**string**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

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

# **fax_send_post**
> string fax_send_post(fax_message => $fax_message)

Send a fax using supplied supported file-types.

Send a fax using supplied supported file-types.

### Example 
```perl
use Data::Dumper;
use WWW::ClickSendClient::FAXApi;
my $api_instance = WWW::ClickSendClient::FAXApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $fax_message = WWW::ClickSendClient::Object::FaxMessageCollection->new(); # FaxMessageCollection | FaxMessageCollection model

eval { 
    my $result = $api_instance->fax_send_post(fax_message => $fax_message);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling FAXApi->fax_send_post: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fax_message** | [**FaxMessageCollection**](FaxMessageCollection.md)| FaxMessageCollection model | 

### Return type

**string**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

