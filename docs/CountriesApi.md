# WWW::ClickSendClient::CountriesApi

## Load the API package
```perl
use WWW::ClickSendClient::Object::CountriesApi;
```

All URIs are relative to *https://rest.clicksend.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**countries_get**](CountriesApi.md#countries_get) | **GET** /countries | Get all country codes


# **countries_get**
> string countries_get()

Get all country codes

Get all countries

### Example 
```perl
use Data::Dumper;
use WWW::ClickSendClient::CountriesApi;
my $api_instance = WWW::ClickSendClient::CountriesApi->new(
);


eval { 
    my $result = $api_instance->countries_get();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CountriesApi->countries_get: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**string**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

