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
package WWW::ClickSendClient::UploadApi;

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
# uploads_post
#
# Upload File
# 
# @param string $content Base64-encoded file contents (required)
# @param string $convert  (required)
{
    my $params = {
    'content' => {
        data_type => 'string',
        description => 'Base64-encoded file contents',
        required => '1',
    },
    'convert' => {
        data_type => 'string',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'uploads_post' } = { 
    	summary => 'Upload File',
        params => $params,
        returns => 'string',
        };
}
# @return string
#
sub uploads_post {
    my ($self, %args) = @_;

    # verify the required parameter 'content' is set
    unless (exists $args{'content'}) {
      croak("Missing the required parameter 'content' when calling uploads_post");
    }

    # verify the required parameter 'convert' is set
    unless (exists $args{'convert'}) {
      croak("Missing the required parameter 'convert' when calling uploads_post");
    }

    # parse inputs
    my $_resource_path = '/uploads';

    my $_method = 'POST';
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
    if ( exists $args{'convert'}) {
        $query_params->{'convert'} = $self->{api_client}->to_query_value($args{'convert'});
    }

    my $_body_data;
    # body params
    if ( exists $args{'content'}) {
        $_body_data = $args{'content'};
    }

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
