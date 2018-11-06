# WWW::ClickSendClient::SMSDeliveryReceiptRulesApi

## Load the API package
```perl
use WWW::ClickSendClient::Object::SMSDeliveryReceiptRulesApi;
```

All URIs are relative to *https://rest.clicksend.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**sms_delivery_receipt_automation_delete**](SMSDeliveryReceiptRulesApi.md#sms_delivery_receipt_automation_delete) | **DELETE** /automations/sms/receipts/{receipt_rule_id} | Delete sms delivery receipt automation
[**sms_delivery_receipt_automation_get**](SMSDeliveryReceiptRulesApi.md#sms_delivery_receipt_automation_get) | **GET** /automations/sms/receipts/{receipt_rule_id} | Get specific sms delivery receipt automation
[**sms_delivery_receipt_automation_post**](SMSDeliveryReceiptRulesApi.md#sms_delivery_receipt_automation_post) | **POST** /automations/sms/receipts | Create sms delivery receipt automations
[**sms_delivery_receipt_automation_put**](SMSDeliveryReceiptRulesApi.md#sms_delivery_receipt_automation_put) | **PUT** /automations/sms/receipts/{receipt_rule_id} | Update sms delivery receipt automation
[**sms_delivery_receipt_automations_get**](SMSDeliveryReceiptRulesApi.md#sms_delivery_receipt_automations_get) | **GET** /automations/sms/receipts | Get all sms delivery receipt automations


# **sms_delivery_receipt_automation_delete**
> string sms_delivery_receipt_automation_delete(receipt_rule_id => $receipt_rule_id)

Delete sms delivery receipt automation

Delete sms delivery receipt automation

### Example 
```perl
use Data::Dumper;
use WWW::ClickSendClient::SMSDeliveryReceiptRulesApi;
my $api_instance = WWW::ClickSendClient::SMSDeliveryReceiptRulesApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $receipt_rule_id = 56; # int | Receipt rule id

eval { 
    my $result = $api_instance->sms_delivery_receipt_automation_delete(receipt_rule_id => $receipt_rule_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SMSDeliveryReceiptRulesApi->sms_delivery_receipt_automation_delete: $@\n";
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

# **sms_delivery_receipt_automation_get**
> string sms_delivery_receipt_automation_get(receipt_rule_id => $receipt_rule_id)

Get specific sms delivery receipt automation

Get specific sms delivery receipt automation

### Example 
```perl
use Data::Dumper;
use WWW::ClickSendClient::SMSDeliveryReceiptRulesApi;
my $api_instance = WWW::ClickSendClient::SMSDeliveryReceiptRulesApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $receipt_rule_id = 56; # int | Receipt rule id

eval { 
    my $result = $api_instance->sms_delivery_receipt_automation_get(receipt_rule_id => $receipt_rule_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SMSDeliveryReceiptRulesApi->sms_delivery_receipt_automation_get: $@\n";
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

# **sms_delivery_receipt_automation_post**
> string sms_delivery_receipt_automation_post(delivery_receipt_rule => $delivery_receipt_rule)

Create sms delivery receipt automations

Create sms delivery receipt automations

### Example 
```perl
use Data::Dumper;
use WWW::ClickSendClient::SMSDeliveryReceiptRulesApi;
my $api_instance = WWW::ClickSendClient::SMSDeliveryReceiptRulesApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $delivery_receipt_rule = WWW::ClickSendClient::Object::DeliveryReceiptRule->new(); # DeliveryReceiptRule | sms delivery receipt rule model

eval { 
    my $result = $api_instance->sms_delivery_receipt_automation_post(delivery_receipt_rule => $delivery_receipt_rule);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SMSDeliveryReceiptRulesApi->sms_delivery_receipt_automation_post: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **delivery_receipt_rule** | [**DeliveryReceiptRule**](DeliveryReceiptRule.md)| sms delivery receipt rule model | 

### Return type

**string**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sms_delivery_receipt_automation_put**
> string sms_delivery_receipt_automation_put(receipt_rule_id => $receipt_rule_id, delivery_receipt_rule => $delivery_receipt_rule)

Update sms delivery receipt automation

Update sms delivery receipt automation

### Example 
```perl
use Data::Dumper;
use WWW::ClickSendClient::SMSDeliveryReceiptRulesApi;
my $api_instance = WWW::ClickSendClient::SMSDeliveryReceiptRulesApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $receipt_rule_id = 56; # int | Receipt rule id
my $delivery_receipt_rule = WWW::ClickSendClient::Object::DeliveryReceiptRule->new(); # DeliveryReceiptRule | Delivery receipt rule model

eval { 
    my $result = $api_instance->sms_delivery_receipt_automation_put(receipt_rule_id => $receipt_rule_id, delivery_receipt_rule => $delivery_receipt_rule);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SMSDeliveryReceiptRulesApi->sms_delivery_receipt_automation_put: $@\n";
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

# **sms_delivery_receipt_automations_get**
> string sms_delivery_receipt_automations_get(page => $page, limit => $limit)

Get all sms delivery receipt automations

Get all sms delivery receipt automations

### Example 
```perl
use Data::Dumper;
use WWW::ClickSendClient::SMSDeliveryReceiptRulesApi;
my $api_instance = WWW::ClickSendClient::SMSDeliveryReceiptRulesApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $page = 56; # int | Page number
my $limit = 56; # int | Number of records per page

eval { 
    my $result = $api_instance->sms_delivery_receipt_automations_get(page => $page, limit => $limit);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SMSDeliveryReceiptRulesApi->sms_delivery_receipt_automations_get: $@\n";
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

