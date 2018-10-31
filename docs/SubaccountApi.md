# WWW::SwaggerClient::SubaccountApi

## Load the API package
```perl
use WWW::SwaggerClient::Object::SubaccountApi;
```

All URIs are relative to *https://rest.clicksend.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**subaccounts_by_subaccount_id_delete**](SubaccountApi.md#subaccounts_by_subaccount_id_delete) | **DELETE** /subaccounts/{subaccount_id} | Delete a subaccount
[**subaccounts_by_subaccount_id_get**](SubaccountApi.md#subaccounts_by_subaccount_id_get) | **GET** /subaccounts/{subaccount_id} | Get specific subaccount
[**subaccounts_by_subaccount_id_put**](SubaccountApi.md#subaccounts_by_subaccount_id_put) | **PUT** /subaccounts/{subaccount_id} | Update subaccount
[**subaccounts_get**](SubaccountApi.md#subaccounts_get) | **GET** /subaccounts | Get all subaccounts
[**subaccounts_post**](SubaccountApi.md#subaccounts_post) | **POST** /subaccounts | Create new subaccount
[**subaccounts_regen_api_key_by_subaccount_id_put**](SubaccountApi.md#subaccounts_regen_api_key_by_subaccount_id_put) | **PUT** /subaccounts/{subaccount_id}/regen-api-key | Regenerate an API Key


# **subaccounts_by_subaccount_id_delete**
> string subaccounts_by_subaccount_id_delete(subaccount_id => $subaccount_id)

Delete a subaccount

Delete a subaccount

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::SubaccountApi;
my $api_instance = WWW::SwaggerClient::SubaccountApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $subaccount_id = 56; # int | ID of subaccount to delete

eval { 
    my $result = $api_instance->subaccounts_by_subaccount_id_delete(subaccount_id => $subaccount_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SubaccountApi->subaccounts_by_subaccount_id_delete: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subaccount_id** | **int**| ID of subaccount to delete | 

### Return type

**string**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **subaccounts_by_subaccount_id_get**
> string subaccounts_by_subaccount_id_get(subaccount_id => $subaccount_id)

Get specific subaccount

Get specific subaccount

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::SubaccountApi;
my $api_instance = WWW::SwaggerClient::SubaccountApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $subaccount_id = 56; # int | ID of subaccount to get

eval { 
    my $result = $api_instance->subaccounts_by_subaccount_id_get(subaccount_id => $subaccount_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SubaccountApi->subaccounts_by_subaccount_id_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subaccount_id** | **int**| ID of subaccount to get | 

### Return type

**string**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **subaccounts_by_subaccount_id_put**
> string subaccounts_by_subaccount_id_put(subaccount_id => $subaccount_id, subaccount => $subaccount)

Update subaccount

Update subaccount

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::SubaccountApi;
my $api_instance = WWW::SwaggerClient::SubaccountApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $subaccount_id = 56; # int | ID of subaccount to update
my $subaccount = WWW::SwaggerClient::Object::Subaccount->new(); # Subaccount | Subaccount model

eval { 
    my $result = $api_instance->subaccounts_by_subaccount_id_put(subaccount_id => $subaccount_id, subaccount => $subaccount);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SubaccountApi->subaccounts_by_subaccount_id_put: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subaccount_id** | **int**| ID of subaccount to update | 
 **subaccount** | [**Subaccount**](Subaccount.md)| Subaccount model | 

### Return type

**string**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **subaccounts_get**
> string subaccounts_get(page => $page, limit => $limit)

Get all subaccounts

Get all subaccounts

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::SubaccountApi;
my $api_instance = WWW::SwaggerClient::SubaccountApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $page = 56; # int | Page number
my $limit = 56; # int | Number of records per page

eval { 
    my $result = $api_instance->subaccounts_get(page => $page, limit => $limit);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SubaccountApi->subaccounts_get: $@\n";
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

# **subaccounts_post**
> string subaccounts_post(subaccount => $subaccount)

Create new subaccount

Create new subaccount

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::SubaccountApi;
my $api_instance = WWW::SwaggerClient::SubaccountApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $subaccount = WWW::SwaggerClient::Object::Subaccount->new(); # Subaccount | Subaccount model

eval { 
    my $result = $api_instance->subaccounts_post(subaccount => $subaccount);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SubaccountApi->subaccounts_post: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subaccount** | [**Subaccount**](Subaccount.md)| Subaccount model | 

### Return type

**string**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **subaccounts_regen_api_key_by_subaccount_id_put**
> string subaccounts_regen_api_key_by_subaccount_id_put(subaccount_id => $subaccount_id)

Regenerate an API Key

Regenerate an API Key

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::SubaccountApi;
my $api_instance = WWW::SwaggerClient::SubaccountApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $subaccount_id = 56; # int | ID of subaccount to regenerate API key for

eval { 
    my $result = $api_instance->subaccounts_regen_api_key_by_subaccount_id_put(subaccount_id => $subaccount_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SubaccountApi->subaccounts_regen_api_key_by_subaccount_id_put: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subaccount_id** | **int**| ID of subaccount to regenerate API key for | 

### Return type

**string**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

