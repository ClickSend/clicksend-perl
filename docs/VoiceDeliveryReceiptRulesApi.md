# WWW::ClickSendClient::VoiceDeliveryReceiptRulesApi

## Load the API package
```perl
use WWW::ClickSendClient::Object::VoiceDeliveryReceiptRulesApi;
```

All URIs are relative to *https://rest.clicksend.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**voice_delivery_receipt_automation_delete**](VoiceDeliveryReceiptRulesApi.md#voice_delivery_receipt_automation_delete) | **DELETE** /automations/voice/receipts/{receipt_rule_id} | Delete voice delivery receipt automation
[**voice_delivery_receipt_automation_get**](VoiceDeliveryReceiptRulesApi.md#voice_delivery_receipt_automation_get) | **GET** /automations/voice/receipts/{receipt_rule_id} | Get specific voice delivery receipt automation
[**voice_delivery_receipt_automation_post**](VoiceDeliveryReceiptRulesApi.md#voice_delivery_receipt_automation_post) | **POST** /automations/voice/receipts | Create voice delivery receipt automations
[**voice_delivery_receipt_automation_put**](VoiceDeliveryReceiptRulesApi.md#voice_delivery_receipt_automation_put) | **PUT** /automations/voice/receipts/{receipt_rule_id} | Update voice delivery receipt automation
[**voice_delivery_receipt_automations_get**](VoiceDeliveryReceiptRulesApi.md#voice_delivery_receipt_automations_get) | **GET** /automations/voice/receipts | Get all voice delivery receipt automations


# **voice_delivery_receipt_automation_delete**
> string voice_delivery_receipt_automation_delete(receipt_rule_id => $receipt_rule_id)

Delete voice delivery receipt automation

Delete voice delivery receipt automation

### Example 
```perl
use Data::Dumper;
use WWW::ClickSendClient::VoiceDeliveryReceiptRulesApi;
my $api_instance = WWW::ClickSendClient::VoiceDeliveryReceiptRulesApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $receipt_rule_id = 56; # int | Receipt rule id

eval { 
    my $result = $api_instance->voice_delivery_receipt_automation_delete(receipt_rule_id => $receipt_rule_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling VoiceDeliveryReceiptRulesApi->voice_delivery_receipt_automation_delete: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **receipt_rule_id** | **int**| Receipt rule id | 

### Return type

**string**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **voice_delivery_receipt_automation_get**
> string voice_delivery_receipt_automation_get(receipt_rule_id => $receipt_rule_id)

Get specific voice delivery receipt automation

Get specific voice delivery receipt automation

### Example 
```perl
use Data::Dumper;
use WWW::ClickSendClient::VoiceDeliveryReceiptRulesApi;
my $api_instance = WWW::ClickSendClient::VoiceDeliveryReceiptRulesApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $receipt_rule_id = 56; # int | Receipt rule id

eval { 
    my $result = $api_instance->voice_delivery_receipt_automation_get(receipt_rule_id => $receipt_rule_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling VoiceDeliveryReceiptRulesApi->voice_delivery_receipt_automation_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **receipt_rule_id** | **int**| Receipt rule id | 

### Return type

**string**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **voice_delivery_receipt_automation_post**
> string voice_delivery_receipt_automation_post(delivery_receipt_rule => $delivery_receipt_rule)

Create voice delivery receipt automations

Create voice delivery receipt automations

### Example 
```perl
use Data::Dumper;
use WWW::ClickSendClient::VoiceDeliveryReceiptRulesApi;
my $api_instance = WWW::ClickSendClient::VoiceDeliveryReceiptRulesApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $delivery_receipt_rule = WWW::ClickSendClient::Object::DeliveryReceiptRule->new(); # DeliveryReceiptRule | voice delivery receipt rule model

eval { 
    my $result = $api_instance->voice_delivery_receipt_automation_post(delivery_receipt_rule => $delivery_receipt_rule);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling VoiceDeliveryReceiptRulesApi->voice_delivery_receipt_automation_post: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **delivery_receipt_rule** | [**DeliveryReceiptRule**](DeliveryReceiptRule.md)| voice delivery receipt rule model | 

### Return type

**string**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **voice_delivery_receipt_automation_put**
> string voice_delivery_receipt_automation_put(receipt_rule_id => $receipt_rule_id, delivery_receipt_rule => $delivery_receipt_rule)

Update voice delivery receipt automation

Update voice delivery receipt automation

### Example 
```perl
use Data::Dumper;
use WWW::ClickSendClient::VoiceDeliveryReceiptRulesApi;
my $api_instance = WWW::ClickSendClient::VoiceDeliveryReceiptRulesApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $receipt_rule_id = 56; # int | Receipt rule id
my $delivery_receipt_rule = WWW::ClickSendClient::Object::DeliveryReceiptRule->new(); # DeliveryReceiptRule | Delivery receipt rule model

eval { 
    my $result = $api_instance->voice_delivery_receipt_automation_put(receipt_rule_id => $receipt_rule_id, delivery_receipt_rule => $delivery_receipt_rule);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling VoiceDeliveryReceiptRulesApi->voice_delivery_receipt_automation_put: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **receipt_rule_id** | **int**| Receipt rule id | 
 **delivery_receipt_rule** | [**DeliveryReceiptRule**](DeliveryReceiptRule.md)| Delivery receipt rule model | 

### Return type

**string**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **voice_delivery_receipt_automations_get**
> string voice_delivery_receipt_automations_get(q => $q, page => $page, limit => $limit)

Get all voice delivery receipt automations

Get all voice delivery receipt automations

### Example 
```perl
use Data::Dumper;
use WWW::ClickSendClient::VoiceDeliveryReceiptRulesApi;
my $api_instance = WWW::ClickSendClient::VoiceDeliveryReceiptRulesApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $q = 'q_example'; # string | Your keyword or query.
my $page = 56; # int | Page number
my $limit = 56; # int | Number of records per page

eval { 
    my $result = $api_instance->voice_delivery_receipt_automations_get(q => $q, page => $page, limit => $limit);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling VoiceDeliveryReceiptRulesApi->voice_delivery_receipt_automations_get: $@\n";
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

