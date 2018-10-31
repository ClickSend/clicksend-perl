# WWW::SwaggerClient::ReferralAccountApi

## Load the API package
```perl
use WWW::SwaggerClient::Object::ReferralAccountApi;
```

All URIs are relative to *https://rest.clicksend.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**referral_accounts_get**](ReferralAccountApi.md#referral_accounts_get) | **GET** /referral/accounts | Get all referral accounts


# **referral_accounts_get**
> string referral_accounts_get(page => $page, limit => $limit)

Get all referral accounts

Get all referral accounts

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::ReferralAccountApi;
my $api_instance = WWW::SwaggerClient::ReferralAccountApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $page = 56; # int | Page number
my $limit = 56; # int | Number of records per page

eval { 
    my $result = $api_instance->referral_accounts_get(page => $page, limit => $limit);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ReferralAccountApi->referral_accounts_get: $@\n";
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

