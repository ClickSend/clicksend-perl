# WWW::SwaggerClient::AccountRechargeApi

## Load the API package
```perl
use WWW::SwaggerClient::Object::AccountRechargeApi;
```

All URIs are relative to *https://rest.clicksend.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**recharge_credit_card_get**](AccountRechargeApi.md#recharge_credit_card_get) | **GET** /recharge/credit-card | Get Credit Card info
[**recharge_credit_card_put**](AccountRechargeApi.md#recharge_credit_card_put) | **PUT** /recharge/credit-card | Update credit card info
[**recharge_packages_get**](AccountRechargeApi.md#recharge_packages_get) | **GET** /recharge/packages | Get list of all packages
[**recharge_purchase_by_package_id_put**](AccountRechargeApi.md#recharge_purchase_by_package_id_put) | **PUT** /recharge/purchase/{package_id} | Purchase a package
[**recharge_transactions_by_transaction_id_get**](AccountRechargeApi.md#recharge_transactions_by_transaction_id_get) | **GET** /recharge/transactions/{transaction_id} | Get specific Transaction
[**recharge_transactions_get**](AccountRechargeApi.md#recharge_transactions_get) | **GET** /recharge/transactions | Purchase a package


# **recharge_credit_card_get**
> string recharge_credit_card_get()

Get Credit Card info

Get Credit Card info

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::AccountRechargeApi;
my $api_instance = WWW::SwaggerClient::AccountRechargeApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);


eval { 
    my $result = $api_instance->recharge_credit_card_get();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AccountRechargeApi->recharge_credit_card_get: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**string**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **recharge_credit_card_put**
> string recharge_credit_card_put(credit_card => $credit_card)

Update credit card info

Update credit card info

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::AccountRechargeApi;
my $api_instance = WWW::SwaggerClient::AccountRechargeApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $credit_card = WWW::SwaggerClient::Object::CreditCard->new(); # CreditCard | CreditCard model

eval { 
    my $result = $api_instance->recharge_credit_card_put(credit_card => $credit_card);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AccountRechargeApi->recharge_credit_card_put: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **credit_card** | [**CreditCard**](CreditCard.md)| CreditCard model | 

### Return type

**string**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **recharge_packages_get**
> string recharge_packages_get(country => $country)

Get list of all packages

Get list of all packages

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::AccountRechargeApi;
my $api_instance = WWW::SwaggerClient::AccountRechargeApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $country = 'country_example'; # string | Country code

eval { 
    my $result = $api_instance->recharge_packages_get(country => $country);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AccountRechargeApi->recharge_packages_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **country** | **string**| Country code | [optional] 

### Return type

**string**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **recharge_purchase_by_package_id_put**
> string recharge_purchase_by_package_id_put(package_id => $package_id)

Purchase a package

Purchase a package

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::AccountRechargeApi;
my $api_instance = WWW::SwaggerClient::AccountRechargeApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $package_id = 56; # int | ID of package to purchase

eval { 
    my $result = $api_instance->recharge_purchase_by_package_id_put(package_id => $package_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AccountRechargeApi->recharge_purchase_by_package_id_put: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **package_id** | **int**| ID of package to purchase | 

### Return type

**string**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **recharge_transactions_by_transaction_id_get**
> string recharge_transactions_by_transaction_id_get(transaction_id => $transaction_id)

Get specific Transaction

Get specific Transaction

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::AccountRechargeApi;
my $api_instance = WWW::SwaggerClient::AccountRechargeApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $transaction_id = 'transaction_id_example'; # string | ID of transaction to retrieve

eval { 
    my $result = $api_instance->recharge_transactions_by_transaction_id_get(transaction_id => $transaction_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AccountRechargeApi->recharge_transactions_by_transaction_id_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **transaction_id** | **string**| ID of transaction to retrieve | 

### Return type

**string**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **recharge_transactions_get**
> string recharge_transactions_get(page => $page, limit => $limit)

Purchase a package

Get all transactions

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::AccountRechargeApi;
my $api_instance = WWW::SwaggerClient::AccountRechargeApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $page = 56; # int | Page number
my $limit = 56; # int | Number of records per page

eval { 
    my $result = $api_instance->recharge_transactions_get(page => $page, limit => $limit);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AccountRechargeApi->recharge_transactions_get: $@\n";
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

