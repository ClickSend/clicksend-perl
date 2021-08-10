# WWW::ClickSendClient::MMSApi

## Load the API package
```perl
use WWW::ClickSendClient::Object::MMSApi;
```

All URIs are relative to *https://rest.clicksend.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**mms_history_export_get**](MMSApi.md#mms_history_export_get) | **GET** /mms/history/export | Export all mms history
[**mms_history_get**](MMSApi.md#mms_history_get) | **GET** /mms/history | Get all mms history
[**mms_price_post**](MMSApi.md#mms_price_post) | **POST** /mms/price | Get Price for MMS sent
[**mms_receipts_get**](MMSApi.md#mms_receipts_get) | **GET** /mms/receipts | Get all delivery receipts
[**mms_receipts_read_put**](MMSApi.md#mms_receipts_read_put) | **PUT** /mms/receipts-read | Mark delivery receipts as read
[**mms_send_post**](MMSApi.md#mms_send_post) | **POST** /mms/send | Send MMS


# **mms_history_export_get**
> string mms_history_export_get(filename => $filename)

Export all mms history

Export all mms history

### Example 
```perl
use Data::Dumper;
use WWW::ClickSendClient::MMSApi;
my $api_instance = WWW::ClickSendClient::MMSApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $filename = 'filename_example'; # string | Filename to download history as

eval { 
    my $result = $api_instance->mms_history_export_get(filename => $filename);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MMSApi->mms_history_export_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filename** | **string**| Filename to download history as | 

### Return type

**string**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mms_history_get**
> string mms_history_get(q => $q, date_from => $date_from, date_to => $date_to, page => $page, limit => $limit)

Get all mms history

Get all mms history

### Example 
```perl
use Data::Dumper;
use WWW::ClickSendClient::MMSApi;
my $api_instance = WWW::ClickSendClient::MMSApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $q = 'q_example'; # string | Custom query Example: from:{number},status_code:201.
my $date_from = 56; # int | Start date
my $date_to = 56; # int | End date
my $page = 56; # int | Page number
my $limit = 56; # int | Number of records per page

eval { 
    my $result = $api_instance->mms_history_get(q => $q, date_from => $date_from, date_to => $date_to, page => $page, limit => $limit);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MMSApi->mms_history_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **string**| Custom query Example: from:{number},status_code:201. | [optional] 
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

# **mms_price_post**
> string mms_price_post(mms_messages => $mms_messages)

Get Price for MMS sent

Get Price for MMS sent

### Example 
```perl
use Data::Dumper;
use WWW::ClickSendClient::MMSApi;
my $api_instance = WWW::ClickSendClient::MMSApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $mms_messages = WWW::ClickSendClient::Object::MmsMessageCollection->new(); # MmsMessageCollection | MmsMessageCollection model

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

# **mms_receipts_get**
> string mms_receipts_get(page => $page, limit => $limit)

Get all delivery receipts

Get all delivery receipts

### Example 
```perl
use Data::Dumper;
use WWW::ClickSendClient::MMSApi;
my $api_instance = WWW::ClickSendClient::MMSApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $page = 56; # int | Page number
my $limit = 56; # int | Number of records per page

eval { 
    my $result = $api_instance->mms_receipts_get(page => $page, limit => $limit);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MMSApi->mms_receipts_get: $@\n";
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

# **mms_receipts_read_put**
> string mms_receipts_read_put(date_before => $date_before)

Mark delivery receipts as read

Mark delivery receipts as read

### Example 
```perl
use Data::Dumper;
use WWW::ClickSendClient::MMSApi;
my $api_instance = WWW::ClickSendClient::MMSApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $date_before = WWW::ClickSendClient::Object::DateBefore->new(); # DateBefore | DateBefore model

eval { 
    my $result = $api_instance->mms_receipts_read_put(date_before => $date_before);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MMSApi->mms_receipts_read_put: $@\n";
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

# **mms_send_post**
> string mms_send_post(mms_messages => $mms_messages)

Send MMS

Send MMS

### Example 
```perl
use Data::Dumper;
use WWW::ClickSendClient::MMSApi;
my $api_instance = WWW::ClickSendClient::MMSApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $mms_messages = WWW::ClickSendClient::Object::MmsMessageCollection->new(); # MmsMessageCollection | MmsMessageCollection model

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

