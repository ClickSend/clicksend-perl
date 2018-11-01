# The official perl library for ClickSend v3 REST API

 This is the official [ClickSend](https://clicksend.com) SDK.  *You'll need to create a free account to use the API. You can register [here](https://www.clicksend.com/signup).*  You can use our API documentation along with the SDK. Our API docs can be found [here](https://developers.clicksend.com). 

## A note on Moose

This role is the only component of the library that uses Moose. See
WWW::SwaggerClient::ApiFactory for non-Moosey usage.

# SYNOPSIS

The Perl Swagger Codegen project builds a library of Perl modules to interact with
a web service defined by a OpenAPI Specification. See below for how to build the
library.

This module provides an interface to the generated library. All the classes,
objects, and methods (well, not quite \*all\*, see below) are flattened into this
role.

        package MyApp;
        use Moose;
        with 'WWW::SwaggerClient::Role';

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

The tokens will be placed in a L<WWW::SwaggerClient::Configuration> instance
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

        $self->api_factory('Pet'); # returns a WWW::SwaggerClient::PetApi instance

        $self->pet_api;            # the same

# MISSING METHODS

Most of the methods on the API are delegated to individual endpoint API objects
(e.g. Pet API, Store API, User API etc). Where different endpoint APIs use the
same method name (e.g. `new()`), these methods can't be delegated. So you need
to call `$api->pet_api->new()`.

In principle, every API is susceptible to the presence of a few, random, undelegatable
method names. In practice, because of the way method names are constructed, it's
unlikely in general that any methods will be undelegatable, except for:

        new()
        class_documentation()
        method_documentation()

To call these methods, you need to get a handle on the relevant object, either
by calling `$api->foo_api` or by retrieving an object, e.g.
`$api->get_pet_by_id(pet_id => $pet_id)`. They are class methods, so
you could also call them on class names.

# BUILDING YOUR LIBRARY

See the homepage `https://github.com/swagger-api/swagger-codegen` for full details.
But briefly, clone the git repository, build the codegen codebase, set up your build
config file, then run the API build script. You will need git, Java 7 or 8 and Apache
maven 3.0.3 or better already installed.

The config file should specify the project name for the generated library:

        {"moduleName":"WWW::MyProjectName"}

Your library files will be built under `WWW::MyProjectName`.

          $ git clone https://github.com/swagger-api/swagger-codegen.git
          $ cd swagger-codegen
          $ mvn package
          $ java -jar modules/swagger-codegen-cli/target/swagger-codegen-cli.jar generate \
    -i [URL or file path to JSON swagger API spec] \
    -l perl \
    -c /path/to/config/file.json \
    -o /path/to/output/folder

Bang, all done. Run the `autodoc` script in the `bin` directory to see the API
you just built.

# AUTOMATIC DOCUMENTATION

You can print out a summary of the generated API by running the included
`autodoc` script in the `bin` directory of your generated library. A few
output formats are supported:

          Usage: autodoc [OPTION]

    -w           wide format (default)
    -n           narrow format
    -p           POD format
    -H           HTML format
    -m           Markdown format
    -h           print this help message
    -c           your application class


The `-c` option allows you to load and inspect your own application. A dummy
namespace is used if you don't supply your own class.

# DOCUMENTATION FROM THE OpenAPI Spec

Additional documentation for each class and method may be provided by the Swagger
spec. If so, this is available via the `class_documentation()` and
`method_documentation()` methods on each generated object class, and the
`method_documentation()` method on the endpoint API classes:

        my $cmdoc = $api->pet_api->method_documentation->{$method_name};

        my $odoc = $api->get_pet_by_id->(pet_id => $pet_id)->class_documentation;
        my $omdoc = $api->get_pet_by_id->(pet_id => $pet_id)->method_documentation->{method_name};


Each of these calls returns a hashref with various useful pieces of information.

# LOAD THE MODULES

To load the API packages:
```perl
use WWW::SwaggerClient::AccountApi;
use WWW::SwaggerClient::AccountRechargeApi;
use WWW::SwaggerClient::ContactApi;
use WWW::SwaggerClient::ContactListApi;
use WWW::SwaggerClient::CountriesApi;
use WWW::SwaggerClient::DeliveryIssuesApi;
use WWW::SwaggerClient::DetectAddressApi;
use WWW::SwaggerClient::EmailDeliveryReceiptRulesApi;
use WWW::SwaggerClient::EmailMarketingApi;
use WWW::SwaggerClient::EmailToSmsApi;
use WWW::SwaggerClient::FAXDeliveryReceiptRulesApi;
use WWW::SwaggerClient::FaxApi;
use WWW::SwaggerClient::InboundFAXRulesApi;
use WWW::SwaggerClient::InboundSMSRulesApi;
use WWW::SwaggerClient::MMSApi;
use WWW::SwaggerClient::MasterEmailTemplatesApi;
use WWW::SwaggerClient::MmsCampaignApi;
use WWW::SwaggerClient::NumberApi;
use WWW::SwaggerClient::PostDirectMailApi;
use WWW::SwaggerClient::PostLetterApi;
use WWW::SwaggerClient::PostPostcardApi;
use WWW::SwaggerClient::PostReturnAddressApi;
use WWW::SwaggerClient::ReferralAccountApi;
use WWW::SwaggerClient::ResellerAccountApi;
use WWW::SwaggerClient::SMSApi;
use WWW::SwaggerClient::SMSDeliveryReceiptRulesApi;
use WWW::SwaggerClient::SearchApi;
use WWW::SwaggerClient::SmsCampaignApi;
use WWW::SwaggerClient::StatisticsApi;
use WWW::SwaggerClient::SubaccountApi;
use WWW::SwaggerClient::TimezonesApi;
use WWW::SwaggerClient::TransactionalEmailApi;
use WWW::SwaggerClient::TransferCreditApi;
use WWW::SwaggerClient::UploadApi;
use WWW::SwaggerClient::UserEmailTemplatesApi;
use WWW::SwaggerClient::VoiceApi;
use WWW::SwaggerClient::VoiceDeliveryReceiptRulesApi;

```

To load the models:
```perl
use WWW::SwaggerClient::Object::Account;
use WWW::SwaggerClient::Object::AccountForgotPasswordVerify;
use WWW::SwaggerClient::Object::AccountVerify;
use WWW::SwaggerClient::Object::Address;
use WWW::SwaggerClient::Object::Attachment;
use WWW::SwaggerClient::Object::Contact;
use WWW::SwaggerClient::Object::ContactListImport;
use WWW::SwaggerClient::Object::CreditCard;
use WWW::SwaggerClient::Object::DeliveryIssue;
use WWW::SwaggerClient::Object::DeliveryReceiptRule;
use WWW::SwaggerClient::Object::Email;
use WWW::SwaggerClient::Object::EmailCampaign;
use WWW::SwaggerClient::Object::EmailFrom;
use WWW::SwaggerClient::Object::EmailRecipient;
use WWW::SwaggerClient::Object::EmailSMSAddress;
use WWW::SwaggerClient::Object::EmailTemplateNew;
use WWW::SwaggerClient::Object::EmailTemplateUpdate;
use WWW::SwaggerClient::Object::FaxMessage;
use WWW::SwaggerClient::Object::FaxMessageCollection;
use WWW::SwaggerClient::Object::InboundFAXRule;
use WWW::SwaggerClient::Object::InboundSMSRule;
use WWW::SwaggerClient::Object::MmsCampaign;
use WWW::SwaggerClient::Object::MmsMessage;
use WWW::SwaggerClient::Object::MmsMessageCollection;
use WWW::SwaggerClient::Object::PostDirectMail;
use WWW::SwaggerClient::Object::PostDirectMailArea;
use WWW::SwaggerClient::Object::PostLetter;
use WWW::SwaggerClient::Object::PostPostcard;
use WWW::SwaggerClient::Object::PostRecipient;
use WWW::SwaggerClient::Object::ResellerAccount;
use WWW::SwaggerClient::Object::ResellerAccountTransferCredit;
use WWW::SwaggerClient::Object::SmsCampaign;
use WWW::SwaggerClient::Object::SmsMessage;
use WWW::SwaggerClient::Object::SmsMessageCollection;
use WWW::SwaggerClient::Object::SmsTemplate;
use WWW::SwaggerClient::Object::Subaccount;
use WWW::SwaggerClient::Object::VoiceMessage;
use WWW::SwaggerClient::Object::VoiceMessageCollection;

````

# GETTING STARTED
Put the Perl SDK under the 'lib' folder in your project directory, then run the following
```perl
#!/usr/bin/perl
use lib 'lib';
use strict;
use warnings;
# load the API package
use WWW::SwaggerClient::AccountApi;
use WWW::SwaggerClient::AccountRechargeApi;
use WWW::SwaggerClient::ContactApi;
use WWW::SwaggerClient::ContactListApi;
use WWW::SwaggerClient::CountriesApi;
use WWW::SwaggerClient::DeliveryIssuesApi;
use WWW::SwaggerClient::DetectAddressApi;
use WWW::SwaggerClient::EmailDeliveryReceiptRulesApi;
use WWW::SwaggerClient::EmailMarketingApi;
use WWW::SwaggerClient::EmailToSmsApi;
use WWW::SwaggerClient::FAXDeliveryReceiptRulesApi;
use WWW::SwaggerClient::FaxApi;
use WWW::SwaggerClient::InboundFAXRulesApi;
use WWW::SwaggerClient::InboundSMSRulesApi;
use WWW::SwaggerClient::MMSApi;
use WWW::SwaggerClient::MasterEmailTemplatesApi;
use WWW::SwaggerClient::MmsCampaignApi;
use WWW::SwaggerClient::NumberApi;
use WWW::SwaggerClient::PostDirectMailApi;
use WWW::SwaggerClient::PostLetterApi;
use WWW::SwaggerClient::PostPostcardApi;
use WWW::SwaggerClient::PostReturnAddressApi;
use WWW::SwaggerClient::ReferralAccountApi;
use WWW::SwaggerClient::ResellerAccountApi;
use WWW::SwaggerClient::SMSApi;
use WWW::SwaggerClient::SMSDeliveryReceiptRulesApi;
use WWW::SwaggerClient::SearchApi;
use WWW::SwaggerClient::SmsCampaignApi;
use WWW::SwaggerClient::StatisticsApi;
use WWW::SwaggerClient::SubaccountApi;
use WWW::SwaggerClient::TimezonesApi;
use WWW::SwaggerClient::TransactionalEmailApi;
use WWW::SwaggerClient::TransferCreditApi;
use WWW::SwaggerClient::UploadApi;
use WWW::SwaggerClient::UserEmailTemplatesApi;
use WWW::SwaggerClient::VoiceApi;
use WWW::SwaggerClient::VoiceDeliveryReceiptRulesApi;

# load the models
use WWW::SwaggerClient::Object::Account;
use WWW::SwaggerClient::Object::AccountForgotPasswordVerify;
use WWW::SwaggerClient::Object::AccountVerify;
use WWW::SwaggerClient::Object::Address;
use WWW::SwaggerClient::Object::Attachment;
use WWW::SwaggerClient::Object::Contact;
use WWW::SwaggerClient::Object::ContactListImport;
use WWW::SwaggerClient::Object::CreditCard;
use WWW::SwaggerClient::Object::DeliveryIssue;
use WWW::SwaggerClient::Object::DeliveryReceiptRule;
use WWW::SwaggerClient::Object::Email;
use WWW::SwaggerClient::Object::EmailCampaign;
use WWW::SwaggerClient::Object::EmailFrom;
use WWW::SwaggerClient::Object::EmailRecipient;
use WWW::SwaggerClient::Object::EmailSMSAddress;
use WWW::SwaggerClient::Object::EmailTemplateNew;
use WWW::SwaggerClient::Object::EmailTemplateUpdate;
use WWW::SwaggerClient::Object::FaxMessage;
use WWW::SwaggerClient::Object::FaxMessageCollection;
use WWW::SwaggerClient::Object::InboundFAXRule;
use WWW::SwaggerClient::Object::InboundSMSRule;
use WWW::SwaggerClient::Object::MmsCampaign;
use WWW::SwaggerClient::Object::MmsMessage;
use WWW::SwaggerClient::Object::MmsMessageCollection;
use WWW::SwaggerClient::Object::PostDirectMail;
use WWW::SwaggerClient::Object::PostDirectMailArea;
use WWW::SwaggerClient::Object::PostLetter;
use WWW::SwaggerClient::Object::PostPostcard;
use WWW::SwaggerClient::Object::PostRecipient;
use WWW::SwaggerClient::Object::ResellerAccount;
use WWW::SwaggerClient::Object::ResellerAccountTransferCredit;
use WWW::SwaggerClient::Object::SmsCampaign;
use WWW::SwaggerClient::Object::SmsMessage;
use WWW::SwaggerClient::Object::SmsMessageCollection;
use WWW::SwaggerClient::Object::SmsTemplate;
use WWW::SwaggerClient::Object::Subaccount;
use WWW::SwaggerClient::Object::VoiceMessage;
use WWW::SwaggerClient::Object::VoiceMessageCollection;

# for displaying the API response data
use Data::Dumper;
use WWW::SwaggerClient::;

my $api_instance = WWW::SwaggerClient::->new(

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

