# WWW::ClickSendClient::MmsCampaignApi

## Load the API package
```perl
use WWW::ClickSendClient::Object::MmsCampaignApi;
```

All URIs are relative to *https://rest.clicksend.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**mms_campaign_by_mms_campaign_id_get**](MmsCampaignApi.md#mms_campaign_by_mms_campaign_id_get) | **GET** /mms-campaign/{mms_campaign_id} | Get specific mms campaign
[**mms_campaigns_by_mms_campaign_id_put**](MmsCampaignApi.md#mms_campaigns_by_mms_campaign_id_put) | **PUT** /mms-campaigns/{mms_campaign_id} | Update mms campaign
[**mms_campaigns_cancel_by_mms_campaign_id_put**](MmsCampaignApi.md#mms_campaigns_cancel_by_mms_campaign_id_put) | **PUT** /mms-campaigns/{mms_campaign_id}/cancel | Cancel mms campaign
[**mms_campaigns_get**](MmsCampaignApi.md#mms_campaigns_get) | **GET** /mms-campaigns | Get list of mms campaigns
[**mms_campaigns_price_post**](MmsCampaignApi.md#mms_campaigns_price_post) | **POST** /mms-campaigns/price | Calculate price for mms campaign
[**mms_campaigns_send_post**](MmsCampaignApi.md#mms_campaigns_send_post) | **POST** /mms-campaigns/send | Create mms campaign


# **mms_campaign_by_mms_campaign_id_get**
> string mms_campaign_by_mms_campaign_id_get(mms_campaign_id => $mms_campaign_id)

Get specific mms campaign

Get specific mms campaign

### Example 
```perl
use Data::Dumper;
use WWW::ClickSendClient::MmsCampaignApi;
my $api_instance = WWW::ClickSendClient::MmsCampaignApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $mms_campaign_id = 56; # int | ID of MMS campaign to retrieve

eval { 
    my $result = $api_instance->mms_campaign_by_mms_campaign_id_get(mms_campaign_id => $mms_campaign_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MmsCampaignApi->mms_campaign_by_mms_campaign_id_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mms_campaign_id** | **int**| ID of MMS campaign to retrieve | 

### Return type

**string**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mms_campaigns_by_mms_campaign_id_put**
> string mms_campaigns_by_mms_campaign_id_put(mms_campaign_id => $mms_campaign_id, campaign => $campaign)

Update mms campaign

Update mms campaign

### Example 
```perl
use Data::Dumper;
use WWW::ClickSendClient::MmsCampaignApi;
my $api_instance = WWW::ClickSendClient::MmsCampaignApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $mms_campaign_id = 56; # int | ID of MMS campaign to update
my $campaign = WWW::ClickSendClient::Object::MmsCampaign->new(); # MmsCampaign | MmsCampaign model

eval { 
    my $result = $api_instance->mms_campaigns_by_mms_campaign_id_put(mms_campaign_id => $mms_campaign_id, campaign => $campaign);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MmsCampaignApi->mms_campaigns_by_mms_campaign_id_put: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mms_campaign_id** | **int**| ID of MMS campaign to update | 
 **campaign** | [**MmsCampaign**](MmsCampaign.md)| MmsCampaign model | 

### Return type

**string**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mms_campaigns_cancel_by_mms_campaign_id_put**
> string mms_campaigns_cancel_by_mms_campaign_id_put(mms_campaign_id => $mms_campaign_id)

Cancel mms campaign

Cancel sms campaign

### Example 
```perl
use Data::Dumper;
use WWW::ClickSendClient::MmsCampaignApi;
my $api_instance = WWW::ClickSendClient::MmsCampaignApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $mms_campaign_id = 56; # int | ID of MMS Campaign to cancel

eval { 
    my $result = $api_instance->mms_campaigns_cancel_by_mms_campaign_id_put(mms_campaign_id => $mms_campaign_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MmsCampaignApi->mms_campaigns_cancel_by_mms_campaign_id_put: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mms_campaign_id** | **int**| ID of MMS Campaign to cancel | 

### Return type

**string**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mms_campaigns_get**
> string mms_campaigns_get(page => $page, limit => $limit)

Get list of mms campaigns

Get list of mms campaigns

### Example 
```perl
use Data::Dumper;
use WWW::ClickSendClient::MmsCampaignApi;
my $api_instance = WWW::ClickSendClient::MmsCampaignApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $page = 56; # int | Page number
my $limit = 56; # int | Number of records per page

eval { 
    my $result = $api_instance->mms_campaigns_get(page => $page, limit => $limit);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MmsCampaignApi->mms_campaigns_get: $@\n";
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

# **mms_campaigns_price_post**
> string mms_campaigns_price_post(campaign => $campaign)

Calculate price for mms campaign

Calculate price for sms campaign

### Example 
```perl
use Data::Dumper;
use WWW::ClickSendClient::MmsCampaignApi;
my $api_instance = WWW::ClickSendClient::MmsCampaignApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $campaign = WWW::ClickSendClient::Object::MmsCampaign->new(); # MmsCampaign | MmsCampaign model

eval { 
    my $result = $api_instance->mms_campaigns_price_post(campaign => $campaign);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MmsCampaignApi->mms_campaigns_price_post: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **campaign** | [**MmsCampaign**](MmsCampaign.md)| MmsCampaign model | 

### Return type

**string**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mms_campaigns_send_post**
> string mms_campaigns_send_post(campaign => $campaign)

Create mms campaign

Create mms campaign

### Example 
```perl
use Data::Dumper;
use WWW::ClickSendClient::MmsCampaignApi;
my $api_instance = WWW::ClickSendClient::MmsCampaignApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $campaign = WWW::ClickSendClient::Object::MmsCampaign->new(); # MmsCampaign | MmsCampaign model

eval { 
    my $result = $api_instance->mms_campaigns_send_post(campaign => $campaign);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MmsCampaignApi->mms_campaigns_send_post: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **campaign** | [**MmsCampaign**](MmsCampaign.md)| MmsCampaign model | 

### Return type

**string**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

