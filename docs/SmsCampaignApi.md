# WWW::SwaggerClient::SmsCampaignApi

## Load the API package
```perl
use WWW::SwaggerClient::Object::SmsCampaignApi;
```

All URIs are relative to *https://rest.clicksend.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**sms_campaign_by_sms_campaign_id_get**](SmsCampaignApi.md#sms_campaign_by_sms_campaign_id_get) | **GET** /sms-campaign/{sms_campaign_id} | Get specific sms campaign
[**sms_campaigns_by_sms_campaign_id_put**](SmsCampaignApi.md#sms_campaigns_by_sms_campaign_id_put) | **PUT** /sms-campaigns/{sms_campaign_id} | Update sms campaign
[**sms_campaigns_cancel_by_sms_campaign_id_put**](SmsCampaignApi.md#sms_campaigns_cancel_by_sms_campaign_id_put) | **PUT** /sms-campaigns/{sms_campaign_id}/cancel | Cancel sms campaign
[**sms_campaigns_get**](SmsCampaignApi.md#sms_campaigns_get) | **GET** /sms-campaigns | Get list of sms campaigns
[**sms_campaigns_price_post**](SmsCampaignApi.md#sms_campaigns_price_post) | **POST** /sms-campaigns/price | Calculate price for sms campaign
[**sms_campaigns_send_post**](SmsCampaignApi.md#sms_campaigns_send_post) | **POST** /sms-campaigns/send | Create sms campaign


# **sms_campaign_by_sms_campaign_id_get**
> string sms_campaign_by_sms_campaign_id_get(sms_campaign_id => $sms_campaign_id)

Get specific sms campaign

Get specific sms campaign

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::SmsCampaignApi;
my $api_instance = WWW::SwaggerClient::SmsCampaignApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $sms_campaign_id = 56; # int | ID of SMS campaign to retrieve

eval { 
    my $result = $api_instance->sms_campaign_by_sms_campaign_id_get(sms_campaign_id => $sms_campaign_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SmsCampaignApi->sms_campaign_by_sms_campaign_id_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sms_campaign_id** | **int**| ID of SMS campaign to retrieve | 

### Return type

**string**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sms_campaigns_by_sms_campaign_id_put**
> string sms_campaigns_by_sms_campaign_id_put(sms_campaign_id => $sms_campaign_id, campaign => $campaign)

Update sms campaign

Update sms campaign

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::SmsCampaignApi;
my $api_instance = WWW::SwaggerClient::SmsCampaignApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $sms_campaign_id = 56; # int | ID of SMS campaign to update
my $campaign = WWW::SwaggerClient::Object::SmsCampaign->new(); # SmsCampaign | SmsCampaign model

eval { 
    my $result = $api_instance->sms_campaigns_by_sms_campaign_id_put(sms_campaign_id => $sms_campaign_id, campaign => $campaign);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SmsCampaignApi->sms_campaigns_by_sms_campaign_id_put: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sms_campaign_id** | **int**| ID of SMS campaign to update | 
 **campaign** | [**SmsCampaign**](SmsCampaign.md)| SmsCampaign model | 

### Return type

**string**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sms_campaigns_cancel_by_sms_campaign_id_put**
> string sms_campaigns_cancel_by_sms_campaign_id_put(sms_campaign_id => $sms_campaign_id)

Cancel sms campaign

Cancel sms campaign

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::SmsCampaignApi;
my $api_instance = WWW::SwaggerClient::SmsCampaignApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $sms_campaign_id = 56; # int | ID of SMS Campaign to cancel

eval { 
    my $result = $api_instance->sms_campaigns_cancel_by_sms_campaign_id_put(sms_campaign_id => $sms_campaign_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SmsCampaignApi->sms_campaigns_cancel_by_sms_campaign_id_put: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sms_campaign_id** | **int**| ID of SMS Campaign to cancel | 

### Return type

**string**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sms_campaigns_get**
> string sms_campaigns_get(page => $page, limit => $limit)

Get list of sms campaigns

Get list of sms campaigns

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::SmsCampaignApi;
my $api_instance = WWW::SwaggerClient::SmsCampaignApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $page = 56; # int | Page number
my $limit = 56; # int | Number of records per page

eval { 
    my $result = $api_instance->sms_campaigns_get(page => $page, limit => $limit);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SmsCampaignApi->sms_campaigns_get: $@\n";
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

# **sms_campaigns_price_post**
> string sms_campaigns_price_post(campaign => $campaign)

Calculate price for sms campaign

Calculate price for sms campaign

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::SmsCampaignApi;
my $api_instance = WWW::SwaggerClient::SmsCampaignApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $campaign = WWW::SwaggerClient::Object::SmsCampaign->new(); # SmsCampaign | SmsCampaign model

eval { 
    my $result = $api_instance->sms_campaigns_price_post(campaign => $campaign);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SmsCampaignApi->sms_campaigns_price_post: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **campaign** | [**SmsCampaign**](SmsCampaign.md)| SmsCampaign model | 

### Return type

**string**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sms_campaigns_send_post**
> string sms_campaigns_send_post(campaign => $campaign)

Create sms campaign

Create sms campaign

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::SmsCampaignApi;
my $api_instance = WWW::SwaggerClient::SmsCampaignApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $campaign = WWW::SwaggerClient::Object::SmsCampaign->new(); # SmsCampaign | SmsCampaign model

eval { 
    my $result = $api_instance->sms_campaigns_send_post(campaign => $campaign);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SmsCampaignApi->sms_campaigns_send_post: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **campaign** | [**SmsCampaign**](SmsCampaign.md)| SmsCampaign model | 

### Return type

**string**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

