# WWW::SwaggerClient::TimezonesApi

## Load the API package
```perl
use WWW::SwaggerClient::Object::TimezonesApi;
```

All URIs are relative to *https://rest.clicksend.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**timezones_get**](TimezonesApi.md#timezones_get) | **GET** /timezones | Get supported list of timezones.


# **timezones_get**
> string timezones_get(page => $page, limit => $limit)

Get supported list of timezones.

Get supported list of timezones.

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::TimezonesApi;
my $api_instance = WWW::SwaggerClient::TimezonesApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $page = 56; # int | Page number
my $limit = 56; # int | Number of records per page

eval { 
    my $result = $api_instance->timezones_get(page => $page, limit => $limit);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TimezonesApi->timezones_get: $@\n";
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

