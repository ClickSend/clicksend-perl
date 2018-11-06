# WWW::ClickSendClient::TransferCreditApi

## Load the API package
```perl
use WWW::ClickSendClient::Object::TransferCreditApi;
```

All URIs are relative to *https://rest.clicksend.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**reseller_transfer_credit_put**](TransferCreditApi.md#reseller_transfer_credit_put) | **PUT** /reseller/transfer-credit | Transfer Credit


# **reseller_transfer_credit_put**
> string reseller_transfer_credit_put(reseller_account_transfer_credit => $reseller_account_transfer_credit)

Transfer Credit

Transfer Credit

### Example 
```perl
use Data::Dumper;
use WWW::ClickSendClient::TransferCreditApi;
my $api_instance = WWW::ClickSendClient::TransferCreditApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $reseller_account_transfer_credit = WWW::ClickSendClient::Object::ResellerAccountTransferCredit->new(); # ResellerAccountTransferCredit | ResellerAccountTransferCredit model

eval { 
    my $result = $api_instance->reseller_transfer_credit_put(reseller_account_transfer_credit => $reseller_account_transfer_credit);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TransferCreditApi->reseller_transfer_credit_put: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **reseller_account_transfer_credit** | [**ResellerAccountTransferCredit**](ResellerAccountTransferCredit.md)| ResellerAccountTransferCredit model | 

### Return type

**string**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

