# WWW::ClickSendClient::GlobalSendingApi

## Load the API package
```perl
use WWW::ClickSendClient::Object::GlobalSendingApi;
```

All URIs are relative to *https://rest.clicksend.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**list_countries_get**](GlobalSendingApi.md#list_countries_get) | **GET** /country-list | List of countries
[**user_countries_agree_post**](GlobalSendingApi.md#user_countries_agree_post) | **POST** /user-countries/agree | Agree to rules and regulation
[**user_countries_get**](GlobalSendingApi.md#user_countries_get) | **GET** /user-countries | Get Countries for Global Sending
[**user_countries_post**](GlobalSendingApi.md#user_countries_post) | **POST** /user-countries | Select Countries for Global Sending


# **list_countries_get**
> string list_countries_get()

List of countries

List of countries with IDs that can be used in selecting countries for Global sending.

### Example 
```perl
use Data::Dumper;
use WWW::ClickSendClient::GlobalSendingApi;
my $api_instance = WWW::ClickSendClient::GlobalSendingApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);


eval { 
    my $result = $api_instance->list_countries_get();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling GlobalSendingApi->list_countries_get: $@\n";
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

# **user_countries_agree_post**
> string user_countries_agree_post()

Agree to rules and regulation

To agree on rules and regulations of selected countries and confirm selection.

### Example 
```perl
use Data::Dumper;
use WWW::ClickSendClient::GlobalSendingApi;
my $api_instance = WWW::ClickSendClient::GlobalSendingApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);


eval { 
    my $result = $api_instance->user_countries_agree_post();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling GlobalSendingApi->user_countries_agree_post: $@\n";
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

# **user_countries_get**
> string user_countries_get()

Get Countries for Global Sending

Get the list of selected countries.

### Example 
```perl
use Data::Dumper;
use WWW::ClickSendClient::GlobalSendingApi;
my $api_instance = WWW::ClickSendClient::GlobalSendingApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);


eval { 
    my $result = $api_instance->user_countries_get();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling GlobalSendingApi->user_countries_get: $@\n";
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

# **user_countries_post**
> string user_countries_post(country_list_ids => $country_list_ids)

Select Countries for Global Sending

Use this endpoint to select countries that you intend to send sms / mms to. To remove / unselect a country, just remove the country id from the array in the payload.

### Example 
```perl
use Data::Dumper;
use WWW::ClickSendClient::GlobalSendingApi;
my $api_instance = WWW::ClickSendClient::GlobalSendingApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $country_list_ids = WWW::ClickSendClient::Object::CountryListIds->new(); # CountryListIds | Id of countr(ies) you want to select, you can get them from GET /country-list response

eval { 
    my $result = $api_instance->user_countries_post(country_list_ids => $country_list_ids);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling GlobalSendingApi->user_countries_post: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **country_list_ids** | [**CountryListIds**](CountryListIds.md)| Id of countr(ies) you want to select, you can get them from GET /country-list response | 

### Return type

**string**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

