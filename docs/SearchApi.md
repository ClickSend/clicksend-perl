# WWW::ClickSendClient::SearchApi

## Load the API package
```perl
use WWW::ClickSendClient::Object::SearchApi;
```

All URIs are relative to *https://rest.clicksend.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**search_contacts_lists_get**](SearchApi.md#search_contacts_lists_get) | **GET** /search/contacts-lists | Get list of searched contact list


# **search_contacts_lists_get**
> string search_contacts_lists_get(q => $q, page => $page, limit => $limit)

Get list of searched contact list

Get list of searched contact list

### Example 
```perl
use Data::Dumper;
use WWW::ClickSendClient::SearchApi;
my $api_instance = WWW::ClickSendClient::SearchApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $q = 'q_example'; # string | Your keyword or query.
my $page = 56; # int | Page number
my $limit = 56; # int | Number of records per page

eval { 
    my $result = $api_instance->search_contacts_lists_get(q => $q, page => $page, limit => $limit);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SearchApi->search_contacts_lists_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **string**| Your keyword or query. | 
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

