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

use_ok('WWW::ClickSendClient::StatisticsApi');

my $api = WWW::ClickSendClient::StatisticsApi->new();
isa_ok($api, 'WWW::ClickSendClient::StatisticsApi');

#
# statistics_mms_get test
#
{
    my $result = $api->statistics_mms_get();
}

#
# statistics_sms_get test
#
{
    my $result = $api->statistics_sms_get();
}

#
# statistics_voice_get test
#
{
    my $result = $api->statistics_voice_get();
}


1;
