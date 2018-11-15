# WWW::ClickSendClient::PostLetterApi

## Load the API package
```perl
use WWW::ClickSendClient::Object::PostLetterApi;
```

All URIs are relative to *https://rest.clicksend.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**post_letters_export_get**](PostLetterApi.md#post_letters_export_get) | **GET** /post/letters/export | export post letter history
[**post_letters_history_get**](PostLetterApi.md#post_letters_history_get) | **GET** /post/letters/history | Get all post letter history
[**post_letters_price_post**](PostLetterApi.md#post_letters_price_post) | **POST** /post/letters/price | Calculate post letter price
[**post_letters_send_post**](PostLetterApi.md#post_letters_send_post) | **POST** /post/letters/send | Send post letter


# **post_letters_export_get**
> string post_letters_export_get(filename => $filename)

export post letter history

export post letter history

### Example 
```perl
use Data::Dumper;
use WWW::ClickSendClient::PostLetterApi;
my $api_instance = WWW::ClickSendClient::PostLetterApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $filename = 'filename_example'; # string | Filename to export to

eval { 
    my $result = $api_instance->post_letters_export_get(filename => $filename);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling PostLetterApi->post_letters_export_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filename** | **string**| Filename to export to | 

### Return type

**string**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_letters_history_get**
> string post_letters_history_get(page => $page, limit => $limit)

Get all post letter history

Get all post letter history

### Example 
```perl
use Data::Dumper;
use WWW::ClickSendClient::PostLetterApi;
my $api_instance = WWW::ClickSendClient::PostLetterApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $page = 56; # int | Page number
my $limit = 56; # int | Number of records per page

eval { 
    my $result = $api_instance->post_letters_history_get(page => $page, limit => $limit);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling PostLetterApi->post_letters_history_get: $@\n";
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

# **post_letters_price_post**
> string post_letters_price_post(post_letter => $post_letter)

Calculate post letter price

Calculate post letter price

### Example 
```perl
use Data::Dumper;
use WWW::ClickSendClient::PostLetterApi;
my $api_instance = WWW::ClickSendClient::PostLetterApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $post_letter = WWW::ClickSendClient::Object::PostLetter->new(); # PostLetter | PostLetter model

eval { 
    my $result = $api_instance->post_letters_price_post(post_letter => $post_letter);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling PostLetterApi->post_letters_price_post: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **post_letter** | [**PostLetter**](PostLetter.md)| PostLetter model | 

### Return type

**string**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_letters_send_post**
> string post_letters_send_post(post_letter => $post_letter)

Send post letter

Send post letter

### Example 
```perl
use Data::Dumper;
use WWW::ClickSendClient::PostLetterApi;
my $api_instance = WWW::ClickSendClient::PostLetterApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $post_letter = WWW::ClickSendClient::Object::PostLetter->new(); # PostLetter | PostLetter model

eval { 
    my $result = $api_instance->post_letters_send_post(post_letter => $post_letter);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling PostLetterApi->post_letters_send_post: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **post_letter** | [**PostLetter**](PostLetter.md)| PostLetter model | 

### Return type

**string**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

