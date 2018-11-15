# WWW::ClickSendClient::TransactionalEmailApi

## Load the API package
```perl
use WWW::ClickSendClient::Object::TransactionalEmailApi;
```

All URIs are relative to *https://rest.clicksend.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**email_history_export_get**](TransactionalEmailApi.md#email_history_export_get) | **GET** /email/history/export | Export all Transactional Email history
[**email_history_get**](TransactionalEmailApi.md#email_history_get) | **GET** /email/history | Get all transactional email history
[**email_price_post**](TransactionalEmailApi.md#email_price_post) | **POST** /email/price | Get transactional email price
[**email_send_post**](TransactionalEmailApi.md#email_send_post) | **POST** /email/send | Send transactional email


# **email_history_export_get**
> File email_history_export_get(filename => $filename, date_from => $date_from, date_to => $date_to)

Export all Transactional Email history

Export all Transactional Email history

### Example 
```perl
use Data::Dumper;
use WWW::ClickSendClient::TransactionalEmailApi;
my $api_instance = WWW::ClickSendClient::TransactionalEmailApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $filename = 'filename_example'; # string | Filename to download history as
my $date_from = 56; # int | Start date
my $date_to = 56; # int | End date

eval { 
    my $result = $api_instance->email_history_export_get(filename => $filename, date_from => $date_from, date_to => $date_to);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TransactionalEmailApi->email_history_export_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filename** | **string**| Filename to download history as | 
 **date_from** | **int**| Start date | [optional] 
 **date_to** | **int**| End date | [optional] 

### Return type

[**File**](File.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **email_history_get**
> string email_history_get(date_from => $date_from, date_to => $date_to, page => $page, limit => $limit)

Get all transactional email history

Get all transactional email history

### Example 
```perl
use Data::Dumper;
use WWW::ClickSendClient::TransactionalEmailApi;
my $api_instance = WWW::ClickSendClient::TransactionalEmailApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $date_from = 56; # int | Start date
my $date_to = 56; # int | End date
my $page = 56; # int | Page number
my $limit = 56; # int | Number of records per page

eval { 
    my $result = $api_instance->email_history_get(date_from => $date_from, date_to => $date_to, page => $page, limit => $limit);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TransactionalEmailApi->email_history_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **date_from** | **int**| Start date | [optional] 
 **date_to** | **int**| End date | [optional] 
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

# **email_price_post**
> string email_price_post(email => $email)

Get transactional email price

Get transactional email price

### Example 
```perl
use Data::Dumper;
use WWW::ClickSendClient::TransactionalEmailApi;
my $api_instance = WWW::ClickSendClient::TransactionalEmailApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $email = WWW::ClickSendClient::Object::Email->new(); # Email | Email model

eval { 
    my $result = $api_instance->email_price_post(email => $email);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TransactionalEmailApi->email_price_post: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email** | [**Email**](Email.md)| Email model | 

### Return type

**string**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **email_send_post**
> string email_send_post(email => $email)

Send transactional email

Send transactional email

### Example 
```perl
use Data::Dumper;
use WWW::ClickSendClient::TransactionalEmailApi;
my $api_instance = WWW::ClickSendClient::TransactionalEmailApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $email = WWW::ClickSendClient::Object::Email->new(); # Email | Email model

eval { 
    my $result = $api_instance->email_send_post(email => $email);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TransactionalEmailApi->email_send_post: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email** | [**Email**](Email.md)| Email model | 

### Return type

**string**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

