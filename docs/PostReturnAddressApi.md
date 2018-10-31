# WWW::SwaggerClient::PostReturnAddressApi

## Load the API package
```perl
use WWW::SwaggerClient::Object::PostReturnAddressApi;
```

All URIs are relative to *https://rest.clicksend.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**post_return_addresses_by_return_address_id_delete**](PostReturnAddressApi.md#post_return_addresses_by_return_address_id_delete) | **DELETE** /post/return-addresses/{return_address_id} | Delete specific post return address
[**post_return_addresses_by_return_address_id_get**](PostReturnAddressApi.md#post_return_addresses_by_return_address_id_get) | **GET** /post/return-addresses/{return_address_id} | Get specific post return address
[**post_return_addresses_by_return_address_id_put**](PostReturnAddressApi.md#post_return_addresses_by_return_address_id_put) | **PUT** /post/return-addresses/{return_address_id} | Update post return address
[**post_return_addresses_get**](PostReturnAddressApi.md#post_return_addresses_get) | **GET** /post/return-addresses | Get list of post return addresses
[**post_return_addresses_post**](PostReturnAddressApi.md#post_return_addresses_post) | **POST** /post/return-addresses | Create post return address


# **post_return_addresses_by_return_address_id_delete**
> string post_return_addresses_by_return_address_id_delete(return_address_id => $return_address_id)

Delete specific post return address

Delete specific post return address

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::PostReturnAddressApi;
my $api_instance = WWW::SwaggerClient::PostReturnAddressApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $return_address_id = 56; # int | Return address ID

eval { 
    my $result = $api_instance->post_return_addresses_by_return_address_id_delete(return_address_id => $return_address_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling PostReturnAddressApi->post_return_addresses_by_return_address_id_delete: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **return_address_id** | **int**| Return address ID | 

### Return type

**string**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_return_addresses_by_return_address_id_get**
> string post_return_addresses_by_return_address_id_get(return_address_id => $return_address_id)

Get specific post return address

Get specific post return address

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::PostReturnAddressApi;
my $api_instance = WWW::SwaggerClient::PostReturnAddressApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $return_address_id = 56; # int | Return address ID

eval { 
    my $result = $api_instance->post_return_addresses_by_return_address_id_get(return_address_id => $return_address_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling PostReturnAddressApi->post_return_addresses_by_return_address_id_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **return_address_id** | **int**| Return address ID | 

### Return type

**string**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_return_addresses_by_return_address_id_put**
> string post_return_addresses_by_return_address_id_put(return_address_id => $return_address_id, return_address => $return_address)

Update post return address

Update post return address

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::PostReturnAddressApi;
my $api_instance = WWW::SwaggerClient::PostReturnAddressApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $return_address_id = 56; # int | Return address ID
my $return_address = WWW::SwaggerClient::Object::Address->new(); # Address | Address model

eval { 
    my $result = $api_instance->post_return_addresses_by_return_address_id_put(return_address_id => $return_address_id, return_address => $return_address);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling PostReturnAddressApi->post_return_addresses_by_return_address_id_put: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **return_address_id** | **int**| Return address ID | 
 **return_address** | [**Address**](Address.md)| Address model | 

### Return type

**string**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_return_addresses_get**
> string post_return_addresses_get(page => $page, limit => $limit)

Get list of post return addresses

Get list of post return addresses

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::PostReturnAddressApi;
my $api_instance = WWW::SwaggerClient::PostReturnAddressApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $page = 56; # int | Page number
my $limit = 56; # int | Number of records per page

eval { 
    my $result = $api_instance->post_return_addresses_get(page => $page, limit => $limit);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling PostReturnAddressApi->post_return_addresses_get: $@\n";
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

# **post_return_addresses_post**
> string post_return_addresses_post(return_address => $return_address)

Create post return address

Create post return address

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::PostReturnAddressApi;
my $api_instance = WWW::SwaggerClient::PostReturnAddressApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $return_address = WWW::SwaggerClient::Object::Address->new(); # Address | Address model

eval { 
    my $result = $api_instance->post_return_addresses_post(return_address => $return_address);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling PostReturnAddressApi->post_return_addresses_post: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **return_address** | [**Address**](Address.md)| Address model | 

### Return type

**string**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

