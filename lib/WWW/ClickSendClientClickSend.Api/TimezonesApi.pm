=begin comment

ClickSend v3 REST API

 This is the official [ClickSend](https://clicksend.com) SDK.  *You'll need to create a free account to use the API. You can register [here](https://www.clicksend.com/signup).*  You can use our API documentation along with the SDK. Our API docs can be found [here](https://developers.clicksend.com). 

OpenAPI spec version: 3.1.0
Contact: support@clicksend.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end comment

=cut

#
# NOTE: This class is auto generated by the swagger code generator program. 
# Do not edit the class manually.
# Ref: https://github.com/swagger-api/swagger-codegen
#
package WWW::ClickSendClient::TimezonesApi;

require 5.6.0;
use strict;
use warnings;
use utf8; 
use Exporter;
use Carp qw( croak );
use Log::Any qw($log);

use WWW::ClickSendClient::ApiClient;

use base "Class::Data::Inheritable";

__PACKAGE__->mk_classdata('method_documentation' => {});

sub new {
    my $class = shift;
    my $api_client;

    if ($_[0] && ref $_[0] && ref $_[0] eq 'WWW::ClickSendClient::ApiClient' ) {
        $api_client = $_[0];
    } else {
        $api_client = WWW::ClickSendClient::ApiClient->new(@_);
    }

    bless { api_client => $api_client }, $class;

}


#
# timezones_get
#
# Get supported list of timezones.
# 
# @param int $page Page number (optional, default to 1)
# @param int $limit Number of records per page (optional, default to 10)
{
    my $params = {
    'page' => {
        data_type => 'int',
        description => 'Page number',
        required => '0',
    },
    'limit' => {
        data_type => 'int',
        description => 'Number of records per page',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'timezones_get' } = { 
    	summary => 'Get supported list of timezones.',
        params => $params,
        returns => 'string',
        };
}
# @return string
#
sub timezones_get {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/timezones';

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/json');

    # query params
    if ( exists $args{'page'}) {
        $query_params->{'page'} = $self->{api_client}->to_query_value($args{'page'});
    }

    # query params
    if ( exists $args{'limit'}) {
        $query_params->{'limit'} = $self->{api_client}->to_query_value($args{'limit'});
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw(BasicAuth )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('string', $response);
    return $_response_object;
}

1;
