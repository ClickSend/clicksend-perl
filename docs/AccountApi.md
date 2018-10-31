# WWW::SwaggerClient::AccountApi

## Load the API package
```perl
use WWW::SwaggerClient::Object::AccountApi;
```

All URIs are relative to *https://rest.clicksend.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**account_get**](AccountApi.md#account_get) | **GET** /account | Get account information
[**account_post**](AccountApi.md#account_post) | **POST** /account | Create a new account
[**account_verify_send_put**](AccountApi.md#account_verify_send_put) | **PUT** /account-verify/send | Send account activation token
[**account_verify_verify_by_activation_token_put**](AccountApi.md#account_verify_verify_by_activation_token_put) | **PUT** /account-verify/verify/{activation_token} | Verify new account
[**forgot_password_put**](AccountApi.md#forgot_password_put) | **PUT** /forgot-password | Forgot password
[**forgot_password_verify_put**](AccountApi.md#forgot_password_verify_put) | **PUT** /forgot-password/verify | Verify forgot password
[**forgot_username_put**](AccountApi.md#forgot_username_put) | **PUT** /forgot-username | Forgot username


# **account_get**
> string account_get()

Get account information

Get account details

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::AccountApi;
my $api_instance = WWW::SwaggerClient::AccountApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);


eval { 
    my $result = $api_instance->account_get();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AccountApi->account_get: $@\n";
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

# **account_post**
> string account_post(account => $account)

Create a new account

Create An Account

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::AccountApi;
my $api_instance = WWW::SwaggerClient::AccountApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $account = WWW::SwaggerClient::Object::Account->new(); # Account | Account model

eval { 
    my $result = $api_instance->account_post(account => $account);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AccountApi->account_post: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account** | [**Account**](Account.md)| Account model | 

### Return type

**string**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **account_verify_send_put**
> string account_verify_send_put(account_verify => $account_verify)

Send account activation token

Send account activation token

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::AccountApi;
my $api_instance = WWW::SwaggerClient::AccountApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $account_verify = WWW::SwaggerClient::Object::AccountVerify->new(); # AccountVerify | Account details

eval { 
    my $result = $api_instance->account_verify_send_put(account_verify => $account_verify);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AccountApi->account_verify_send_put: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_verify** | [**AccountVerify**](AccountVerify.md)| Account details | 

### Return type

**string**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **account_verify_verify_by_activation_token_put**
> string account_verify_verify_by_activation_token_put(activation_token => $activation_token)

Verify new account

Verify new account

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::AccountApi;
my $api_instance = WWW::SwaggerClient::AccountApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $activation_token = 56; # int | 

eval { 
    my $result = $api_instance->account_verify_verify_by_activation_token_put(activation_token => $activation_token);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AccountApi->account_verify_verify_by_activation_token_put: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **activation_token** | **int**|  | 

### Return type

**string**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **forgot_password_put**
> string forgot_password_put(username => $username)

Forgot password

Forgot password

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::AccountApi;
my $api_instance = WWW::SwaggerClient::AccountApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $username = WWW::SwaggerClient::Object::string->new(); # string | Username belonging to account

eval { 
    my $result = $api_instance->forgot_password_put(username => $username);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AccountApi->forgot_password_put: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **string**| Username belonging to account | 

### Return type

**string**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **forgot_password_verify_put**
> string forgot_password_verify_put(verify_password => $verify_password)

Verify forgot password

Verify forgot password

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::AccountApi;
my $api_instance = WWW::SwaggerClient::AccountApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $verify_password = WWW::SwaggerClient::Object::AccountForgotPasswordVerify->new(); # AccountForgotPasswordVerify | verifyPassword data

eval { 
    my $result = $api_instance->forgot_password_verify_put(verify_password => $verify_password);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AccountApi->forgot_password_verify_put: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **verify_password** | [**AccountForgotPasswordVerify**](AccountForgotPasswordVerify.md)| verifyPassword data | 

### Return type

**string**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **forgot_username_put**
> string forgot_username_put(email => $email)

Forgot username

Forgot username

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::AccountApi;
my $api_instance = WWW::SwaggerClient::AccountApi->new(
);

my $email = WWW::SwaggerClient::Object::string->new(); # string | Email belonging to account

eval { 
    my $result = $api_instance->forgot_username_put(email => $email);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AccountApi->forgot_username_put: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email** | **string**| Email belonging to account | 

### Return type

**string**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

