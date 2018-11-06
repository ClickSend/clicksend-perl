# WWW::ClickSendClient::FAXDeliveryReceiptRulesApi

## Load the API package
```perl
use WWW::ClickSendClient::Object::FAXDeliveryReceiptRulesApi;
```

All URIs are relative to *https://rest.clicksend.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**fax_delivery_receipt_automation_delete**](FAXDeliveryReceiptRulesApi.md#fax_delivery_receipt_automation_delete) | **DELETE** /automations/fax/receipts/{receipt_rule_id} | Delete fax delivery receipt automation
[**fax_delivery_receipt_automation_get**](FAXDeliveryReceiptRulesApi.md#fax_delivery_receipt_automation_get) | **GET** /automations/fax/receipts/{receipt_rule_id} | Get specific fax delivery receipt automation
[**fax_delivery_receipt_automation_post**](FAXDeliveryReceiptRulesApi.md#fax_delivery_receipt_automation_post) | **POST** /automations/fax/receipts | Create fax delivery receipt automations
[**fax_delivery_receipt_automation_put**](FAXDeliveryReceiptRulesApi.md#fax_delivery_receipt_automation_put) | **PUT** /automations/fax/receipts/{receipt_rule_id} | Update fax delivery receipt automation
[**fax_delivery_receipt_automations_get**](FAXDeliveryReceiptRulesApi.md#fax_delivery_receipt_automations_get) | **GET** /automations/fax/receipts | Get all fax delivery receipt automations


# **fax_delivery_receipt_automation_delete**
> string fax_delivery_receipt_automation_delete(receipt_rule_id => $receipt_rule_id)

Delete fax delivery receipt automation

Delete fax delivery receipt automation

### Example 
```perl
use Data::Dumper;
use WWW::ClickSendClient::FAXDeliveryReceiptRulesApi;
my $api_instance = WWW::ClickSendClient::FAXDeliveryReceiptRulesApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $receipt_rule_id = 56; # int | Receipt rule id

eval { 
    my $result = $api_instance->fax_delivery_receipt_automation_delete(receipt_rule_id => $receipt_rule_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling FAXDeliveryReceiptRulesApi->fax_delivery_receipt_automation_delete: $@\n";
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

# **fax_delivery_receipt_automation_get**
> string fax_delivery_receipt_automation_get(receipt_rule_id => $receipt_rule_id)

Get specific fax delivery receipt automation

Get specific fax delivery receipt automation

### Example 
```perl
use Data::Dumper;
use WWW::ClickSendClient::FAXDeliveryReceiptRulesApi;
my $api_instance = WWW::ClickSendClient::FAXDeliveryReceiptRulesApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $receipt_rule_id = 56; # int | Receipt rule id

eval { 
    my $result = $api_instance->fax_delivery_receipt_automation_get(receipt_rule_id => $receipt_rule_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling FAXDeliveryReceiptRulesApi->fax_delivery_receipt_automation_get: $@\n";
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

# **fax_delivery_receipt_automation_post**
> string fax_delivery_receipt_automation_post(delivery_receipt_rule => $delivery_receipt_rule)

Create fax delivery receipt automations

Create fax delivery receipt automations

### Example 
```perl
use Data::Dumper;
use WWW::ClickSendClient::FAXDeliveryReceiptRulesApi;
my $api_instance = WWW::ClickSendClient::FAXDeliveryReceiptRulesApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $delivery_receipt_rule = WWW::ClickSendClient::Object::DeliveryReceiptRule->new(); # DeliveryReceiptRule | fax delivery receipt rule model

eval { 
    my $result = $api_instance->fax_delivery_receipt_automation_post(delivery_receipt_rule => $delivery_receipt_rule);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling FAXDeliveryReceiptRulesApi->fax_delivery_receipt_automation_post: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **delivery_receipt_rule** | [**DeliveryReceiptRule**](DeliveryReceiptRule.md)| fax delivery receipt rule model | 

### Return type

**string**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **fax_delivery_receipt_automation_put**
> string fax_delivery_receipt_automation_put(receipt_rule_id => $receipt_rule_id, delivery_receipt_rule => $delivery_receipt_rule)

Update fax delivery receipt automation

Update fax delivery receipt automation

### Example 
```perl
use Data::Dumper;
use WWW::ClickSendClient::FAXDeliveryReceiptRulesApi;
my $api_instance = WWW::ClickSendClient::FAXDeliveryReceiptRulesApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $receipt_rule_id = 56; # int | Receipt rule id
my $delivery_receipt_rule = WWW::ClickSendClient::Object::DeliveryReceiptRule->new(); # DeliveryReceiptRule | Delivery receipt rule model

eval { 
    my $result = $api_instance->fax_delivery_receipt_automation_put(receipt_rule_id => $receipt_rule_id, delivery_receipt_rule => $delivery_receipt_rule);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling FAXDeliveryReceiptRulesApi->fax_delivery_receipt_automation_put: $@\n";
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

# **fax_delivery_receipt_automations_get**
> string fax_delivery_receipt_automations_get(page => $page, limit => $limit)

Get all fax delivery receipt automations

Get all fax delivery receipt automations

### Example 
```perl
use Data::Dumper;
use WWW::ClickSendClient::FAXDeliveryReceiptRulesApi;
my $api_instance = WWW::ClickSendClient::FAXDeliveryReceiptRulesApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $page = 56; # int | Page number
my $limit = 56; # int | Number of records per page

eval { 
    my $result = $api_instance->fax_delivery_receipt_automations_get(page => $page, limit => $limit);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling FAXDeliveryReceiptRulesApi->fax_delivery_receipt_automations_get: $@\n";
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

