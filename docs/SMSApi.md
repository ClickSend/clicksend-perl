# WWW::ClickSendClient::SMSApi

## Load the API package
```perl
use WWW::ClickSendClient::Object::SMSApi;
```

All URIs are relative to *https://rest.clicksend.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**sms_cancel_all_put**](SMSApi.md#sms_cancel_all_put) | **PUT** /sms/cancel-all | Update all scheduled message as cancelled
[**sms_cancel_by_message_id_put**](SMSApi.md#sms_cancel_by_message_id_put) | **PUT** /sms/{message_id}/cancel | Update scheduled message as cancelled
[**sms_history_export_get**](SMSApi.md#sms_history_export_get) | **GET** /sms/history/export | Export all sms history
[**sms_history_get**](SMSApi.md#sms_history_get) | **GET** /sms/history | Get all sms history
[**sms_inbound_get**](SMSApi.md#sms_inbound_get) | **GET** /sms/inbound | Get all inbound sms
[**sms_inbound_post**](SMSApi.md#sms_inbound_post) | **POST** /sms/inbound | Create inbound sms
[**sms_inbound_read_put**](SMSApi.md#sms_inbound_read_put) | **PUT** /sms/inbound-read | Mark inbound SMS as read
[**sms_price_post**](SMSApi.md#sms_price_post) | **POST** /sms/price | Calculate sms price
[**sms_receipts_by_message_id_get**](SMSApi.md#sms_receipts_by_message_id_get) | **GET** /sms/receipts/{message_id} | Get a Specific Delivery Receipt
[**sms_receipts_get**](SMSApi.md#sms_receipts_get) | **GET** /sms/receipts | Get all delivery receipts
[**sms_receipts_post**](SMSApi.md#sms_receipts_post) | **POST** /sms/receipts | Add a delivery receipt
[**sms_receipts_read_put**](SMSApi.md#sms_receipts_read_put) | **PUT** /sms/receipts-read | Mark delivery receipts as read
[**sms_send_post**](SMSApi.md#sms_send_post) | **POST** /sms/send | Send sms message(s)
[**sms_templates_by_template_id_delete**](SMSApi.md#sms_templates_by_template_id_delete) | **DELETE** /sms/templates/{template_id} | Delete sms template
[**sms_templates_by_template_id_put**](SMSApi.md#sms_templates_by_template_id_put) | **PUT** /sms/templates/{template_id} | Update sms template
[**sms_templates_get**](SMSApi.md#sms_templates_get) | **GET** /sms/templates | Get lists of all sms templates
[**sms_templates_post**](SMSApi.md#sms_templates_post) | **POST** /sms/templates | Create sms template


# **sms_cancel_all_put**
> string sms_cancel_all_put()

Update all scheduled message as cancelled

Update all scheduled message as cancelled

### Example 
```perl
use Data::Dumper;
use WWW::ClickSendClient::SMSApi;
my $api_instance = WWW::ClickSendClient::SMSApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);


eval { 
    my $result = $api_instance->sms_cancel_all_put();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SMSApi->sms_cancel_all_put: $@\n";
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

# **sms_cancel_by_message_id_put**
> string sms_cancel_by_message_id_put(message_id => $message_id)

Update scheduled message as cancelled

Update scheduled message as cancelled

### Example 
```perl
use Data::Dumper;
use WWW::ClickSendClient::SMSApi;
my $api_instance = WWW::ClickSendClient::SMSApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $message_id = 'message_id_example'; # string | The message ID you want to cancel

eval { 
    my $result = $api_instance->sms_cancel_by_message_id_put(message_id => $message_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SMSApi->sms_cancel_by_message_id_put: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **message_id** | **string**| The message ID you want to cancel | 

### Return type

**string**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sms_history_export_get**
> string sms_history_export_get(filename => $filename)

Export all sms history

Export all sms history

### Example 
```perl
use Data::Dumper;
use WWW::ClickSendClient::SMSApi;
my $api_instance = WWW::ClickSendClient::SMSApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $filename = 'filename_example'; # string | Filename to download history as

eval { 
    my $result = $api_instance->sms_history_export_get(filename => $filename);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SMSApi->sms_history_export_get: $@\n";
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

# **sms_history_get**
> string sms_history_get(date_from => $date_from, date_to => $date_to, page => $page, limit => $limit)

Get all sms history

Get all sms history

### Example 
```perl
use Data::Dumper;
use WWW::ClickSendClient::SMSApi;
my $api_instance = WWW::ClickSendClient::SMSApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $date_from = 56; # int | Start date
my $date_to = 56; # int | End date
my $page = 56; # int | Page number
my $limit = 56; # int | Number of records per page

eval { 
    my $result = $api_instance->sms_history_get(date_from => $date_from, date_to => $date_to, page => $page, limit => $limit);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SMSApi->sms_history_get: $@\n";
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

# **sms_inbound_get**
> string sms_inbound_get(q => $q, page => $page, limit => $limit)

Get all inbound sms

Get all inbound sms

### Example 
```perl
use Data::Dumper;
use WWW::ClickSendClient::SMSApi;
my $api_instance = WWW::ClickSendClient::SMSApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $q = 'q_example'; # string | Your keyword or query.
my $page = 56; # int | Page number
my $limit = 56; # int | Number of records per page

eval { 
    my $result = $api_instance->sms_inbound_get(q => $q, page => $page, limit => $limit);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SMSApi->sms_inbound_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **string**| Your keyword or query. | [optional] 
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

# **sms_inbound_post**
> string sms_inbound_post(url => $url)

Create inbound sms

Create inbound sms

### Example 
```perl
use Data::Dumper;
use WWW::ClickSendClient::SMSApi;
my $api_instance = WWW::ClickSendClient::SMSApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $url = WWW::ClickSendClient::Object::Url->new(); # Url | Url model

eval { 
    my $result = $api_instance->sms_inbound_post(url => $url);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SMSApi->sms_inbound_post: $@\n";
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

# **sms_inbound_read_put**
> string sms_inbound_read_put(date_before => $date_before)

Mark inbound SMS as read

Mark all inbound SMS as read optionally before a certain date

### Example 
```perl
use Data::Dumper;
use WWW::ClickSendClient::SMSApi;
my $api_instance = WWW::ClickSendClient::SMSApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $date_before = WWW::ClickSendClient::Object::string->new(); # string | An optional timestamp - mark all as read before this timestamp. If not given, all messages will be marked as read.

eval { 
    my $result = $api_instance->sms_inbound_read_put(date_before => $date_before);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SMSApi->sms_inbound_read_put: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **date_before** | **string**| An optional timestamp - mark all as read before this timestamp. If not given, all messages will be marked as read. | [optional] 

### Return type

**string**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sms_price_post**
> string sms_price_post(sms_messages => $sms_messages)

Calculate sms price

Calculate sms price

### Example 
```perl
use Data::Dumper;
use WWW::ClickSendClient::SMSApi;
my $api_instance = WWW::ClickSendClient::SMSApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $sms_messages = WWW::ClickSendClient::Object::SmsMessageCollection->new(); # SmsMessageCollection | SmsMessageCollection model

eval { 
    my $result = $api_instance->sms_price_post(sms_messages => $sms_messages);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SMSApi->sms_price_post: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sms_messages** | [**SmsMessageCollection**](SmsMessageCollection.md)| SmsMessageCollection model | 

### Return type

**string**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sms_receipts_by_message_id_get**
> string sms_receipts_by_message_id_get(message_id => $message_id)

Get a Specific Delivery Receipt

Get a Specific Delivery Receipt

### Example 
```perl
use Data::Dumper;
use WWW::ClickSendClient::SMSApi;
my $api_instance = WWW::ClickSendClient::SMSApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $message_id = 'message_id_example'; # string | Message ID

eval { 
    my $result = $api_instance->sms_receipts_by_message_id_get(message_id => $message_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SMSApi->sms_receipts_by_message_id_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **message_id** | **string**| Message ID | 

### Return type

**string**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sms_receipts_get**
> string sms_receipts_get(q => $q, page => $page, limit => $limit)

Get all delivery receipts

Get all delivery receipts

### Example 
```perl
use Data::Dumper;
use WWW::ClickSendClient::SMSApi;
my $api_instance = WWW::ClickSendClient::SMSApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $q = 'q_example'; # string | Your keyword or query.
my $page = 56; # int | Page number
my $limit = 56; # int | Number of records per page

eval { 
    my $result = $api_instance->sms_receipts_get(q => $q, page => $page, limit => $limit);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SMSApi->sms_receipts_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **string**| Your keyword or query. | [optional] 
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

# **sms_receipts_post**
> string sms_receipts_post(url => $url)

Add a delivery receipt

Add a delivery receipt

### Example 
```perl
use Data::Dumper;
use WWW::ClickSendClient::SMSApi;
my $api_instance = WWW::ClickSendClient::SMSApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $url = WWW::ClickSendClient::Object::Url->new(); # Url | Url model

eval { 
    my $result = $api_instance->sms_receipts_post(url => $url);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SMSApi->sms_receipts_post: $@\n";
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

# **sms_receipts_read_put**
> string sms_receipts_read_put(date_before => $date_before)

Mark delivery receipts as read

Mark delivery receipts as read

### Example 
```perl
use Data::Dumper;
use WWW::ClickSendClient::SMSApi;
my $api_instance = WWW::ClickSendClient::SMSApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $date_before = WWW::ClickSendClient::Object::string->new(); # string | Mark all as read before this timestamp

eval { 
    my $result = $api_instance->sms_receipts_read_put(date_before => $date_before);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SMSApi->sms_receipts_read_put: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **date_before** | **string**| Mark all as read before this timestamp | [optional] 

### Return type

**string**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sms_send_post**
> string sms_send_post(sms_messages => $sms_messages)

Send sms message(s)

 # Send one or more SMS messages  You can post up to 1000 messages with each API call. You can send to a mix of contacts and contact lists, as long as the total number of recipients is up to 1000.  The response contains status and details for each recipient.  *Refer to [Application Status Codes](https://dashboard.clicksend.com/#/signup/step1/) for the possible response message status strings.* 

### Example 
```perl
use Data::Dumper;
use WWW::ClickSendClient::SMSApi;
my $api_instance = WWW::ClickSendClient::SMSApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $sms_messages = WWW::ClickSendClient::Object::SmsMessageCollection->new(); # SmsMessageCollection | SmsMessageCollection model

eval { 
    my $result = $api_instance->sms_send_post(sms_messages => $sms_messages);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SMSApi->sms_send_post: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sms_messages** | [**SmsMessageCollection**](SmsMessageCollection.md)| SmsMessageCollection model | 

### Return type

**string**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sms_templates_by_template_id_delete**
> string sms_templates_by_template_id_delete(template_id => $template_id)

Delete sms template

Delete sms template

### Example 
```perl
use Data::Dumper;
use WWW::ClickSendClient::SMSApi;
my $api_instance = WWW::ClickSendClient::SMSApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $template_id = 56; # int | Template id

eval { 
    my $result = $api_instance->sms_templates_by_template_id_delete(template_id => $template_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SMSApi->sms_templates_by_template_id_delete: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **template_id** | **int**| Template id | 

### Return type

**string**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sms_templates_by_template_id_put**
> string sms_templates_by_template_id_put(template_id => $template_id, sms_template => $sms_template)

Update sms template

Update sms template

### Example 
```perl
use Data::Dumper;
use WWW::ClickSendClient::SMSApi;
my $api_instance = WWW::ClickSendClient::SMSApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $template_id = 56; # int | Template id
my $sms_template = WWW::ClickSendClient::Object::SmsTemplate->new(); # SmsTemplate | Template item

eval { 
    my $result = $api_instance->sms_templates_by_template_id_put(template_id => $template_id, sms_template => $sms_template);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SMSApi->sms_templates_by_template_id_put: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **template_id** | **int**| Template id | 
 **sms_template** | [**SmsTemplate**](SmsTemplate.md)| Template item | 

### Return type

**string**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sms_templates_get**
> string sms_templates_get(page => $page, limit => $limit)

Get lists of all sms templates

Get lists of all sms templates

### Example 
```perl
use Data::Dumper;
use WWW::ClickSendClient::SMSApi;
my $api_instance = WWW::ClickSendClient::SMSApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $page = 56; # int | Page number
my $limit = 56; # int | Number of records per page

eval { 
    my $result = $api_instance->sms_templates_get(page => $page, limit => $limit);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SMSApi->sms_templates_get: $@\n";
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

# **sms_templates_post**
> string sms_templates_post(sms_template => $sms_template)

Create sms template

Create sms template

### Example 
```perl
use Data::Dumper;
use WWW::ClickSendClient::SMSApi;
my $api_instance = WWW::ClickSendClient::SMSApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $sms_template = WWW::ClickSendClient::Object::SmsTemplate->new(); # SmsTemplate | SmsTemplate model

eval { 
    my $result = $api_instance->sms_templates_post(sms_template => $sms_template);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SMSApi->sms_templates_post: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sms_template** | [**SmsTemplate**](SmsTemplate.md)| SmsTemplate model | 

### Return type

**string**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

