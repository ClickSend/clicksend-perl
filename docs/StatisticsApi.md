# WWW::ClickSendClient::StatisticsApi

## Load the API package
```perl
use WWW::ClickSendClient::Object::StatisticsApi;
```

All URIs are relative to *https://rest.clicksend.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**statistics_sms_get**](StatisticsApi.md#statistics_sms_get) | **GET** /statistics/sms | Get sms statistics
[**statistics_voice_get**](StatisticsApi.md#statistics_voice_get) | **GET** /statistics/voice | Get voice statistics


# **statistics_sms_get**
> string statistics_sms_get()

Get sms statistics

Get sms statistics

### Example 
```perl
use Data::Dumper;
use WWW::ClickSendClient::StatisticsApi;
my $api_instance = WWW::ClickSendClient::StatisticsApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);


eval { 
    my $result = $api_instance->statistics_sms_get();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling StatisticsApi->statistics_sms_get: $@\n";
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

# **statistics_voice_get**
> string statistics_voice_get()

Get voice statistics

Get voice statistics

### Example 
```perl
use Data::Dumper;
use WWW::ClickSendClient::StatisticsApi;
my $api_instance = WWW::ClickSendClient::StatisticsApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);


eval { 
    my $result = $api_instance->statistics_voice_get();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling StatisticsApi->statistics_voice_get: $@\n";
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

