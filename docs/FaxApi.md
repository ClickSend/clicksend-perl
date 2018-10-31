# WWW::SwaggerClient::FaxApi

## Load the API package
```perl
use WWW::SwaggerClient::Object::FaxApi;
```

All URIs are relative to *https://rest.clicksend.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**fax_history_get**](FaxApi.md#fax_history_get) | **GET** /fax/history | Get a list of Fax History.
[**fax_price_post**](FaxApi.md#fax_price_post) | **POST** /fax/price | Calculate Total Price for Fax Messages sent
[**fax_receipts_by_message_id_get**](FaxApi.md#fax_receipts_by_message_id_get) | **GET** /fax/receipts/{message_id} | Get a single fax receipt based on message id.
[**fax_receipts_get**](FaxApi.md#fax_receipts_get) | **GET** /fax/receipts | Get List of Fax Receipts
[**fax_send_post**](FaxApi.md#fax_send_post) | **POST** /fax/send | Send a fax using supplied supported file-types.


# **fax_history_get**
> string fax_history_get(date_from => $date_from, date_to => $date_to, q => $q, order => $order, page => $page, limit => $limit)

Get a list of Fax History.

Get a list of Fax History.

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::FaxApi;
my $api_instance = WWW::SwaggerClient::FaxApi->new(

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
    warn "Exception when calling FaxApi->fax_history_get: $@\n";
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
use WWW::SwaggerClient::FaxApi;
my $api_instance = WWW::SwaggerClient::FaxApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $fax_message = WWW::SwaggerClient::Object::FaxMessageCollection->new(); # FaxMessageCollection | FaxMessageCollection model

eval { 
    my $result = $api_instance->fax_price_post(fax_message => $fax_message);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling FaxApi->fax_price_post: $@\n";
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
use WWW::SwaggerClient::FaxApi;
my $api_instance = WWW::SwaggerClient::FaxApi->new(

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
    warn "Exception when calling FaxApi->fax_receipts_by_message_id_get: $@\n";
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
> string fax_receipts_get()

Get List of Fax Receipts

Get List of Fax Receipts

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::FaxApi;
my $api_instance = WWW::SwaggerClient::FaxApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);


eval { 
    my $result = $api_instance->fax_receipts_get();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling FaxApi->fax_receipts_get: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

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
use WWW::SwaggerClient::FaxApi;
my $api_instance = WWW::SwaggerClient::FaxApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $fax_message = WWW::SwaggerClient::Object::FaxMessageCollection->new(); # FaxMessageCollection | FaxMessageCollection model

eval { 
    my $result = $api_instance->fax_send_post(fax_message => $fax_message);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling FaxApi->fax_send_post: $@\n";
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

