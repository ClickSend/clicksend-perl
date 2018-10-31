# WWW::SwaggerClient::VoiceApi

## Load the API package
```perl
use WWW::SwaggerClient::Object::VoiceApi;
```

All URIs are relative to *https://rest.clicksend.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**voice_cancel_all_put**](VoiceApi.md#voice_cancel_all_put) | **PUT** /voice/cancel-all | Update all voice messages as cancelled
[**voice_cancel_by_message_id_put**](VoiceApi.md#voice_cancel_by_message_id_put) | **PUT** /voice/{message_id}/cancel | Update voice message status as cancelled
[**voice_history_export_get**](VoiceApi.md#voice_history_export_get) | **GET** /voice/history/export | Export voice history
[**voice_history_get**](VoiceApi.md#voice_history_get) | **GET** /voice/history | Get all voice history
[**voice_lang_get**](VoiceApi.md#voice_lang_get) | **GET** /voice/lang | Get all voice languages
[**voice_price_post**](VoiceApi.md#voice_price_post) | **POST** /voice/price | Calculate voice price
[**voice_receipts_get**](VoiceApi.md#voice_receipts_get) | **GET** /voice/receipts | Get all voice receipts
[**voice_send_post**](VoiceApi.md#voice_send_post) | **POST** /voice/send | Send voice message(s)


# **voice_cancel_all_put**
> string voice_cancel_all_put()

Update all voice messages as cancelled

Update all voice messages as cancelled

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::VoiceApi;
my $api_instance = WWW::SwaggerClient::VoiceApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);


eval { 
    my $result = $api_instance->voice_cancel_all_put();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling VoiceApi->voice_cancel_all_put: $@\n";
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

# **voice_cancel_by_message_id_put**
> string voice_cancel_by_message_id_put(message_id => $message_id)

Update voice message status as cancelled

Update voice message status as cancelled

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::VoiceApi;
my $api_instance = WWW::SwaggerClient::VoiceApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $message_id = 'message_id_example'; # string | Your voice message id

eval { 
    my $result = $api_instance->voice_cancel_by_message_id_put(message_id => $message_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling VoiceApi->voice_cancel_by_message_id_put: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **message_id** | **string**| Your voice message id | 

### Return type

**string**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **voice_history_export_get**
> File voice_history_export_get(filename => $filename)

Export voice history

Export voice history

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::VoiceApi;
my $api_instance = WWW::SwaggerClient::VoiceApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $filename = 'filename_example'; # string | Filename to export to

eval { 
    my $result = $api_instance->voice_history_export_get(filename => $filename);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling VoiceApi->voice_history_export_get: $@\n";
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
 - **Accept**: application/json, application/csv

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **voice_history_get**
> string voice_history_get(date_from => $date_from, date_to => $date_to, page => $page, limit => $limit)

Get all voice history

Get all voice history

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::VoiceApi;
my $api_instance = WWW::SwaggerClient::VoiceApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $date_from = 56; # int | Timestamp (from) used to show records by date.
my $date_to = 56; # int | Timestamp (to) used to show records by date
my $page = 56; # int | Page number
my $limit = 56; # int | Number of records per page

eval { 
    my $result = $api_instance->voice_history_get(date_from => $date_from, date_to => $date_to, page => $page, limit => $limit);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling VoiceApi->voice_history_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **date_from** | **int**| Timestamp (from) used to show records by date. | [optional] 
 **date_to** | **int**| Timestamp (to) used to show records by date | [optional] 
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

# **voice_lang_get**
> string voice_lang_get()

Get all voice languages

Get all voice languages

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::VoiceApi;
my $api_instance = WWW::SwaggerClient::VoiceApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);


eval { 
    my $result = $api_instance->voice_lang_get();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling VoiceApi->voice_lang_get: $@\n";
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

# **voice_price_post**
> string voice_price_post(voice_messages => $voice_messages)

Calculate voice price

Calculate voice price

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::VoiceApi;
my $api_instance = WWW::SwaggerClient::VoiceApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $voice_messages = WWW::SwaggerClient::Object::VoiceMessageCollection->new(); # VoiceMessageCollection | VoiceMessageCollection model

eval { 
    my $result = $api_instance->voice_price_post(voice_messages => $voice_messages);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling VoiceApi->voice_price_post: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **voice_messages** | [**VoiceMessageCollection**](VoiceMessageCollection.md)| VoiceMessageCollection model | 

### Return type

**string**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **voice_receipts_get**
> string voice_receipts_get(page => $page, limit => $limit)

Get all voice receipts

Get all voice receipts

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::VoiceApi;
my $api_instance = WWW::SwaggerClient::VoiceApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $page = 56; # int | Page number
my $limit = 56; # int | Number of records per page

eval { 
    my $result = $api_instance->voice_receipts_get(page => $page, limit => $limit);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling VoiceApi->voice_receipts_get: $@\n";
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

# **voice_send_post**
> string voice_send_post(voice_messages => $voice_messages)

Send voice message(s)

Send a voice call

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::VoiceApi;
my $api_instance = WWW::SwaggerClient::VoiceApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $voice_messages = WWW::SwaggerClient::Object::VoiceMessageCollection->new(); # VoiceMessageCollection | VoiceMessageCollection model

eval { 
    my $result = $api_instance->voice_send_post(voice_messages => $voice_messages);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling VoiceApi->voice_send_post: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **voice_messages** | [**VoiceMessageCollection**](VoiceMessageCollection.md)| VoiceMessageCollection model | 

### Return type

**string**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

