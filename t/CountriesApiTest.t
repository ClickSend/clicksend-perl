=begin comment

ClickSend v3 API

 This is an official SDK for [ClickSend](https://clicksend.com)  Below you will find a current list of the available methods for clicksend.  *NOTE: You will need to create a free account to use the API. You can register [here](https://dashboard.clicksend.com/#/signup/step1/)..* 

OpenAPI spec version: 3.1
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

use_ok('WWW::ClickSendClient::CountriesApi');

my $api = WWW::ClickSendClient::CountriesApi->new();
isa_ok($api, 'WWW::ClickSendClient::CountriesApi');

#
# countries_get test
#
{
    my $result = $api->countries_get();
}


1;
