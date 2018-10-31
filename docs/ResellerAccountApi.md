# WWW::SwaggerClient::ResellerAccountApi

## Load the API package
```perl
use WWW::SwaggerClient::Object::ResellerAccountApi;
```

All URIs are relative to *https://rest.clicksend.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**reseller_accounts_by_client_user_id_get**](ResellerAccountApi.md#reseller_accounts_by_client_user_id_get) | **GET** /reseller/accounts/{client_user_id} | Get Reseller clients Account
[**reseller_accounts_by_client_user_id_put**](ResellerAccountApi.md#reseller_accounts_by_client_user_id_put) | **PUT** /reseller/accounts/{client_user_id} | Update Reseller clients Account
[**reseller_accounts_get**](ResellerAccountApi.md#reseller_accounts_get) | **GET** /reseller/accounts | Get list of reseller accounts
[**reseller_accounts_post**](ResellerAccountApi.md#reseller_accounts_post) | **POST** /reseller/accounts | Create reseller account


# **reseller_accounts_by_client_user_id_get**
> string reseller_accounts_by_client_user_id_get(client_user_id => $client_user_id)

Get Reseller clients Account

Get Reseller clients Account

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::ResellerAccountApi;
my $api_instance = WWW::SwaggerClient::ResellerAccountApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $client_user_id = 56; # int | User ID of client

eval { 
    my $result = $api_instance->reseller_accounts_by_client_user_id_get(client_user_id => $client_user_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ResellerAccountApi->reseller_accounts_by_client_user_id_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **client_user_id** | **int**| User ID of client | 

### Return type

**string**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reseller_accounts_by_client_user_id_put**
> string reseller_accounts_by_client_user_id_put(client_user_id => $client_user_id, reseller_account => $reseller_account)

Update Reseller clients Account

Update Reseller clients Account

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::ResellerAccountApi;
my $api_instance = WWW::SwaggerClient::ResellerAccountApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $client_user_id = 56; # int | User ID of client
my $reseller_account = WWW::SwaggerClient::Object::ResellerAccount->new(); # ResellerAccount | ResellerAccount model

eval { 
    my $result = $api_instance->reseller_accounts_by_client_user_id_put(client_user_id => $client_user_id, reseller_account => $reseller_account);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ResellerAccountApi->reseller_accounts_by_client_user_id_put: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **client_user_id** | **int**| User ID of client | 
 **reseller_account** | [**ResellerAccount**](ResellerAccount.md)| ResellerAccount model | 

### Return type

**string**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reseller_accounts_get**
> string reseller_accounts_get(page => $page, limit => $limit)

Get list of reseller accounts

Get list of reseller accounts

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::ResellerAccountApi;
my $api_instance = WWW::SwaggerClient::ResellerAccountApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $page = 56; # int | Page number
my $limit = 56; # int | Number of records per page

eval { 
    my $result = $api_instance->reseller_accounts_get(page => $page, limit => $limit);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ResellerAccountApi->reseller_accounts_get: $@\n";
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

# **reseller_accounts_post**
> string reseller_accounts_post(reseller_account => $reseller_account)

Create reseller account

Create reseller account

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::ResellerAccountApi;
my $api_instance = WWW::SwaggerClient::ResellerAccountApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $reseller_account = WWW::SwaggerClient::Object::ResellerAccount->new(); # ResellerAccount | ResellerAccount model

eval { 
    my $result = $api_instance->reseller_accounts_post(reseller_account => $reseller_account);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ResellerAccountApi->reseller_accounts_post: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **reseller_account** | [**ResellerAccount**](ResellerAccount.md)| ResellerAccount model | 

### Return type

**string**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

