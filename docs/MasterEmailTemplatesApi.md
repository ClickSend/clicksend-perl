# WWW::ClickSendClient::MasterEmailTemplatesApi

## Load the API package
```perl
use WWW::ClickSendClient::Object::MasterEmailTemplatesApi;
```

All URIs are relative to *https://rest.clicksend.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**master_email_template_categories_get**](MasterEmailTemplatesApi.md#master_email_template_categories_get) | **GET** /email/master-templates-categories | Get all master email template categories
[**master_email_template_category_get**](MasterEmailTemplatesApi.md#master_email_template_category_get) | **GET** /email/master-templates-categories/{category_id} | Get specific master email template category
[**master_email_template_get**](MasterEmailTemplatesApi.md#master_email_template_get) | **GET** /email/master-templates/{template_id} | Get specific master email template
[**master_email_templates_get**](MasterEmailTemplatesApi.md#master_email_templates_get) | **GET** /email/master-templates | Get all master email templates
[**master_email_templates_in_category_get**](MasterEmailTemplatesApi.md#master_email_templates_in_category_get) | **GET** /email/master-templates-categories/{category_id}/master-templates | Get all master email templates in a category


# **master_email_template_categories_get**
> string master_email_template_categories_get(page => $page, limit => $limit)

Get all master email template categories

Get all master email template categories

### Example 
```perl
use Data::Dumper;
use WWW::ClickSendClient::MasterEmailTemplatesApi;
my $api_instance = WWW::ClickSendClient::MasterEmailTemplatesApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $page = 56; # int | Page number
my $limit = 56; # int | Number of records per page

eval { 
    my $result = $api_instance->master_email_template_categories_get(page => $page, limit => $limit);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MasterEmailTemplatesApi->master_email_template_categories_get: $@\n";
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

# **master_email_template_category_get**
> string master_email_template_category_get(category_id => $category_id)

Get specific master email template category

Get specific master email template category

### Example 
```perl
use Data::Dumper;
use WWW::ClickSendClient::MasterEmailTemplatesApi;
my $api_instance = WWW::ClickSendClient::MasterEmailTemplatesApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $category_id = 56; # int | Email category id

eval { 
    my $result = $api_instance->master_email_template_category_get(category_id => $category_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MasterEmailTemplatesApi->master_email_template_category_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **category_id** | **int**| Email category id | 

### Return type

**string**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **master_email_template_get**
> string master_email_template_get(template_id => $template_id)

Get specific master email template

Get specific master email template

### Example 
```perl
use Data::Dumper;
use WWW::ClickSendClient::MasterEmailTemplatesApi;
my $api_instance = WWW::ClickSendClient::MasterEmailTemplatesApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $template_id = 56; # int | Email template id

eval { 
    my $result = $api_instance->master_email_template_get(template_id => $template_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MasterEmailTemplatesApi->master_email_template_get: $@\n";
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

# **master_email_templates_get**
> string master_email_templates_get(page => $page, limit => $limit)

Get all master email templates

Get all master email templates

### Example 
```perl
use Data::Dumper;
use WWW::ClickSendClient::MasterEmailTemplatesApi;
my $api_instance = WWW::ClickSendClient::MasterEmailTemplatesApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $page = 56; # int | Page number
my $limit = 56; # int | Number of records per page

eval { 
    my $result = $api_instance->master_email_templates_get(page => $page, limit => $limit);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MasterEmailTemplatesApi->master_email_templates_get: $@\n";
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

# **master_email_templates_in_category_get**
> string master_email_templates_in_category_get(category_id => $category_id, page => $page, limit => $limit)

Get all master email templates in a category

Get all master email templates in a category

### Example 
```perl
use Data::Dumper;
use WWW::ClickSendClient::MasterEmailTemplatesApi;
my $api_instance = WWW::ClickSendClient::MasterEmailTemplatesApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $category_id = 56; # int | Email category id
my $page = 56; # int | Page number
my $limit = 56; # int | Number of records per page

eval { 
    my $result = $api_instance->master_email_templates_in_category_get(category_id => $category_id, page => $page, limit => $limit);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MasterEmailTemplatesApi->master_email_templates_in_category_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **category_id** | **int**| Email category id | 
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

