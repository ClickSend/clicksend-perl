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
package WWW::ClickSendClient::EmailToSmsApi;

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
# sms_email_sms_get
#
# Get list of email to sms allowed addresses
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
    __PACKAGE__->method_documentation->{ 'sms_email_sms_get' } = { 
    	summary => 'Get list of email to sms allowed addresses',
        params => $params,
        returns => 'string',
        };
}
# @return string
#
sub sms_email_sms_get {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/sms/email-sms';

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

#
# sms_email_sms_post
#
# Create email to sms allowed address
# 
# @param EmailSMSAddress $email_sms_address EmailSMSAddress model (required)
{
    my $params = {
    'email_sms_address' => {
        data_type => 'EmailSMSAddress',
        description => 'EmailSMSAddress model',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'sms_email_sms_post' } = { 
    	summary => 'Create email to sms allowed address',
        params => $params,
        returns => 'string',
        };
}
# @return string
#
sub sms_email_sms_post {
    my ($self, %args) = @_;

    # verify the required parameter 'email_sms_address' is set
    unless (exists $args{'email_sms_address'}) {
      croak("Missing the required parameter 'email_sms_address' when calling sms_email_sms_post");
    }

    # parse inputs
    my $_resource_path = '/sms/email-sms';

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
    if ( exists $args{'email_sms_address'}) {
        $_body_data = $args{'email_sms_address'};
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
# sms_email_sms_stripped_string_delete
#
# Delete email to sms stripped string rule
# 
# @param int $rule_id Your rule id (required)
{
    my $params = {
    'rule_id' => {
        data_type => 'int',
        description => 'Your rule id',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'sms_email_sms_stripped_string_delete' } = { 
    	summary => 'Delete email to sms stripped string rule',
        params => $params,
        returns => 'string',
        };
}
# @return string
#
sub sms_email_sms_stripped_string_delete {
    my ($self, %args) = @_;

    # verify the required parameter 'rule_id' is set
    unless (exists $args{'rule_id'}) {
      croak("Missing the required parameter 'rule_id' when calling sms_email_sms_stripped_string_delete");
    }

    # parse inputs
    my $_resource_path = '/sms/email-sms-stripped-strings/{rule_id}';

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
    if ( exists $args{'rule_id'}) {
        my $_base_variable = "{" . "rule_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'rule_id'});
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
# sms_email_sms_stripped_string_get
#
# Get email to sms stripped string rule
# 
# @param int $rule_id Your rule id (required)
{
    my $params = {
    'rule_id' => {
        data_type => 'int',
        description => 'Your rule id',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'sms_email_sms_stripped_string_get' } = { 
    	summary => 'Get email to sms stripped string rule',
        params => $params,
        returns => 'string',
        };
}
# @return string
#
sub sms_email_sms_stripped_string_get {
    my ($self, %args) = @_;

    # verify the required parameter 'rule_id' is set
    unless (exists $args{'rule_id'}) {
      croak("Missing the required parameter 'rule_id' when calling sms_email_sms_stripped_string_get");
    }

    # parse inputs
    my $_resource_path = '/sms/email-sms-stripped-strings/{rule_id}';

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
    if ( exists $args{'rule_id'}) {
        my $_base_variable = "{" . "rule_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'rule_id'});
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
# sms_email_sms_stripped_string_post
#
# Create email to sms stripped string rule
# 
# @param StrippedString $stripped_string StrippedString model (required)
{
    my $params = {
    'stripped_string' => {
        data_type => 'StrippedString',
        description => 'StrippedString model',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'sms_email_sms_stripped_string_post' } = { 
    	summary => 'Create email to sms stripped string rule',
        params => $params,
        returns => 'string',
        };
}
# @return string
#
sub sms_email_sms_stripped_string_post {
    my ($self, %args) = @_;

    # verify the required parameter 'stripped_string' is set
    unless (exists $args{'stripped_string'}) {
      croak("Missing the required parameter 'stripped_string' when calling sms_email_sms_stripped_string_post");
    }

    # parse inputs
    my $_resource_path = '/sms/email-sms-stripped-strings';

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
    if ( exists $args{'stripped_string'}) {
        $_body_data = $args{'stripped_string'};
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
# sms_email_sms_stripped_string_put
#
# Update email to sms stripped string rule
# 
# @param Url $url Url model (required)
# @param int $rule_id Your rule id (required)
{
    my $params = {
    'url' => {
        data_type => 'Url',
        description => 'Url model',
        required => '1',
    },
    'rule_id' => {
        data_type => 'int',
        description => 'Your rule id',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'sms_email_sms_stripped_string_put' } = { 
    	summary => 'Update email to sms stripped string rule',
        params => $params,
        returns => 'string',
        };
}
# @return string
#
sub sms_email_sms_stripped_string_put {
    my ($self, %args) = @_;

    # verify the required parameter 'url' is set
    unless (exists $args{'url'}) {
      croak("Missing the required parameter 'url' when calling sms_email_sms_stripped_string_put");
    }

    # verify the required parameter 'rule_id' is set
    unless (exists $args{'rule_id'}) {
      croak("Missing the required parameter 'rule_id' when calling sms_email_sms_stripped_string_put");
    }

    # parse inputs
    my $_resource_path = '/sms/email-sms-stripped-strings/{rule_id}';

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
    if ( exists $args{'rule_id'}) {
        my $_base_variable = "{" . "rule_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'rule_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'url'}) {
        $_body_data = $args{'url'};
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
# sms_email_sms_stripped_strings_get
#
# Get list of email to sms stripped string rules
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
    __PACKAGE__->method_documentation->{ 'sms_email_sms_stripped_strings_get' } = { 
    	summary => 'Get list of email to sms stripped string rules',
        params => $params,
        returns => 'string',
        };
}
# @return string
#
sub sms_email_sms_stripped_strings_get {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/sms/email-sms-stripped-strings';

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