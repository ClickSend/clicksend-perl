# WWW::ClickSendClient::DeliveryIssuesApi

## Load the API package
```perl
use WWW::ClickSendClient::Object::DeliveryIssuesApi;
```

All URIs are relative to *https://rest.clicksend.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delivery_issues_get**](DeliveryIssuesApi.md#delivery_issues_get) | **GET** /delivery-issues | Get all delivery issues
[**delivery_issues_post**](DeliveryIssuesApi.md#delivery_issues_post) | **POST** /delivery-issues | Create delivery Issue


# **delivery_issues_get**
> string delivery_issues_get(page => $page, limit => $limit)

Get all delivery issues

Get all delivery issues

### Example 
```perl
use Data::Dumper;
use WWW::ClickSendClient::DeliveryIssuesApi;
my $api_instance = WWW::ClickSendClient::DeliveryIssuesApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $page = 56; # int | Page number
my $limit = 56; # int | Number of records per page

eval { 
    my $result = $api_instance->delivery_issues_get(page => $page, limit => $limit);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DeliveryIssuesApi->delivery_issues_get: $@\n";
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

# **delivery_issues_post**
> string delivery_issues_post(delivery_issue => $delivery_issue)

Create delivery Issue

Create delivery Issue

### Example 
```perl
use Data::Dumper;
use WWW::ClickSendClient::DeliveryIssuesApi;
my $api_instance = WWW::ClickSendClient::DeliveryIssuesApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $delivery_issue = WWW::ClickSendClient::Object::DeliveryIssue->new(); # DeliveryIssue | DeliveryIssue model

eval { 
    my $result = $api_instance->delivery_issues_post(delivery_issue => $delivery_issue);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DeliveryIssuesApi->delivery_issues_post: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **delivery_issue** | [**DeliveryIssue**](DeliveryIssue.md)| DeliveryIssue model | 

### Return type

**string**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

