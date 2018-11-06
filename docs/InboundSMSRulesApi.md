# WWW::ClickSendClient::InboundSMSRulesApi

## Load the API package
```perl
use WWW::ClickSendClient::Object::InboundSMSRulesApi;
```

All URIs are relative to *https://rest.clicksend.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**sms_inbound_automation_delete**](InboundSMSRulesApi.md#sms_inbound_automation_delete) | **DELETE** /automations/sms/inbound/{inbound_rule_id} | Delete inbound sms automation
[**sms_inbound_automation_get**](InboundSMSRulesApi.md#sms_inbound_automation_get) | **GET** /automations/sms/inbound/{inbound_rule_id} | Get specific inbound sms automation
[**sms_inbound_automation_post**](InboundSMSRulesApi.md#sms_inbound_automation_post) | **POST** /automations/sms/inbound | Create new inbound sms automation
[**sms_inbound_automation_put**](InboundSMSRulesApi.md#sms_inbound_automation_put) | **PUT** /automations/sms/inbound/{inbound_rule_id} | Update inbound sms automation
[**sms_inbound_automations_get**](InboundSMSRulesApi.md#sms_inbound_automations_get) | **GET** /automations/sms/inbound | Get all inbound sms automations


# **sms_inbound_automation_delete**
> string sms_inbound_automation_delete(inbound_rule_id => $inbound_rule_id)

Delete inbound sms automation

Delete inbound sms automation

### Example 
```perl
use Data::Dumper;
use WWW::ClickSendClient::InboundSMSRulesApi;
my $api_instance = WWW::ClickSendClient::InboundSMSRulesApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $inbound_rule_id = 56; # int | Inbound rule id

eval { 
    my $result = $api_instance->sms_inbound_automation_delete(inbound_rule_id => $inbound_rule_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling InboundSMSRulesApi->sms_inbound_automation_delete: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbound_rule_id** | **int**| Inbound rule id | 

### Return type

**string**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sms_inbound_automation_get**
> string sms_inbound_automation_get(inbound_rule_id => $inbound_rule_id)

Get specific inbound sms automation

Get specific inbound sms automation

### Example 
```perl
use Data::Dumper;
use WWW::ClickSendClient::InboundSMSRulesApi;
my $api_instance = WWW::ClickSendClient::InboundSMSRulesApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $inbound_rule_id = 56; # int | Inbound rule id

eval { 
    my $result = $api_instance->sms_inbound_automation_get(inbound_rule_id => $inbound_rule_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling InboundSMSRulesApi->sms_inbound_automation_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbound_rule_id** | **int**| Inbound rule id | 

### Return type

**string**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sms_inbound_automation_post**
> string sms_inbound_automation_post(inbound_sms_rule => $inbound_sms_rule)

Create new inbound sms automation

Create new inbound sms automation

### Example 
```perl
use Data::Dumper;
use WWW::ClickSendClient::InboundSMSRulesApi;
my $api_instance = WWW::ClickSendClient::InboundSMSRulesApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $inbound_sms_rule = WWW::ClickSendClient::Object::InboundSMSRule->new(); # InboundSMSRule | Inbound sms rule model

eval { 
    my $result = $api_instance->sms_inbound_automation_post(inbound_sms_rule => $inbound_sms_rule);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling InboundSMSRulesApi->sms_inbound_automation_post: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbound_sms_rule** | [**InboundSMSRule**](InboundSMSRule.md)| Inbound sms rule model | 

### Return type

**string**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sms_inbound_automation_put**
> string sms_inbound_automation_put(inbound_rule_id => $inbound_rule_id, inbound_sms_rule => $inbound_sms_rule)

Update inbound sms automation

Update inbound sms automation

### Example 
```perl
use Data::Dumper;
use WWW::ClickSendClient::InboundSMSRulesApi;
my $api_instance = WWW::ClickSendClient::InboundSMSRulesApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $inbound_rule_id = 56; # int | Inbound rule id
my $inbound_sms_rule = WWW::ClickSendClient::Object::InboundSMSRule->new(); # InboundSMSRule | Inbound sms rule model

eval { 
    my $result = $api_instance->sms_inbound_automation_put(inbound_rule_id => $inbound_rule_id, inbound_sms_rule => $inbound_sms_rule);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling InboundSMSRulesApi->sms_inbound_automation_put: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbound_rule_id** | **int**| Inbound rule id | 
 **inbound_sms_rule** | [**InboundSMSRule**](InboundSMSRule.md)| Inbound sms rule model | 

### Return type

**string**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sms_inbound_automations_get**
> string sms_inbound_automations_get(page => $page, limit => $limit)

Get all inbound sms automations

Get all inbound sms automations

### Example 
```perl
use Data::Dumper;
use WWW::ClickSendClient::InboundSMSRulesApi;
my $api_instance = WWW::ClickSendClient::InboundSMSRulesApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $page = 56; # int | Page number
my $limit = 56; # int | Number of records per page

eval { 
    my $result = $api_instance->sms_inbound_automations_get(page => $page, limit => $limit);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling InboundSMSRulesApi->sms_inbound_automations_get: $@\n";
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

