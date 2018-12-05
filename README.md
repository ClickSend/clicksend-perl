# The official perl library for ClickSend v3 API

 This is an official SDK for [ClickSend](https://clicksend.com)  Below you will find a current list of the available methods for clicksend.  *NOTE: You will need to create a free account to use the API. You can register [here](https://dashboard.clicksend.com/#/signup/step1/)..* 

## A note on Moose

This role is the only component of the library that uses Moose. See
WWW::ClickSendClient::ApiFactory for non-Moosey usage.

# SYNOPSIS

This module provides an interface to the generated library. All the classes,
objects, and methods (well, not quite \*all\*, see below) are flattened into this
role.

        package MyApp;
        use Moose;
        with 'WWW::ClickSendClient::Role';

        package main;

        my $api = MyApp->new({ tokens => $tokens });

        my $pet = $api->get_pet_by_id(pet_id => $pet_id);


## Structure of the library

The library consists of a set of API classes, one for each endpoint. These APIs
implement the method calls available on each endpoint.

Additionally, there is a set of "object" classes, which represent the objects
returned by and sent to the methods on the endpoints.

An API factory class is provided, which builds instances of each endpoint API.

This Moose role flattens all the methods from the endpoint APIs onto the consuming
class. It also provides methods to retrieve the endpoint API objects, and the API
factory object, should you need it.

For documentation of all these methods, see AUTOMATIC DOCUMENTATION below.

## Configuring authentication

In the normal case, the OpenAPI Spec will describe what parameters are
required and where to put them. You just need to supply the tokens.

    my $tokens = {
        # basic
        username => $username,
        password => $password,

        # oauth
        access_token => $oauth_token,

        # keys
        $some_key => { token => $token,
                       prefix => $prefix,
                       in => $in,             # 'head||query',
                       },

        $another => { token => $token,
                      prefix => $prefix,
                      in => $in,              # 'head||query',
                      },
        ...,

        };

        my $api = MyApp->new({ tokens => $tokens });

Note these are all optional, as are `prefix` and `in`, and depend on the API
you are accessing. Usually `prefix` and `in` will be determined by the code generator from
the spec and you will not need to set them at run time. If not, `in` will
default to 'head' and `prefix` to the empty string.

The tokens will be placed in a L<WWW::ClickSendClient::Configuration> instance
as follows, but you don't need to know about this.

- `$cfg->{username}`

    String. The username for basic auth.

- `$cfg->{password}`

    String. The password for basic auth.

- `$cfg->{api_key}`

    Hashref. Keyed on the name of each key (there can be multiple tokens).

            $cfg->{api_key} = {
                    secretKey => 'aaaabbbbccccdddd',
                    anotherKey => '1111222233334444',
                    };

- `$cfg->{api_key_prefix}`

    Hashref. Keyed on the name of each key (there can be multiple tokens). Note not
    all api keys require a prefix.

            $cfg->{api_key_prefix} = {
                    secretKey => 'string',
                    anotherKey => 'same or some other string',
                    };

- `$cfg->{access_token}`

    String. The OAuth access token.

# METHODS

## `base_url`

The generated code has the `base_url` already set as a default value. This method
returns the current value of `base_url`.

## `api_factory`

Returns an API factory object. You probably won't need to call this directly.

        $self->api_factory('Pet'); # returns a WWW::ClickSendClient::PetApi instance

        $self->pet_api;            # the same

# LOAD THE MODULES

To load the API packages:
```perl
use WWW::ClickSendClient::AccountApi;
use WWW::ClickSendClient::AccountRechargeApi;
use WWW::ClickSendClient::ContactApi;
use WWW::ClickSendClient::ContactListApi;
use WWW::ClickSendClient::CountriesApi;
use WWW::ClickSendClient::DeliveryIssuesApi;
use WWW::ClickSendClient::DetectAddressApi;
use WWW::ClickSendClient::EmailDeliveryReceiptRulesApi;
use WWW::ClickSendClient::EmailMarketingApi;
use WWW::ClickSendClient::EmailToSmsApi;
use WWW::ClickSendClient::FAXDeliveryReceiptRulesApi;
use WWW::ClickSendClient::FaxApi;
use WWW::ClickSendClient::InboundFAXRulesApi;
use WWW::ClickSendClient::InboundSMSRulesApi;
use WWW::ClickSendClient::MMSApi;
use WWW::ClickSendClient::MasterEmailTemplatesApi;
use WWW::ClickSendClient::MmsCampaignApi;
use WWW::ClickSendClient::NumberApi;
use WWW::ClickSendClient::PostLetterApi;
use WWW::ClickSendClient::PostPostcardApi;
use WWW::ClickSendClient::PostReturnAddressApi;
use WWW::ClickSendClient::ReferralAccountApi;
use WWW::ClickSendClient::ResellerAccountApi;
use WWW::ClickSendClient::SMSApi;
use WWW::ClickSendClient::SMSDeliveryReceiptRulesApi;
use WWW::ClickSendClient::SearchApi;
use WWW::ClickSendClient::SmsCampaignApi;
use WWW::ClickSendClient::StatisticsApi;
use WWW::ClickSendClient::SubaccountApi;
use WWW::ClickSendClient::TimezonesApi;
use WWW::ClickSendClient::TransactionalEmailApi;
use WWW::ClickSendClient::TransferCreditApi;
use WWW::ClickSendClient::UploadApi;
use WWW::ClickSendClient::UserEmailTemplatesApi;
use WWW::ClickSendClient::VoiceApi;
use WWW::ClickSendClient::VoiceDeliveryReceiptRulesApi;

```

To load the models:
```perl
use WWW::ClickSendClient::Object::Account;
use WWW::ClickSendClient::Object::AccountForgotPasswordVerify;
use WWW::ClickSendClient::Object::AccountVerify;
use WWW::ClickSendClient::Object::Address;
use WWW::ClickSendClient::Object::Attachment;
use WWW::ClickSendClient::Object::Contact;
use WWW::ClickSendClient::Object::ContactListImport;
use WWW::ClickSendClient::Object::CreditCard;
use WWW::ClickSendClient::Object::DeliveryIssue;
use WWW::ClickSendClient::Object::DeliveryReceiptRule;
use WWW::ClickSendClient::Object::Email;
use WWW::ClickSendClient::Object::EmailAddress;
use WWW::ClickSendClient::Object::EmailCampaign;
use WWW::ClickSendClient::Object::EmailFrom;
use WWW::ClickSendClient::Object::EmailRecipient;
use WWW::ClickSendClient::Object::EmailSMSAddress;
use WWW::ClickSendClient::Object::EmailTemplateNew;
use WWW::ClickSendClient::Object::EmailTemplateUpdate;
use WWW::ClickSendClient::Object::FaxMessage;
use WWW::ClickSendClient::Object::FaxMessageCollection;
use WWW::ClickSendClient::Object::Fields;
use WWW::ClickSendClient::Object::FieldsFields;
use WWW::ClickSendClient::Object::ForgotPassword;
use WWW::ClickSendClient::Object::ForgotUsername;
use WWW::ClickSendClient::Object::InboundFAXRule;
use WWW::ClickSendClient::Object::InboundSMSRule;
use WWW::ClickSendClient::Object::List;
use WWW::ClickSendClient::Object::MmsCampaign;
use WWW::ClickSendClient::Object::MmsMessage;
use WWW::ClickSendClient::Object::MmsMessageCollection;
use WWW::ClickSendClient::Object::PostLetter;
use WWW::ClickSendClient::Object::PostPostcard;
use WWW::ClickSendClient::Object::PostRecipient;
use WWW::ClickSendClient::Object::ResellerAccount;
use WWW::ClickSendClient::Object::ResellerAccountTransferCredit;
use WWW::ClickSendClient::Object::SmsCampaign;
use WWW::ClickSendClient::Object::SmsMessage;
use WWW::ClickSendClient::Object::SmsMessageCollection;
use WWW::ClickSendClient::Object::SmsTemplate;
use WWW::ClickSendClient::Object::StrippedString;
use WWW::ClickSendClient::Object::Subaccount;
use WWW::ClickSendClient::Object::UploadFile;
use WWW::ClickSendClient::Object::Url;
use WWW::ClickSendClient::Object::VoiceMessage;
use WWW::ClickSendClient::Object::VoiceMessageCollection;

````

# GETTING STARTED
Put the Perl SDK under the 'lib' folder in your project directory, then run the following
```perl
#!/usr/bin/perl
use lib 'lib';
use strict;
use warnings;
# load the API package
use WWW::ClickSendClient::AccountApi;
use WWW::ClickSendClient::AccountRechargeApi;
use WWW::ClickSendClient::ContactApi;
use WWW::ClickSendClient::ContactListApi;
use WWW::ClickSendClient::CountriesApi;
use WWW::ClickSendClient::DeliveryIssuesApi;
use WWW::ClickSendClient::DetectAddressApi;
use WWW::ClickSendClient::EmailDeliveryReceiptRulesApi;
use WWW::ClickSendClient::EmailMarketingApi;
use WWW::ClickSendClient::EmailToSmsApi;
use WWW::ClickSendClient::FAXDeliveryReceiptRulesApi;
use WWW::ClickSendClient::FaxApi;
use WWW::ClickSendClient::InboundFAXRulesApi;
use WWW::ClickSendClient::InboundSMSRulesApi;
use WWW::ClickSendClient::MMSApi;
use WWW::ClickSendClient::MasterEmailTemplatesApi;
use WWW::ClickSendClient::MmsCampaignApi;
use WWW::ClickSendClient::NumberApi;
use WWW::ClickSendClient::PostLetterApi;
use WWW::ClickSendClient::PostPostcardApi;
use WWW::ClickSendClient::PostReturnAddressApi;
use WWW::ClickSendClient::ReferralAccountApi;
use WWW::ClickSendClient::ResellerAccountApi;
use WWW::ClickSendClient::SMSApi;
use WWW::ClickSendClient::SMSDeliveryReceiptRulesApi;
use WWW::ClickSendClient::SearchApi;
use WWW::ClickSendClient::SmsCampaignApi;
use WWW::ClickSendClient::StatisticsApi;
use WWW::ClickSendClient::SubaccountApi;
use WWW::ClickSendClient::TimezonesApi;
use WWW::ClickSendClient::TransactionalEmailApi;
use WWW::ClickSendClient::TransferCreditApi;
use WWW::ClickSendClient::UploadApi;
use WWW::ClickSendClient::UserEmailTemplatesApi;
use WWW::ClickSendClient::VoiceApi;
use WWW::ClickSendClient::VoiceDeliveryReceiptRulesApi;

# load the models
use WWW::ClickSendClient::Object::Account;
use WWW::ClickSendClient::Object::AccountForgotPasswordVerify;
use WWW::ClickSendClient::Object::AccountVerify;
use WWW::ClickSendClient::Object::Address;
use WWW::ClickSendClient::Object::Attachment;
use WWW::ClickSendClient::Object::Contact;
use WWW::ClickSendClient::Object::ContactListImport;
use WWW::ClickSendClient::Object::CreditCard;
use WWW::ClickSendClient::Object::DeliveryIssue;
use WWW::ClickSendClient::Object::DeliveryReceiptRule;
use WWW::ClickSendClient::Object::Email;
use WWW::ClickSendClient::Object::EmailAddress;
use WWW::ClickSendClient::Object::EmailCampaign;
use WWW::ClickSendClient::Object::EmailFrom;
use WWW::ClickSendClient::Object::EmailRecipient;
use WWW::ClickSendClient::Object::EmailSMSAddress;
use WWW::ClickSendClient::Object::EmailTemplateNew;
use WWW::ClickSendClient::Object::EmailTemplateUpdate;
use WWW::ClickSendClient::Object::FaxMessage;
use WWW::ClickSendClient::Object::FaxMessageCollection;
use WWW::ClickSendClient::Object::Fields;
use WWW::ClickSendClient::Object::FieldsFields;
use WWW::ClickSendClient::Object::ForgotPassword;
use WWW::ClickSendClient::Object::ForgotUsername;
use WWW::ClickSendClient::Object::InboundFAXRule;
use WWW::ClickSendClient::Object::InboundSMSRule;
use WWW::ClickSendClient::Object::List;
use WWW::ClickSendClient::Object::MmsCampaign;
use WWW::ClickSendClient::Object::MmsMessage;
use WWW::ClickSendClient::Object::MmsMessageCollection;
use WWW::ClickSendClient::Object::PostLetter;
use WWW::ClickSendClient::Object::PostPostcard;
use WWW::ClickSendClient::Object::PostRecipient;
use WWW::ClickSendClient::Object::ResellerAccount;
use WWW::ClickSendClient::Object::ResellerAccountTransferCredit;
use WWW::ClickSendClient::Object::SmsCampaign;
use WWW::ClickSendClient::Object::SmsMessage;
use WWW::ClickSendClient::Object::SmsMessageCollection;
use WWW::ClickSendClient::Object::SmsTemplate;
use WWW::ClickSendClient::Object::StrippedString;
use WWW::ClickSendClient::Object::Subaccount;
use WWW::ClickSendClient::Object::UploadFile;
use WWW::ClickSendClient::Object::Url;
use WWW::ClickSendClient::Object::VoiceMessage;
use WWW::ClickSendClient::Object::VoiceMessageCollection;

# for displaying the API response data
use Data::Dumper;
use WWW::ClickSendClient::;

my $api_instance = WWW::ClickSendClient::->new(

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

# DOCUMENTATION FOR API ENDPOINTS AND MODELS

Documentation can be found here: [ClickSend API Docs](https://developers.clicksend.com/docs/)

# DOCUMENTATION FOR AUTHORIZATION

## BasicAuth

- **Type**: HTTP basic authentication

