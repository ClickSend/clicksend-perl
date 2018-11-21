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
package WWW::ClickSendClient::ContactListApi;

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
# lists_by_list_id_delete
#
# ListsByListIdDelete
# 
# @param int $list_id List ID (required)
{
    my $params = {
    'list_id' => {
        data_type => 'int',
        description => 'List ID',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'lists_by_list_id_delete' } = { 
    	summary => 'ListsByListIdDelete',
        params => $params,
        returns => 'string',
        };
}
# @return string
#
sub lists_by_list_id_delete {
    my ($self, %args) = @_;

    # verify the required parameter 'list_id' is set
    unless (exists $args{'list_id'}) {
      croak("Missing the required parameter 'list_id' when calling lists_by_list_id_delete");
    }

    # parse inputs
    my $_resource_path = '/lists/{list_id}';

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
    if ( exists $args{'list_id'}) {
        my $_base_variable = "{" . "list_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'list_id'});
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
# lists_by_list_id_get
#
# Get specific contact list
# 
# @param int $list_id List ID (required)
{
    my $params = {
    'list_id' => {
        data_type => 'int',
        description => 'List ID',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'lists_by_list_id_get' } = { 
    	summary => 'Get specific contact list',
        params => $params,
        returns => 'string',
        };
}
# @return string
#
sub lists_by_list_id_get {
    my ($self, %args) = @_;

    # verify the required parameter 'list_id' is set
    unless (exists $args{'list_id'}) {
      croak("Missing the required parameter 'list_id' when calling lists_by_list_id_get");
    }

    # parse inputs
    my $_resource_path = '/lists/{list_id}';

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
    if ( exists $args{'list_id'}) {
        my $_base_variable = "{" . "list_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'list_id'});
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
# lists_by_list_id_put
#
# Update specific contact list
# 
# @param int $list_id Your list id (required)
# @param string $list_name Your new list name (required)
{
    my $params = {
    'list_id' => {
        data_type => 'int',
        description => 'Your list id',
        required => '1',
    },
    'list_name' => {
        data_type => 'string',
        description => 'Your new list name',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'lists_by_list_id_put' } = { 
    	summary => 'Update specific contact list',
        params => $params,
        returns => 'string',
        };
}
# @return string
#
sub lists_by_list_id_put {
    my ($self, %args) = @_;

    # verify the required parameter 'list_id' is set
    unless (exists $args{'list_id'}) {
      croak("Missing the required parameter 'list_id' when calling lists_by_list_id_put");
    }

    # verify the required parameter 'list_name' is set
    unless (exists $args{'list_name'}) {
      croak("Missing the required parameter 'list_name' when calling lists_by_list_id_put");
    }

    # parse inputs
    my $_resource_path = '/lists/{list_id}';

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
    if ( exists $args{'list_id'}) {
        my $_base_variable = "{" . "list_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'list_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'list_name'}) {
        $_body_data = $args{'list_name'};
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
# lists_get
#
# Get all contact lists
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
    __PACKAGE__->method_documentation->{ 'lists_get' } = { 
    	summary => 'Get all contact lists',
        params => $params,
        returns => 'string',
        };
}
# @return string
#
sub lists_get {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/lists';

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
# lists_import_by_list_id_post
#
# Import contacts to list
# 
# @param int $list_id Your contact list id you want to access. (required)
# @param ContactListImport $file ContactListImport model (required)
{
    my $params = {
    'list_id' => {
        data_type => 'int',
        description => 'Your contact list id you want to access.',
        required => '1',
    },
    'file' => {
        data_type => 'ContactListImport',
        description => 'ContactListImport model',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'lists_import_by_list_id_post' } = { 
    	summary => 'Import contacts to list',
        params => $params,
        returns => 'string',
        };
}
# @return string
#
sub lists_import_by_list_id_post {
    my ($self, %args) = @_;

    # verify the required parameter 'list_id' is set
    unless (exists $args{'list_id'}) {
      croak("Missing the required parameter 'list_id' when calling lists_import_by_list_id_post");
    }

    # verify the required parameter 'file' is set
    unless (exists $args{'file'}) {
      croak("Missing the required parameter 'file' when calling lists_import_by_list_id_post");
    }

    # parse inputs
    my $_resource_path = '/lists/{list_id}/import';

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

    # path params
    if ( exists $args{'list_id'}) {
        my $_base_variable = "{" . "list_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'list_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'file'}) {
        $_body_data = $args{'file'};
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
# lists_post
#
# Create new contact list
# 
# @param string $list_name Your contact list name (required)
{
    my $params = {
    'list_name' => {
        data_type => 'string',
        description => 'Your contact list name',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'lists_post' } = { 
    	summary => 'Create new contact list',
        params => $params,
        returns => 'string',
        };
}
# @return string
#
sub lists_post {
    my ($self, %args) = @_;

    # verify the required parameter 'list_name' is set
    unless (exists $args{'list_name'}) {
      croak("Missing the required parameter 'list_name' when calling lists_post");
    }

    # parse inputs
    my $_resource_path = '/lists';

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
    if ( exists $args{'list_name'}) {
        $_body_data = $args{'list_name'};
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
# lists_remove_duplicates_by_list_id_put
#
# Remove duplicate contacts
# 
# @param int $list_id Your list id (required)
# @param Fields $fields Fields model (required)
{
    my $params = {
    'list_id' => {
        data_type => 'int',
        description => 'Your list id',
        required => '1',
    },
    'fields' => {
        data_type => 'Fields',
        description => 'Fields model',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'lists_remove_duplicates_by_list_id_put' } = { 
    	summary => 'Remove duplicate contacts',
        params => $params,
        returns => 'string',
        };
}
# @return string
#
sub lists_remove_duplicates_by_list_id_put {
    my ($self, %args) = @_;

    # verify the required parameter 'list_id' is set
    unless (exists $args{'list_id'}) {
      croak("Missing the required parameter 'list_id' when calling lists_remove_duplicates_by_list_id_put");
    }

    # verify the required parameter 'fields' is set
    unless (exists $args{'fields'}) {
      croak("Missing the required parameter 'fields' when calling lists_remove_duplicates_by_list_id_put");
    }

    # parse inputs
    my $_resource_path = '/lists/{list_id}/remove-duplicates';

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
    if ( exists $args{'list_id'}) {
        my $_base_variable = "{" . "list_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'list_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'fields'}) {
        $_body_data = $args{'fields'};
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