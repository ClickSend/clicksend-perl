=begin comment

ClickSend v3 REST API

 This is the official [ClickSend](https://clicksend.com) SDK.  *You'll need to create a free account to use the API. You can register [here](https://www.clicksend.com/signup).*  You can use our API documentation along with the SDK. Our API docs can be found [here](https://developers.clicksend.com). 

OpenAPI spec version: 3.1.0
Contact: support@clicksend.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end comment

=cut

#
# NOTE: This class is auto generated by ClickSend Codegen
# Please update the test cases below to test the API endpoints.
# Ref: https://github.com/swagger-api/swagger-codegen
#
use Test::More tests => 1; #TODO update number of test cases
use Test::Exception;

use lib 'lib';
use strict;
use warnings;

use_ok('WWW::ClickSendClient::EmailToSmsApi');

my $api = WWW::ClickSendClient::EmailToSmsApi->new();
isa_ok($api, 'WWW::ClickSendClient::EmailToSmsApi');

#
# sms_email_sms_get test
#
{
    my $page = undef; # replace NULL with a proper value
    my $limit = undef; # replace NULL with a proper value
    my $result = $api->sms_email_sms_get(page => $page, limit => $limit);
}

#
# sms_email_sms_post test
#
{
    my $email_sms_address = undef; # replace NULL with a proper value
    my $result = $api->sms_email_sms_post(email_sms_address => $email_sms_address);
}

#
# sms_email_sms_stripped_string_delete test
#
{
    my $rule_id = undef; # replace NULL with a proper value
    my $result = $api->sms_email_sms_stripped_string_delete(rule_id => $rule_id);
}

#
# sms_email_sms_stripped_string_get test
#
{
    my $rule_id = undef; # replace NULL with a proper value
    my $result = $api->sms_email_sms_stripped_string_get(rule_id => $rule_id);
}

#
# sms_email_sms_stripped_string_post test
#
{
    my $stripped_string = undef; # replace NULL with a proper value
    my $result = $api->sms_email_sms_stripped_string_post(stripped_string => $stripped_string);
}

#
# sms_email_sms_stripped_string_put test
#
{
    my $stripped_string = undef; # replace NULL with a proper value
    my $rule_id = undef; # replace NULL with a proper value
    my $result = $api->sms_email_sms_stripped_string_put(stripped_string => $stripped_string, rule_id => $rule_id);
}

#
# sms_email_sms_stripped_strings_get test
#
{
    my $page = undef; # replace NULL with a proper value
    my $limit = undef; # replace NULL with a proper value
    my $result = $api->sms_email_sms_stripped_strings_get(page => $page, limit => $limit);
}


1;
