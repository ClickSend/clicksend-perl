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
package WWW::ClickSendClient::MasterEmailTemplatesApi;

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
# master_email_template_categories_get
#
# Get all master email template categories
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
    __PACKAGE__->method_documentation->{ 'master_email_template_categories_get' } = { 
    	summary => 'Get all master email template categories',
        params => $params,
        returns => 'string',
        };
}
# @return string
#
sub master_email_template_categories_get {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/email/master-templates-categories';

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
# master_email_template_category_get
#
# Get specific master email template category
# 
# @param int $category_id Email category id (required)
{
    my $params = {
    'category_id' => {
        data_type => 'int',
        description => 'Email category id',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'master_email_template_category_get' } = { 
    	summary => 'Get specific master email template category',
        params => $params,
        returns => 'string',
        };
}
# @return string
#
sub master_email_template_category_get {
    my ($self, %args) = @_;

    # verify the required parameter 'category_id' is set
    unless (exists $args{'category_id'}) {
      croak("Missing the required parameter 'category_id' when calling master_email_template_category_get");
    }

    # parse inputs
    my $_resource_path = '/email/master-templates-categories/{category_id}';

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
    if ( exists $args{'category_id'}) {
        my $_base_variable = "{" . "category_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'category_id'});
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
# master_email_template_get
#
# Get specific master email template
# 
# @param int $template_id Email template id (required)
{
    my $params = {
    'template_id' => {
        data_type => 'int',
        description => 'Email template id',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'master_email_template_get' } = { 
    	summary => 'Get specific master email template',
        params => $params,
        returns => 'string',
        };
}
# @return string
#
sub master_email_template_get {
    my ($self, %args) = @_;

    # verify the required parameter 'template_id' is set
    unless (exists $args{'template_id'}) {
      croak("Missing the required parameter 'template_id' when calling master_email_template_get");
    }

    # parse inputs
    my $_resource_path = '/email/master-templates/{template_id}';

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
    if ( exists $args{'template_id'}) {
        my $_base_variable = "{" . "template_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'template_id'});
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
# master_email_templates_get
#
# Get all master email templates
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
    __PACKAGE__->method_documentation->{ 'master_email_templates_get' } = { 
    	summary => 'Get all master email templates',
        params => $params,
        returns => 'string',
        };
}
# @return string
#
sub master_email_templates_get {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/email/master-templates';

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
# master_email_templates_in_category_get
#
# Get all master email templates in a category
# 
# @param int $category_id Email category id (required)
# @param int $page Page number (optional, default to 1)
# @param int $limit Number of records per page (optional, default to 10)
{
    my $params = {
    'category_id' => {
        data_type => 'int',
        description => 'Email category id',
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
    __PACKAGE__->method_documentation->{ 'master_email_templates_in_category_get' } = { 
    	summary => 'Get all master email templates in a category',
        params => $params,
        returns => 'string',
        };
}
# @return string
#
sub master_email_templates_in_category_get {
    my ($self, %args) = @_;

    # verify the required parameter 'category_id' is set
    unless (exists $args{'category_id'}) {
      croak("Missing the required parameter 'category_id' when calling master_email_templates_in_category_get");
    }

    # parse inputs
    my $_resource_path = '/email/master-templates-categories/{category_id}/master-templates';

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

    # path params
    if ( exists $args{'category_id'}) {
        my $_base_variable = "{" . "category_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'category_id'});
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

1;
