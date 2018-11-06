# WWW::ClickSendClient::ContactApi

## Load the API package
```perl
use WWW::ClickSendClient::Object::ContactApi;
```

All URIs are relative to *https://rest.clicksend.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**lists_contacts_by_list_id_and_contact_id_delete**](ContactApi.md#lists_contacts_by_list_id_and_contact_id_delete) | **DELETE** /lists/{list_id}/contacts/{contact_id} | Delete a contact
[**lists_contacts_by_list_id_and_contact_id_get**](ContactApi.md#lists_contacts_by_list_id_and_contact_id_get) | **GET** /lists/{list_id}/contacts/{contact_id} | Get a specific contact
[**lists_contacts_by_list_id_and_contact_id_put**](ContactApi.md#lists_contacts_by_list_id_and_contact_id_put) | **PUT** /lists/{list_id}/contacts/{contact_id} | Update specific contact
[**lists_contacts_by_list_id_get**](ContactApi.md#lists_contacts_by_list_id_get) | **GET** /lists/{list_id}/contacts | Get all contacts in a list
[**lists_contacts_by_list_id_post**](ContactApi.md#lists_contacts_by_list_id_post) | **POST** /lists/{list_id}/contacts | Create new contact
[**lists_remove_opted_out_contacts_by_list_id_and_opt_out_list_id_put**](ContactApi.md#lists_remove_opted_out_contacts_by_list_id_and_opt_out_list_id_put) | **PUT** /lists/{list_id}/remove-opted-out-contacts/{opt_out_list_id} | Remove all opted out contacts
[**lists_transfer_contact_put**](ContactApi.md#lists_transfer_contact_put) | **PUT** /lists/{from_list_id}/contacts/{contact_id}/{to_list_id} | Transfer contact to another list


# **lists_contacts_by_list_id_and_contact_id_delete**
> string lists_contacts_by_list_id_and_contact_id_delete(list_id => $list_id, contact_id => $contact_id)

Delete a contact

Delete a contact

### Example 
```perl
use Data::Dumper;
use WWW::ClickSendClient::ContactApi;
my $api_instance = WWW::ClickSendClient::ContactApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $list_id = 56; # int | List ID
my $contact_id = 56; # int | Contact ID

eval { 
    my $result = $api_instance->lists_contacts_by_list_id_and_contact_id_delete(list_id => $list_id, contact_id => $contact_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ContactApi->lists_contacts_by_list_id_and_contact_id_delete: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **list_id** | **int**| List ID | 
 **contact_id** | **int**| Contact ID | 

### Return type

**string**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **lists_contacts_by_list_id_and_contact_id_get**
> string lists_contacts_by_list_id_and_contact_id_get(list_id => $list_id, contact_id => $contact_id)

Get a specific contact

Get a specific contact

### Example 
```perl
use Data::Dumper;
use WWW::ClickSendClient::ContactApi;
my $api_instance = WWW::ClickSendClient::ContactApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $list_id = 56; # int | Your contact list id you want to access.
my $contact_id = 56; # int | Your contact id you want to access.

eval { 
    my $result = $api_instance->lists_contacts_by_list_id_and_contact_id_get(list_id => $list_id, contact_id => $contact_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ContactApi->lists_contacts_by_list_id_and_contact_id_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **list_id** | **int**| Your contact list id you want to access. | 
 **contact_id** | **int**| Your contact id you want to access. | 

### Return type

**string**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **lists_contacts_by_list_id_and_contact_id_put**
> string lists_contacts_by_list_id_and_contact_id_put(list_id => $list_id, contact_id => $contact_id, contact => $contact)

Update specific contact

Update specific contact

### Example 
```perl
use Data::Dumper;
use WWW::ClickSendClient::ContactApi;
my $api_instance = WWW::ClickSendClient::ContactApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $list_id = 56; # int | Contact list id
my $contact_id = 56; # int | Contact ID
my $contact = WWW::ClickSendClient::Object::Contact->new(); # Contact | Contact model

eval { 
    my $result = $api_instance->lists_contacts_by_list_id_and_contact_id_put(list_id => $list_id, contact_id => $contact_id, contact => $contact);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ContactApi->lists_contacts_by_list_id_and_contact_id_put: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **list_id** | **int**| Contact list id | 
 **contact_id** | **int**| Contact ID | 
 **contact** | [**Contact**](Contact.md)| Contact model | 

### Return type

**string**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **lists_contacts_by_list_id_get**
> string lists_contacts_by_list_id_get(list_id => $list_id, page => $page, limit => $limit)

Get all contacts in a list

Get all contacts in a list

### Example 
```perl
use Data::Dumper;
use WWW::ClickSendClient::ContactApi;
my $api_instance = WWW::ClickSendClient::ContactApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $list_id = 56; # int | Contact list ID
my $page = 56; # int | Page number
my $limit = 56; # int | Number of records per page

eval { 
    my $result = $api_instance->lists_contacts_by_list_id_get(list_id => $list_id, page => $page, limit => $limit);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ContactApi->lists_contacts_by_list_id_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **list_id** | **int**| Contact list ID | 
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

# **lists_contacts_by_list_id_post**
> string lists_contacts_by_list_id_post(contact => $contact, list_id => $list_id, page => $page, limit => $limit)

Create new contact

Create new contact

### Example 
```perl
use Data::Dumper;
use WWW::ClickSendClient::ContactApi;
my $api_instance = WWW::ClickSendClient::ContactApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $contact = WWW::ClickSendClient::Object::Contact->new(); # Contact | Contact model
my $list_id = 56; # int | List id
my $page = 56; # int | Page number
my $limit = 56; # int | Number of records per page

eval { 
    my $result = $api_instance->lists_contacts_by_list_id_post(contact => $contact, list_id => $list_id, page => $page, limit => $limit);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ContactApi->lists_contacts_by_list_id_post: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contact** | [**Contact**](Contact.md)| Contact model | 
 **list_id** | **int**| List id | 
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

# **lists_remove_opted_out_contacts_by_list_id_and_opt_out_list_id_put**
> string lists_remove_opted_out_contacts_by_list_id_and_opt_out_list_id_put(list_id => $list_id, opt_out_list_id => $opt_out_list_id)

Remove all opted out contacts

Remove all opted out contacts

### Example 
```perl
use Data::Dumper;
use WWW::ClickSendClient::ContactApi;
my $api_instance = WWW::ClickSendClient::ContactApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $list_id = 56; # int | Your list id
my $opt_out_list_id = 56; # int | Your opt out list id

eval { 
    my $result = $api_instance->lists_remove_opted_out_contacts_by_list_id_and_opt_out_list_id_put(list_id => $list_id, opt_out_list_id => $opt_out_list_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ContactApi->lists_remove_opted_out_contacts_by_list_id_and_opt_out_list_id_put: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **list_id** | **int**| Your list id | 
 **opt_out_list_id** | **int**| Your opt out list id | 

### Return type

**string**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **lists_transfer_contact_put**
> string lists_transfer_contact_put(from_list_id => $from_list_id, contact_id => $contact_id, to_list_id => $to_list_id)

Transfer contact to another list

Transfer contact to another list

### Example 
```perl
use Data::Dumper;
use WWW::ClickSendClient::ContactApi;
my $api_instance = WWW::ClickSendClient::ContactApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $from_list_id = 56; # int | List ID for list that contains contact.
my $contact_id = 56; # int | Contact ID
my $to_list_id = 56; # int | List ID for list you want to transfer contact to.

eval { 
    my $result = $api_instance->lists_transfer_contact_put(from_list_id => $from_list_id, contact_id => $contact_id, to_list_id => $to_list_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ContactApi->lists_transfer_contact_put: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **from_list_id** | **int**| List ID for list that contains contact. | 
 **contact_id** | **int**| Contact ID | 
 **to_list_id** | **int**| List ID for list you want to transfer contact to. | 

### Return type

**string**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

