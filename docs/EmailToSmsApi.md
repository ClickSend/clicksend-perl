# WWW::ClickSendClient::EmailToSmsApi

## Load the API package
```perl
use WWW::ClickSendClient::Object::EmailToSmsApi;
```

All URIs are relative to *https://rest.clicksend.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**sms_email_sms_get**](EmailToSmsApi.md#sms_email_sms_get) | **GET** /sms/email-sms | Get list of email to sms allowed addresses
[**sms_email_sms_post**](EmailToSmsApi.md#sms_email_sms_post) | **POST** /sms/email-sms | Create email to sms allowed address
[**sms_email_sms_stripped_string_delete**](EmailToSmsApi.md#sms_email_sms_stripped_string_delete) | **DELETE** /sms/email-sms-stripped-strings/{rule_id} | Delete email to sms stripped string rule
[**sms_email_sms_stripped_string_get**](EmailToSmsApi.md#sms_email_sms_stripped_string_get) | **GET** /sms/email-sms-stripped-strings/{rule_id} | Get email to sms stripped string rule
[**sms_email_sms_stripped_string_post**](EmailToSmsApi.md#sms_email_sms_stripped_string_post) | **POST** /sms/email-sms-stripped-strings | Create email to sms stripped string rule
[**sms_email_sms_stripped_string_put**](EmailToSmsApi.md#sms_email_sms_stripped_string_put) | **PUT** /sms/email-sms-stripped-strings/{rule_id} | Update email to sms stripped string rule
[**sms_email_sms_stripped_strings_get**](EmailToSmsApi.md#sms_email_sms_stripped_strings_get) | **GET** /sms/email-sms-stripped-strings | Get list of email to sms stripped string rules


# **sms_email_sms_get**
> string sms_email_sms_get(page => $page, limit => $limit)

Get list of email to sms allowed addresses

Get list of email to sms allowed addresses

### Example 
```perl
use Data::Dumper;
use WWW::ClickSendClient::EmailToSmsApi;
my $api_instance = WWW::ClickSendClient::EmailToSmsApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $page = 56; # int | Page number
my $limit = 56; # int | Number of records per page

eval { 
    my $result = $api_instance->sms_email_sms_get(page => $page, limit => $limit);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling EmailToSmsApi->sms_email_sms_get: $@\n";
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

# **sms_email_sms_post**
> string sms_email_sms_post(email_sms_address => $email_sms_address)

Create email to sms allowed address

Create email to sms allowed address

### Example 
```perl
use Data::Dumper;
use WWW::ClickSendClient::EmailToSmsApi;
my $api_instance = WWW::ClickSendClient::EmailToSmsApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $email_sms_address = WWW::ClickSendClient::Object::EmailSMSAddress->new(); # EmailSMSAddress | EmailSMSAddress model

eval { 
    my $result = $api_instance->sms_email_sms_post(email_sms_address => $email_sms_address);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling EmailToSmsApi->sms_email_sms_post: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email_sms_address** | [**EmailSMSAddress**](EmailSMSAddress.md)| EmailSMSAddress model | 

### Return type

**string**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sms_email_sms_stripped_string_delete**
> string sms_email_sms_stripped_string_delete(rule_id => $rule_id)

Delete email to sms stripped string rule

Delete email to sms stripped string rule

### Example 
```perl
use Data::Dumper;
use WWW::ClickSendClient::EmailToSmsApi;
my $api_instance = WWW::ClickSendClient::EmailToSmsApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $rule_id = 56; # int | Your rule id

eval { 
    my $result = $api_instance->sms_email_sms_stripped_string_delete(rule_id => $rule_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling EmailToSmsApi->sms_email_sms_stripped_string_delete: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rule_id** | **int**| Your rule id | 

### Return type

**string**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sms_email_sms_stripped_string_get**
> string sms_email_sms_stripped_string_get(rule_id => $rule_id)

Get email to sms stripped string rule

Get email to sms stripped string rule

### Example 
```perl
use Data::Dumper;
use WWW::ClickSendClient::EmailToSmsApi;
my $api_instance = WWW::ClickSendClient::EmailToSmsApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $rule_id = 56; # int | Your rule id

eval { 
    my $result = $api_instance->sms_email_sms_stripped_string_get(rule_id => $rule_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling EmailToSmsApi->sms_email_sms_stripped_string_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rule_id** | **int**| Your rule id | 

### Return type

**string**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sms_email_sms_stripped_string_post**
> string sms_email_sms_stripped_string_post(strip_string => $strip_string)

Create email to sms stripped string rule

Create email to sms stripped string rules

### Example 
```perl
use Data::Dumper;
use WWW::ClickSendClient::EmailToSmsApi;
my $api_instance = WWW::ClickSendClient::EmailToSmsApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $strip_string = 'strip_string_example'; # string | String to be stripped.

eval { 
    my $result = $api_instance->sms_email_sms_stripped_string_post(strip_string => $strip_string);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling EmailToSmsApi->sms_email_sms_stripped_string_post: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **strip_string** | **string**| String to be stripped. | 

### Return type

**string**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sms_email_sms_stripped_string_put**
> string sms_email_sms_stripped_string_put(strip_string => $strip_string, rule_id => $rule_id)

Update email to sms stripped string rule

Update email to sms stripped string rule

### Example 
```perl
use Data::Dumper;
use WWW::ClickSendClient::EmailToSmsApi;
my $api_instance = WWW::ClickSendClient::EmailToSmsApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $strip_string = 'strip_string_example'; # string | String to be stripped.
my $rule_id = 56; # int | Your rule id

eval { 
    my $result = $api_instance->sms_email_sms_stripped_string_put(strip_string => $strip_string, rule_id => $rule_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling EmailToSmsApi->sms_email_sms_stripped_string_put: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **strip_string** | **string**| String to be stripped. | 
 **rule_id** | **int**| Your rule id | 

### Return type

**string**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sms_email_sms_stripped_strings_get**
> string sms_email_sms_stripped_strings_get(page => $page, limit => $limit)

Get list of email to sms stripped string rules

Get list of email to sms stripped string rules

### Example 
```perl
use Data::Dumper;
use WWW::ClickSendClient::EmailToSmsApi;
my $api_instance = WWW::ClickSendClient::EmailToSmsApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $page = 56; # int | Page number
my $limit = 56; # int | Number of records per page

eval { 
    my $result = $api_instance->sms_email_sms_stripped_strings_get(page => $page, limit => $limit);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling EmailToSmsApi->sms_email_sms_stripped_strings_get: $@\n";
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

