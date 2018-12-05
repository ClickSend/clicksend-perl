# WWW::ClickSendClient::InboundFAXRulesApi

## Load the API package
```perl
use WWW::ClickSendClient::Object::InboundFAXRulesApi;
```

All URIs are relative to *https://rest.clicksend.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**fax_inbound_automation_delete**](InboundFAXRulesApi.md#fax_inbound_automation_delete) | **DELETE** /automations/fax/inbound/{inbound_rule_id} | Delete inbound fax automation
[**fax_inbound_automation_get**](InboundFAXRulesApi.md#fax_inbound_automation_get) | **GET** /automations/fax/inbound/{inbound_rule_id} | Get specific inbound fax automation
[**fax_inbound_automation_post**](InboundFAXRulesApi.md#fax_inbound_automation_post) | **POST** /automations/fax/inbound | Create new inbound fax automation
[**fax_inbound_automation_put**](InboundFAXRulesApi.md#fax_inbound_automation_put) | **PUT** /automations/fax/inbound/{inbound_rule_id} | Update inbound fax automation
[**fax_inbound_automations_get**](InboundFAXRulesApi.md#fax_inbound_automations_get) | **GET** /automations/fax/inbound | Get all inbound fax automations


# **fax_inbound_automation_delete**
> string fax_inbound_automation_delete(inbound_rule_id => $inbound_rule_id)

Delete inbound fax automation

Delete inbound fax automation

### Example 
```perl
use Data::Dumper;
use WWW::ClickSendClient::InboundFAXRulesApi;
my $api_instance = WWW::ClickSendClient::InboundFAXRulesApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $inbound_rule_id = 56; # int | Inbound rule id

eval { 
    my $result = $api_instance->fax_inbound_automation_delete(inbound_rule_id => $inbound_rule_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling InboundFAXRulesApi->fax_inbound_automation_delete: $@\n";
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

# **fax_inbound_automation_get**
> string fax_inbound_automation_get(inbound_rule_id => $inbound_rule_id)

Get specific inbound fax automation

Get specific inbound fax automation

### Example 
```perl
use Data::Dumper;
use WWW::ClickSendClient::InboundFAXRulesApi;
my $api_instance = WWW::ClickSendClient::InboundFAXRulesApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $inbound_rule_id = 56; # int | Inbound rule id

eval { 
    my $result = $api_instance->fax_inbound_automation_get(inbound_rule_id => $inbound_rule_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling InboundFAXRulesApi->fax_inbound_automation_get: $@\n";
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

# **fax_inbound_automation_post**
> string fax_inbound_automation_post(inbound_fax_rule => $inbound_fax_rule)

Create new inbound fax automation

Create new inbound fax automation

### Example 
```perl
use Data::Dumper;
use WWW::ClickSendClient::InboundFAXRulesApi;
my $api_instance = WWW::ClickSendClient::InboundFAXRulesApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $inbound_fax_rule = WWW::ClickSendClient::Object::InboundFAXRule->new(); # InboundFAXRule | Inbound fax rule model

eval { 
    my $result = $api_instance->fax_inbound_automation_post(inbound_fax_rule => $inbound_fax_rule);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling InboundFAXRulesApi->fax_inbound_automation_post: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbound_fax_rule** | [**InboundFAXRule**](InboundFAXRule.md)| Inbound fax rule model | 

### Return type

**string**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **fax_inbound_automation_put**
> string fax_inbound_automation_put(inbound_rule_id => $inbound_rule_id, inbound_fax_rule => $inbound_fax_rule)

Update inbound fax automation

Update inbound fax automation

### Example 
```perl
use Data::Dumper;
use WWW::ClickSendClient::InboundFAXRulesApi;
my $api_instance = WWW::ClickSendClient::InboundFAXRulesApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $inbound_rule_id = 56; # int | Inbound rule id
my $inbound_fax_rule = WWW::ClickSendClient::Object::InboundFAXRule->new(); # InboundFAXRule | Inbound fax rule model

eval { 
    my $result = $api_instance->fax_inbound_automation_put(inbound_rule_id => $inbound_rule_id, inbound_fax_rule => $inbound_fax_rule);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling InboundFAXRulesApi->fax_inbound_automation_put: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbound_rule_id** | **int**| Inbound rule id | 
 **inbound_fax_rule** | [**InboundFAXRule**](InboundFAXRule.md)| Inbound fax rule model | 

### Return type

**string**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **fax_inbound_automations_get**
> string fax_inbound_automations_get(q => $q, page => $page, limit => $limit)

Get all inbound fax automations

Get all inbound fax automations

### Example 
```perl
use Data::Dumper;
use WWW::ClickSendClient::InboundFAXRulesApi;
my $api_instance = WWW::ClickSendClient::InboundFAXRulesApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $q = 'q_example'; # string | Your keyword or query.
my $page = 56; # int | Page number
my $limit = 56; # int | Number of records per page

eval { 
    my $result = $api_instance->fax_inbound_automations_get(q => $q, page => $page, limit => $limit);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling InboundFAXRulesApi->fax_inbound_automations_get: $@\n";
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

