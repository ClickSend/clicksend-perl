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
package WWW::ClickSendClient::EmailDeliveryReceiptRulesApi;

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
# email_delivery_receipt_automation_delete
#
# Delete email delivery receipt automation
# 
# @param int $receipt_rule_id Receipt rule id (required)
{
    my $params = {
    'receipt_rule_id' => {
        data_type => 'int',
        description => 'Receipt rule id',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'email_delivery_receipt_automation_delete' } = { 
    	summary => 'Delete email delivery receipt automation',
        params => $params,
        returns => 'string',
        };
}
# @return string
#
sub email_delivery_receipt_automation_delete {
    my ($self, %args) = @_;

    # verify the required parameter 'receipt_rule_id' is set
    unless (exists $args{'receipt_rule_id'}) {
      croak("Missing the required parameter 'receipt_rule_id' when calling email_delivery_receipt_automation_delete");
    }

    # parse inputs
    my $_resource_path = '/automations/email/receipts/{receipt_rule_id}';

    my $_method = 'DELETE';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/json');

    # path params
    if ( exists $args{'receipt_rule_id'}) {
        my $_base_variable = "{" . "receipt_rule_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'receipt_rule_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
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

#
# email_delivery_receipt_automation_get
#
# Get specific email delivery receipt automation
# 
# @param int $receipt_rule_id Receipt rule id (required)
{
    my $params = {
    'receipt_rule_id' => {
        data_type => 'int',
        description => 'Receipt rule id',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'email_delivery_receipt_automation_get' } = { 
    	summary => 'Get specific email delivery receipt automation',
        params => $params,
        returns => 'string',
        };
}
# @return string
#
sub email_delivery_receipt_automation_get {
    my ($self, %args) = @_;

    # verify the required parameter 'receipt_rule_id' is set
    unless (exists $args{'receipt_rule_id'}) {
      croak("Missing the required parameter 'receipt_rule_id' when calling email_delivery_receipt_automation_get");
    }

    # parse inputs
    my $_resource_path = '/automations/email/receipts/{receipt_rule_id}';

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

    # path params
    if ( exists $args{'receipt_rule_id'}) {
        my $_base_variable = "{" . "receipt_rule_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'receipt_rule_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
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

#
# email_delivery_receipt_automation_post
#
# Create email delivery receipt automations
# 
# @param DeliveryReceiptRule $delivery_receipt_rule Email delivery receipt rule model (required)
{
    my $params = {
    'delivery_receipt_rule' => {
        data_type => 'DeliveryReceiptRule',
        description => 'Email delivery receipt rule model',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'email_delivery_receipt_automation_post' } = { 
    	summary => 'Create email delivery receipt automations',
        params => $params,
        returns => 'string',
        };
}
# @return string
#
sub email_delivery_receipt_automation_post {
    my ($self, %args) = @_;

    # verify the required parameter 'delivery_receipt_rule' is set
    unless (exists $args{'delivery_receipt_rule'}) {
      croak("Missing the required parameter 'delivery_receipt_rule' when calling email_delivery_receipt_automation_post");
    }

    # parse inputs
    my $_resource_path = '/automations/email/receipts';

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

    my $_body_data;
    # body params
    if ( exists $args{'delivery_receipt_rule'}) {
        $_body_data = $args{'delivery_receipt_rule'};
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

#
# email_delivery_receipt_automation_put
#
# Update email delivery receipt automation
# 
# @param int $receipt_rule_id Receipt rule id (required)
# @param DeliveryReceiptRule $delivery_receipt_rule Delivery receipt rule model (required)
{
    my $params = {
    'receipt_rule_id' => {
        data_type => 'int',
        description => 'Receipt rule id',
        required => '1',
    },
    'delivery_receipt_rule' => {
        data_type => 'DeliveryReceiptRule',
        description => 'Delivery receipt rule model',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'email_delivery_receipt_automation_put' } = { 
    	summary => 'Update email delivery receipt automation',
        params => $params,
        returns => 'string',
        };
}
# @return string
#
sub email_delivery_receipt_automation_put {
    my ($self, %args) = @_;

    # verify the required parameter 'receipt_rule_id' is set
    unless (exists $args{'receipt_rule_id'}) {
      croak("Missing the required parameter 'receipt_rule_id' when calling email_delivery_receipt_automation_put");
    }

    # verify the required parameter 'delivery_receipt_rule' is set
    unless (exists $args{'delivery_receipt_rule'}) {
      croak("Missing the required parameter 'delivery_receipt_rule' when calling email_delivery_receipt_automation_put");
    }

    # parse inputs
    my $_resource_path = '/automations/email/receipts/{receipt_rule_id}';

    my $_method = 'PUT';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/json');

    # path params
    if ( exists $args{'receipt_rule_id'}) {
        my $_base_variable = "{" . "receipt_rule_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'receipt_rule_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'delivery_receipt_rule'}) {
        $_body_data = $args{'delivery_receipt_rule'};
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

#
# email_delivery_receipt_automations_get
#
# Get all email delivery receipt automations
# 
# @param string $q Your keyword or query. (required)
# @param int $page Page number (optional, default to 1)
# @param int $limit Number of records per page (optional, default to 10)
{
    my $params = {
    'q' => {
        data_type => 'string',
        description => 'Your keyword or query.',
        required => '1',
    },
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
    __PACKAGE__->method_documentation->{ 'email_delivery_receipt_automations_get' } = { 
    	summary => 'Get all email delivery receipt automations',
        params => $params,
        returns => 'string',
        };
}
# @return string
#
sub email_delivery_receipt_automations_get {
    my ($self, %args) = @_;

    # verify the required parameter 'q' is set
    unless (exists $args{'q'}) {
      croak("Missing the required parameter 'q' when calling email_delivery_receipt_automations_get");
    }

    # parse inputs
    my $_resource_path = '/automations/email/receipts';

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
    if ( exists $args{'q'}) {
        $query_params->{'q'} = $self->{api_client}->to_query_value($args{'q'});
    }

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
