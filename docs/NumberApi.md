# WWW::SwaggerClient::NumberApi

## Load the API package
```perl
use WWW::SwaggerClient::Object::NumberApi;
```

All URIs are relative to *https://rest.clicksend.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**numbers_buy_by_dedicated_number_post**](NumberApi.md#numbers_buy_by_dedicated_number_post) | **POST** /numbers/buy/{dedicated_number} | Buy dedicated number
[**numbers_get**](NumberApi.md#numbers_get) | **GET** /numbers | Get all availible dedicated numbers
[**numbers_search_by_country_get**](NumberApi.md#numbers_search_by_country_get) | **GET** /numbers/search/{country} | Get all dedicated numbers by country


# **numbers_buy_by_dedicated_number_post**
> string numbers_buy_by_dedicated_number_post(dedicated_number => $dedicated_number)

Buy dedicated number

Buy dedicated number

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::NumberApi;
my $api_instance = WWW::SwaggerClient::NumberApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $dedicated_number = 'dedicated_number_example'; # string | Phone number to purchase

eval { 
    my $result = $api_instance->numbers_buy_by_dedicated_number_post(dedicated_number => $dedicated_number);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling NumberApi->numbers_buy_by_dedicated_number_post: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dedicated_number** | **string**| Phone number to purchase | 

### Return type

**string**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **numbers_get**
> string numbers_get(page => $page, limit => $limit)

Get all availible dedicated numbers

Get all availible dedicated numbers

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::NumberApi;
my $api_instance = WWW::SwaggerClient::NumberApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $page = 56; # int | Page number
my $limit = 56; # int | Number of records per page

eval { 
    my $result = $api_instance->numbers_get(page => $page, limit => $limit);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling NumberApi->numbers_get: $@\n";
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

# **numbers_search_by_country_get**
> string numbers_search_by_country_get(country => $country, search => $search, search_type => $search_type, page => $page, limit => $limit)

Get all dedicated numbers by country

Get all dedicated numbers by country

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::NumberApi;
my $api_instance = WWW::SwaggerClient::NumberApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $country = 'country_example'; # string | Country code to search
my $search = 'search_example'; # string | Your search pattern or query.
my $search_type = 56; # int | Your strategy for searching, 0 = starts with, 1 = anywhere, 2 = ends with.
my $page = 56; # int | Page number
my $limit = 56; # int | Number of records per page

eval { 
    my $result = $api_instance->numbers_search_by_country_get(country => $country, search => $search, search_type => $search_type, page => $page, limit => $limit);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling NumberApi->numbers_search_by_country_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **country** | **string**| Country code to search | 
 **search** | **string**| Your search pattern or query. | [optional] 
 **search_type** | **int**| Your strategy for searching, 0 &#x3D; starts with, 1 &#x3D; anywhere, 2 &#x3D; ends with. | [optional] 
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

