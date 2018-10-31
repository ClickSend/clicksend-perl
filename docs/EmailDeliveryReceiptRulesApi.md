# WWW::SwaggerClient::EmailDeliveryReceiptRulesApi

## Load the API package
```perl
use WWW::SwaggerClient::Object::EmailDeliveryReceiptRulesApi;
```

All URIs are relative to *https://rest.clicksend.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**email_delivery_receipt_automation_delete**](EmailDeliveryReceiptRulesApi.md#email_delivery_receipt_automation_delete) | **DELETE** /automations/email/receipts/{receipt_rule_id} | Delete email delivery receipt automation
[**email_delivery_receipt_automation_get**](EmailDeliveryReceiptRulesApi.md#email_delivery_receipt_automation_get) | **GET** /automations/email/receipts/{receipt_rule_id} | Get specific email delivery receipt automation
[**email_delivery_receipt_automation_post**](EmailDeliveryReceiptRulesApi.md#email_delivery_receipt_automation_post) | **POST** /automations/email/receipts | Create email delivery receipt automations
[**email_delivery_receipt_automation_put**](EmailDeliveryReceiptRulesApi.md#email_delivery_receipt_automation_put) | **PUT** /automations/email/receipts/{receipt_rule_id} | Update email delivery receipt automation
[**email_delivery_receipt_automations_get**](EmailDeliveryReceiptRulesApi.md#email_delivery_receipt_automations_get) | **GET** /automations/email/receipts | Get all email delivery receipt automations


# **email_delivery_receipt_automation_delete**
> string email_delivery_receipt_automation_delete(receipt_rule_id => $receipt_rule_id)

Delete email delivery receipt automation

Delete email delivery receipt automation

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::EmailDeliveryReceiptRulesApi;
my $api_instance = WWW::SwaggerClient::EmailDeliveryReceiptRulesApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $receipt_rule_id = 56; # int | Receipt rule id

eval { 
    my $result = $api_instance->email_delivery_receipt_automation_delete(receipt_rule_id => $receipt_rule_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling EmailDeliveryReceiptRulesApi->email_delivery_receipt_automation_delete: $@\n";
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

# **email_delivery_receipt_automation_get**
> string email_delivery_receipt_automation_get(receipt_rule_id => $receipt_rule_id)

Get specific email delivery receipt automation

Get specific email delivery receipt automation

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::EmailDeliveryReceiptRulesApi;
my $api_instance = WWW::SwaggerClient::EmailDeliveryReceiptRulesApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $receipt_rule_id = 56; # int | Receipt rule id

eval { 
    my $result = $api_instance->email_delivery_receipt_automation_get(receipt_rule_id => $receipt_rule_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling EmailDeliveryReceiptRulesApi->email_delivery_receipt_automation_get: $@\n";
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

# **email_delivery_receipt_automation_post**
> string email_delivery_receipt_automation_post(delivery_receipt_rule => $delivery_receipt_rule)

Create email delivery receipt automations

Create email delivery receipt automations

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::EmailDeliveryReceiptRulesApi;
my $api_instance = WWW::SwaggerClient::EmailDeliveryReceiptRulesApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $delivery_receipt_rule = WWW::SwaggerClient::Object::DeliveryReceiptRule->new(); # DeliveryReceiptRule | Email delivery receipt rule model

eval { 
    my $result = $api_instance->email_delivery_receipt_automation_post(delivery_receipt_rule => $delivery_receipt_rule);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling EmailDeliveryReceiptRulesApi->email_delivery_receipt_automation_post: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **delivery_receipt_rule** | [**DeliveryReceiptRule**](DeliveryReceiptRule.md)| Email delivery receipt rule model | 

### Return type

**string**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **email_delivery_receipt_automation_put**
> string email_delivery_receipt_automation_put(receipt_rule_id => $receipt_rule_id, delivery_receipt_rule => $delivery_receipt_rule)

Update email delivery receipt automation

Update email delivery receipt automation

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::EmailDeliveryReceiptRulesApi;
my $api_instance = WWW::SwaggerClient::EmailDeliveryReceiptRulesApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $receipt_rule_id = 56; # int | Receipt rule id
my $delivery_receipt_rule = WWW::SwaggerClient::Object::DeliveryReceiptRule->new(); # DeliveryReceiptRule | Delivery receipt rule model

eval { 
    my $result = $api_instance->email_delivery_receipt_automation_put(receipt_rule_id => $receipt_rule_id, delivery_receipt_rule => $delivery_receipt_rule);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling EmailDeliveryReceiptRulesApi->email_delivery_receipt_automation_put: $@\n";
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

# **email_delivery_receipt_automations_get**
> string email_delivery_receipt_automations_get(page => $page, limit => $limit)

Get all email delivery receipt automations

Get all email delivery receipt automations

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::EmailDeliveryReceiptRulesApi;
my $api_instance = WWW::SwaggerClient::EmailDeliveryReceiptRulesApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $page = 56; # int | Page number
my $limit = 56; # int | Number of records per page

eval { 
    my $result = $api_instance->email_delivery_receipt_automations_get(page => $page, limit => $limit);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling EmailDeliveryReceiptRulesApi->email_delivery_receipt_automations_get: $@\n";
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

