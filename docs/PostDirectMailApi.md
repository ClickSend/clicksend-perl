# WWW::ClickSendClient::PostDirectMailApi

## Load the API package
```perl
use WWW::ClickSendClient::Object::PostDirectMailApi;
```

All URIs are relative to *https://rest.clicksend.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**post_direct_mail_campaigns_get**](PostDirectMailApi.md#post_direct_mail_campaigns_get) | **GET** /post/direct-mail/campaigns | Get direct mail campaigns
[**post_direct_mail_campaigns_price_post**](PostDirectMailApi.md#post_direct_mail_campaigns_price_post) | **POST** /post/direct-mail/campaigns/price | Calculate direct mail campaign price
[**post_direct_mail_campaigns_send_post**](PostDirectMailApi.md#post_direct_mail_campaigns_send_post) | **POST** /post/direct-mail/campaigns/send | Send direct mail campaign
[**post_direct_mail_locations_search_by_country_get**](PostDirectMailApi.md#post_direct_mail_locations_search_by_country_get) | **GET** /post/direct-mail/locations/search/{country} | Search for a location


# **post_direct_mail_campaigns_get**
> string post_direct_mail_campaigns_get(page => $page, limit => $limit)

Get direct mail campaigns

Get direct mail campaigns

### Example 
```perl
use Data::Dumper;
use WWW::ClickSendClient::PostDirectMailApi;
my $api_instance = WWW::ClickSendClient::PostDirectMailApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $page = 56; # int | Page number
my $limit = 56; # int | Number of records per page

eval { 
    my $result = $api_instance->post_direct_mail_campaigns_get(page => $page, limit => $limit);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling PostDirectMailApi->post_direct_mail_campaigns_get: $@\n";
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

# **post_direct_mail_campaigns_price_post**
> string post_direct_mail_campaigns_price_post(post_direct_mail => $post_direct_mail)

Calculate direct mail campaign price

Calculate direct mail campaign price

### Example 
```perl
use Data::Dumper;
use WWW::ClickSendClient::PostDirectMailApi;
my $api_instance = WWW::ClickSendClient::PostDirectMailApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $post_direct_mail = WWW::ClickSendClient::Object::PostDirectMail->new(); # PostDirectMail | PostDirectMail model

eval { 
    my $result = $api_instance->post_direct_mail_campaigns_price_post(post_direct_mail => $post_direct_mail);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling PostDirectMailApi->post_direct_mail_campaigns_price_post: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **post_direct_mail** | [**PostDirectMail**](PostDirectMail.md)| PostDirectMail model | 

### Return type

**string**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_direct_mail_campaigns_send_post**
> string post_direct_mail_campaigns_send_post(post_direct_mail => $post_direct_mail)

Send direct mail campaign

Send direct mail campaign

### Example 
```perl
use Data::Dumper;
use WWW::ClickSendClient::PostDirectMailApi;
my $api_instance = WWW::ClickSendClient::PostDirectMailApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $post_direct_mail = WWW::ClickSendClient::Object::PostDirectMail->new(); # PostDirectMail | PostDirectMail model

eval { 
    my $result = $api_instance->post_direct_mail_campaigns_send_post(post_direct_mail => $post_direct_mail);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling PostDirectMailApi->post_direct_mail_campaigns_send_post: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **post_direct_mail** | [**PostDirectMail**](PostDirectMail.md)| PostDirectMail model | 

### Return type

**string**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_direct_mail_locations_search_by_country_get**
> string post_direct_mail_locations_search_by_country_get(country => $country, q => $q, page => $page, limit => $limit)

Search for a location

Search for a location

### Example 
```perl
use Data::Dumper;
use WWW::ClickSendClient::PostDirectMailApi;
my $api_instance = WWW::ClickSendClient::PostDirectMailApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $country = 'country_example'; # string | Country Code to search
my $q = 'q_example'; # string | Search term (e.g. post code, city name)
my $page = 56; # int | Page number
my $limit = 56; # int | Number of records per page

eval { 
    my $result = $api_instance->post_direct_mail_locations_search_by_country_get(country => $country, q => $q, page => $page, limit => $limit);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling PostDirectMailApi->post_direct_mail_locations_search_by_country_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **country** | **string**| Country Code to search | 
 **q** | **string**| Search term (e.g. post code, city name) | 
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

