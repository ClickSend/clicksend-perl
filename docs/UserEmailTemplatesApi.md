# WWW::ClickSendClient::UserEmailTemplatesApi

## Load the API package
```perl
use WWW::ClickSendClient::Object::UserEmailTemplatesApi;
```

All URIs are relative to *https://rest.clicksend.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**email_template_delete**](UserEmailTemplatesApi.md#email_template_delete) | **DELETE** /email/templates/{template_id} | Delete user email template
[**email_template_get**](UserEmailTemplatesApi.md#email_template_get) | **GET** /email/templates/{template_id} | Get specific user email template
[**email_template_post**](UserEmailTemplatesApi.md#email_template_post) | **POST** /email/templates | Create email template
[**email_template_put**](UserEmailTemplatesApi.md#email_template_put) | **PUT** /email/templates/{template_id} | Update email template
[**email_templates_get**](UserEmailTemplatesApi.md#email_templates_get) | **GET** /email/templates | Get all user email templates


# **email_template_delete**
> string email_template_delete(template_id => $template_id)

Delete user email template

Delete user email template

### Example 
```perl
use Data::Dumper;
use WWW::ClickSendClient::UserEmailTemplatesApi;
my $api_instance = WWW::ClickSendClient::UserEmailTemplatesApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $template_id = 56; # int | Email template id

eval { 
    my $result = $api_instance->email_template_delete(template_id => $template_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UserEmailTemplatesApi->email_template_delete: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **template_id** | **int**| Email template id | 

### Return type

**string**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **email_template_get**
> string email_template_get(template_id => $template_id)

Get specific user email template

Get specific user email templates

### Example 
```perl
use Data::Dumper;
use WWW::ClickSendClient::UserEmailTemplatesApi;
my $api_instance = WWW::ClickSendClient::UserEmailTemplatesApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $template_id = 56; # int | Email template id

eval { 
    my $result = $api_instance->email_template_get(template_id => $template_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UserEmailTemplatesApi->email_template_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **template_id** | **int**| Email template id | 

### Return type

**string**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **email_template_post**
> string email_template_post(email_template => $email_template)

Create email template

Create email template

### Example 
```perl
use Data::Dumper;
use WWW::ClickSendClient::UserEmailTemplatesApi;
my $api_instance = WWW::ClickSendClient::UserEmailTemplatesApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $email_template = WWW::ClickSendClient::Object::EmailTemplateNew->new(); # EmailTemplateNew | Email template model

eval { 
    my $result = $api_instance->email_template_post(email_template => $email_template);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UserEmailTemplatesApi->email_template_post: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email_template** | [**EmailTemplateNew**](EmailTemplateNew.md)| Email template model | 

### Return type

**string**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **email_template_put**
> string email_template_put(template_id => $template_id, email_template => $email_template)

Update email template

Update email template

### Example 
```perl
use Data::Dumper;
use WWW::ClickSendClient::UserEmailTemplatesApi;
my $api_instance = WWW::ClickSendClient::UserEmailTemplatesApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $template_id = 56; # int | Email template id
my $email_template = WWW::ClickSendClient::Object::EmailTemplateUpdate->new(); # EmailTemplateUpdate | Email template model

eval { 
    my $result = $api_instance->email_template_put(template_id => $template_id, email_template => $email_template);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UserEmailTemplatesApi->email_template_put: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **template_id** | **int**| Email template id | 
 **email_template** | [**EmailTemplateUpdate**](EmailTemplateUpdate.md)| Email template model | 

### Return type

**string**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **email_templates_get**
> string email_templates_get(page => $page, limit => $limit)

Get all user email templates

Get all user email templates

### Example 
```perl
use Data::Dumper;
use WWW::ClickSendClient::UserEmailTemplatesApi;
my $api_instance = WWW::ClickSendClient::UserEmailTemplatesApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $page = 56; # int | Page number
my $limit = 56; # int | Number of records per page

eval { 
    my $result = $api_instance->email_templates_get(page => $page, limit => $limit);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UserEmailTemplatesApi->email_templates_get: $@\n";
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

