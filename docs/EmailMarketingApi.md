# WWW::ClickSendClient::EmailMarketingApi

## Load the API package
```perl
use WWW::ClickSendClient::Object::EmailMarketingApi;
```

All URIs are relative to *https://rest.clicksend.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**allowed_email_address_get**](EmailMarketingApi.md#allowed_email_address_get) | **GET** /email/addresses | Get all email addresses
[**allowed_email_address_post**](EmailMarketingApi.md#allowed_email_address_post) | **POST** /email/addresses | Create allowed Email Address
[**cancel_email_campaign_put**](EmailMarketingApi.md#cancel_email_campaign_put) | **PUT** /email-campaigns/{email_campaign_id}/cancel | Cancel email campaign
[**email_campaign_get**](EmailMarketingApi.md#email_campaign_get) | **GET** /email-campaigns/{email_campaign_id} | Get specific email campaign
[**email_campaign_history_export_get**](EmailMarketingApi.md#email_campaign_history_export_get) | **GET** /email-campaigns/{email_campaign_id}/history/export | Export specific email campaign history
[**email_campaign_history_get**](EmailMarketingApi.md#email_campaign_history_get) | **GET** /email-campaigns/{email_campaign_id}/history | Get specific email campaign history
[**email_campaign_post**](EmailMarketingApi.md#email_campaign_post) | **POST** /email-campaigns/send | Send email campaign
[**email_campaign_price_post**](EmailMarketingApi.md#email_campaign_price_post) | **POST** /email-campaigns/price | Calculate email campaign price
[**email_campaign_put**](EmailMarketingApi.md#email_campaign_put) | **PUT** /email-campaigns/{email_campaign_id} | Edit email campaign
[**email_campaigns_get**](EmailMarketingApi.md#email_campaigns_get) | **GET** /email-campaigns | Get all email campaigns
[**send_verification_token_get**](EmailMarketingApi.md#send_verification_token_get) | **PUT** /email/address-verify/{email_address_id}/send | Send verification token
[**specific_allowed_email_address_delete**](EmailMarketingApi.md#specific_allowed_email_address_delete) | **DELETE** /email/addresses/{email_address_id} | Delete specific email address
[**specific_allowed_email_address_get**](EmailMarketingApi.md#specific_allowed_email_address_get) | **GET** /email/addresses/{email_address_id} | Get specific email address
[**verify_allowed_email_address_get**](EmailMarketingApi.md#verify_allowed_email_address_get) | **PUT** /email/address-verify/{email_address_id}/verify/{activation_token} | Verify email address using verification token


# **allowed_email_address_get**
> string allowed_email_address_get(page => $page, limit => $limit)

Get all email addresses

Get all email addresses

### Example 
```perl
use Data::Dumper;
use WWW::ClickSendClient::EmailMarketingApi;
my $api_instance = WWW::ClickSendClient::EmailMarketingApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $page = 56; # int | Page number
my $limit = 56; # int | Number of records per page

eval { 
    my $result = $api_instance->allowed_email_address_get(page => $page, limit => $limit);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling EmailMarketingApi->allowed_email_address_get: $@\n";
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

# **allowed_email_address_post**
> string allowed_email_address_post(email_address => $email_address)

Create allowed Email Address

Create allowed Email Address

### Example 
```perl
use Data::Dumper;
use WWW::ClickSendClient::EmailMarketingApi;
my $api_instance = WWW::ClickSendClient::EmailMarketingApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $email_address = WWW::ClickSendClient::Object::EmailAddress->new(); # EmailAddress | 

eval { 
    my $result = $api_instance->allowed_email_address_post(email_address => $email_address);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling EmailMarketingApi->allowed_email_address_post: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email_address** | [**EmailAddress**](EmailAddress.md)|  | [optional] 

### Return type

**string**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cancel_email_campaign_put**
> string cancel_email_campaign_put(email_campaign_id => $email_campaign_id)

Cancel email campaign

Cancel email campaign

### Example 
```perl
use Data::Dumper;
use WWW::ClickSendClient::EmailMarketingApi;
my $api_instance = WWW::ClickSendClient::EmailMarketingApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $email_campaign_id = 56; # int | Allowed email campaign id

eval { 
    my $result = $api_instance->cancel_email_campaign_put(email_campaign_id => $email_campaign_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling EmailMarketingApi->cancel_email_campaign_put: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email_campaign_id** | **int**| Allowed email campaign id | 

### Return type

**string**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **email_campaign_get**
> string email_campaign_get(email_campaign_id => $email_campaign_id)

Get specific email campaign

Get specific email campaign

### Example 
```perl
use Data::Dumper;
use WWW::ClickSendClient::EmailMarketingApi;
my $api_instance = WWW::ClickSendClient::EmailMarketingApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $email_campaign_id = 56; # int | Allowed email campaign id

eval { 
    my $result = $api_instance->email_campaign_get(email_campaign_id => $email_campaign_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling EmailMarketingApi->email_campaign_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email_campaign_id** | **int**| Allowed email campaign id | 

### Return type

**string**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **email_campaign_history_export_get**
> string email_campaign_history_export_get(email_campaign_id => $email_campaign_id, date_from => $date_from, date_to => $date_to)

Export specific email campaign history

Export specific email campaign history

### Example 
```perl
use Data::Dumper;
use WWW::ClickSendClient::EmailMarketingApi;
my $api_instance = WWW::ClickSendClient::EmailMarketingApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $email_campaign_id = 56; # int | Allowed email campaign id
my $date_from = 56; # int | Start date
my $date_to = 56; # int | End date

eval { 
    my $result = $api_instance->email_campaign_history_export_get(email_campaign_id => $email_campaign_id, date_from => $date_from, date_to => $date_to);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling EmailMarketingApi->email_campaign_history_export_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email_campaign_id** | **int**| Allowed email campaign id | 
 **date_from** | **int**| Start date | [optional] 
 **date_to** | **int**| End date | [optional] 

### Return type

**string**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **email_campaign_history_get**
> string email_campaign_history_get(email_campaign_id => $email_campaign_id, date_from => $date_from, date_to => $date_to, page => $page, limit => $limit)

Get specific email campaign history

Get specific email campaign history

### Example 
```perl
use Data::Dumper;
use WWW::ClickSendClient::EmailMarketingApi;
my $api_instance = WWW::ClickSendClient::EmailMarketingApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $email_campaign_id = 56; # int | Allowed email campaign id
my $date_from = 56; # int | Start date
my $date_to = 56; # int | End date
my $page = 56; # int | Page number
my $limit = 56; # int | Number of records per page

eval { 
    my $result = $api_instance->email_campaign_history_get(email_campaign_id => $email_campaign_id, date_from => $date_from, date_to => $date_to, page => $page, limit => $limit);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling EmailMarketingApi->email_campaign_history_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email_campaign_id** | **int**| Allowed email campaign id | 
 **date_from** | **int**| Start date | [optional] 
 **date_to** | **int**| End date | [optional] 
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

# **email_campaign_post**
> string email_campaign_post(email_campaign => $email_campaign)

Send email campaign

Send email campaign

### Example 
```perl
use Data::Dumper;
use WWW::ClickSendClient::EmailMarketingApi;
my $api_instance = WWW::ClickSendClient::EmailMarketingApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $email_campaign = WWW::ClickSendClient::Object::EmailCampaign->new(); # EmailCampaign | Email model

eval { 
    my $result = $api_instance->email_campaign_post(email_campaign => $email_campaign);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling EmailMarketingApi->email_campaign_post: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email_campaign** | [**EmailCampaign**](EmailCampaign.md)| Email model | 

### Return type

**string**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **email_campaign_price_post**
> string email_campaign_price_post(email_campaign => $email_campaign)

Calculate email campaign price

Calculate email campaign price

### Example 
```perl
use Data::Dumper;
use WWW::ClickSendClient::EmailMarketingApi;
my $api_instance = WWW::ClickSendClient::EmailMarketingApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $email_campaign = WWW::ClickSendClient::Object::EmailCampaign->new(); # EmailCampaign | Email model

eval { 
    my $result = $api_instance->email_campaign_price_post(email_campaign => $email_campaign);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling EmailMarketingApi->email_campaign_price_post: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email_campaign** | [**EmailCampaign**](EmailCampaign.md)| Email model | 

### Return type

**string**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **email_campaign_put**
> string email_campaign_put(email_campaign_id => $email_campaign_id, email_campaign => $email_campaign)

Edit email campaign

Edit email campaign

### Example 
```perl
use Data::Dumper;
use WWW::ClickSendClient::EmailMarketingApi;
my $api_instance = WWW::ClickSendClient::EmailMarketingApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $email_campaign_id = 56; # int | Allowed email campaign id
my $email_campaign = WWW::ClickSendClient::Object::EmailCampaign->new(); # EmailCampaign | Email model

eval { 
    my $result = $api_instance->email_campaign_put(email_campaign_id => $email_campaign_id, email_campaign => $email_campaign);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling EmailMarketingApi->email_campaign_put: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email_campaign_id** | **int**| Allowed email campaign id | 
 **email_campaign** | [**EmailCampaign**](EmailCampaign.md)| Email model | 

### Return type

**string**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **email_campaigns_get**
> string email_campaigns_get(page => $page, limit => $limit)

Get all email campaigns

Get all email campaigns

### Example 
```perl
use Data::Dumper;
use WWW::ClickSendClient::EmailMarketingApi;
my $api_instance = WWW::ClickSendClient::EmailMarketingApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $page = 56; # int | Page number
my $limit = 56; # int | Number of records per page

eval { 
    my $result = $api_instance->email_campaigns_get(page => $page, limit => $limit);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling EmailMarketingApi->email_campaigns_get: $@\n";
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

# **send_verification_token_get**
> string send_verification_token_get(email_address_id => $email_address_id)

Send verification token

Send verification token

### Example 
```perl
use Data::Dumper;
use WWW::ClickSendClient::EmailMarketingApi;
my $api_instance = WWW::ClickSendClient::EmailMarketingApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $email_address_id = 56; # int | Allowed email address id

eval { 
    my $result = $api_instance->send_verification_token_get(email_address_id => $email_address_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling EmailMarketingApi->send_verification_token_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email_address_id** | **int**| Allowed email address id | 

### Return type

**string**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **specific_allowed_email_address_delete**
> string specific_allowed_email_address_delete(email_address_id => $email_address_id)

Delete specific email address

Delete specific email address

### Example 
```perl
use Data::Dumper;
use WWW::ClickSendClient::EmailMarketingApi;
my $api_instance = WWW::ClickSendClient::EmailMarketingApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $email_address_id = 56; # int | Allowed email address id

eval { 
    my $result = $api_instance->specific_allowed_email_address_delete(email_address_id => $email_address_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling EmailMarketingApi->specific_allowed_email_address_delete: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email_address_id** | **int**| Allowed email address id | 

### Return type

**string**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **specific_allowed_email_address_get**
> string specific_allowed_email_address_get(email_address_id => $email_address_id)

Get specific email address

Get specific email address

### Example 
```perl
use Data::Dumper;
use WWW::ClickSendClient::EmailMarketingApi;
my $api_instance = WWW::ClickSendClient::EmailMarketingApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $email_address_id = 56; # int | Allowed email address id

eval { 
    my $result = $api_instance->specific_allowed_email_address_get(email_address_id => $email_address_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling EmailMarketingApi->specific_allowed_email_address_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email_address_id** | **int**| Allowed email address id | 

### Return type

**string**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **verify_allowed_email_address_get**
> string verify_allowed_email_address_get(email_address_id => $email_address_id, activation_token => $activation_token)

Verify email address using verification token

Verify email address using verification token

### Example 
```perl
use Data::Dumper;
use WWW::ClickSendClient::EmailMarketingApi;
my $api_instance = WWW::ClickSendClient::EmailMarketingApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $email_address_id = 56; # int | Allowed email address id
my $activation_token = 'activation_token_example'; # string | Your activation token.

eval { 
    my $result = $api_instance->verify_allowed_email_address_get(email_address_id => $email_address_id, activation_token => $activation_token);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling EmailMarketingApi->verify_allowed_email_address_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email_address_id** | **int**| Allowed email address id | 
 **activation_token** | **string**| Your activation token. | 

### Return type

**string**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

