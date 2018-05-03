# Getting started

TODO: Add a description

## How to Build

This client library is a Ruby gem which can be compiled and used in your Ruby and Ruby on Rails project. This library requires a few gems from the RubyGems repository.

1. Open the command line interface or the terminal and navigate to the folder containing the source code.
2. Run ``` gem build message_media_webhooks.gemspec ``` to build the gem.
3. Once built, the gem can be installed on the current work environment using ``` gem install message_media_webhooks-1.0.0.gem ```

![Building Gem](https://apidocs.io/illustration/ruby?step=buildSDK&workspaceFolder=MessageMediaWebhooks-Ruby&workspaceName=MessageMediaWebhooks-Ruby&projectName=message_media_webhooks&gemName=message_media_webhooks&gemVer=1.0.0)

## How to Use

The following section explains how to use the MessageMediaWebhooks Ruby Gem in a new Rails project using RubyMine&trade;. The basic workflow presented here is also applicable if you prefer using a different editor or IDE.

### 1. Starting a new project

Close any existing projects in RubyMine&trade; by selecting ``` File -> Close Project ```. Next, click on ``` Create New Project ``` to create a new project from scratch.

![Create a new project in RubyMine](https://apidocs.io/illustration/ruby?step=createNewProject0&workspaceFolder=MessageMediaWebhooks-Ruby&workspaceName=MessageMediaWebhooks&projectName=message_media_webhooks&gemName=message_media_webhooks&gemVer=1.0.0)

Next, provide ``` TestApp ``` as the project name, choose ``` Rails Application ``` as the project type, and click ``` OK ```.

![Create a new Rails Application in RubyMine - step 1](https://apidocs.io/illustration/ruby?step=createNewProject1&workspaceFolder=MessageMediaWebhooks-Ruby&workspaceName=MessageMediaWebhooks&projectName=message_media_webhooks&gemName=message_media_webhooks&gemVer=1.0.0)

In the next dialog make sure that correct *Ruby SDK* is being used (minimum 2.0.0) and click ``` OK ```.

![Create a new Rails Application in RubyMine - step 2](https://apidocs.io/illustration/ruby?step=createNewProject2&workspaceFolder=MessageMediaWebhooks-Ruby&workspaceName=MessageMediaWebhooks&projectName=message_media_webhooks&gemName=message_media_webhooks&gemVer=1.0.0)

This will create a new Rails Application project with an existing set of files and folder.

### 2. Add reference of the gem

In order to use the MessageMediaWebhooks gem in the new project we must add a gem reference. Locate the ```Gemfile``` in the *Project Explorer* window under the ``` TestApp ``` project node. The file contains references to all gems being used in the project. Here, add the reference to the library gem by adding the following line: ``` gem 'message_media_webhooks', '~> 1.0.0' ```

![Add references of the Gemfile](https://apidocs.io/illustration/ruby?step=addReference&workspaceFolder=MessageMediaWebhooks-Ruby&workspaceName=MessageMediaWebhooks&projectName=message_media_webhooks&gemName=message_media_webhooks&gemVer=1.0.0)

### 3. Adding a new Rails Controller

Once the ``` TestApp ``` project is created, a folder named ``` controllers ``` will be visible in the *Project Explorer* under the following path: ``` TestApp > app > controllers ```. Right click on this folder and select ``` New -> Run Rails Generator... ```.

![Run Rails Generator on Controllers Folder](https://apidocs.io/illustration/ruby?step=addCode0&workspaceFolder=MessageMediaWebhooks-Ruby&workspaceName=MessageMediaWebhooks&projectName=message_media_webhooks&gemName=message_media_webhooks&gemVer=1.0.0)

Selecting the said option will popup a small window where the generator names are displayed. Here, select the ``` controller ``` template.

![Create a new Controller](https://apidocs.io/illustration/ruby?step=addCode1&workspaceFolder=MessageMediaWebhooks-Ruby&workspaceName=MessageMediaWebhooks&projectName=message_media_webhooks&gemName=message_media_webhooks&gemVer=1.0.0)

Next, a popup window will ask you for a Controller name and included Actions. For controller name provide ``` Hello ``` and include an action named ``` Index ``` and click ``` OK ```.

![Add a new Controller](https://apidocs.io/illustration/ruby?step=addCode2&workspaceFolder=MessageMediaWebhooks-Ruby&workspaceName=MessageMediaWebhooks&projectName=message_media_webhooks&gemName=message_media_webhooks&gemVer=1.0.0)

A new controller class anmed ``` HelloController ``` will be created in a file named ``` hello_controller.rb ``` containing a method named ``` Index ```. In this method, add code for initialization and a sample for its usage.

![Initialize the library](https://apidocs.io/illustration/ruby?step=addCode3&workspaceFolder=MessageMediaWebhooks-Ruby&workspaceName=MessageMediaWebhooks&projectName=message_media_webhooks&gemName=message_media_webhooks&gemVer=1.0.0)

## How to Test

You can test the generated SDK and the server with automatically generated test
cases as follows:

  1. From terminal/cmd navigate to the root directory of the SDK.
  2. Invoke: `bundle exec rake`

## Initialization

### Authentication
In order to setup authentication and initialization of the API client, you need the following information.

| Parameter | Description |
|-----------|-------------|
| basic_auth_user_name | The username to use with basic authentication |
| basic_auth_password | The password to use with basic authentication |



API client can be initialized as following.

```ruby
# Configuration parameters and credentials
basic_auth_user_name = 'basic_auth_user_name' # The username to use with basic authentication
basic_auth_password = 'basic_auth_password' # The password to use with basic authentication

client = MessageMediaWebhooks::MessageMediaWebhooksClient.new(
  basic_auth_user_name: basic_auth_user_name,
  basic_auth_password: basic_auth_password
)
```

The added initlization code can be debugged by putting a breakpoint in the ``` Index ``` method and running the project in debug mode by selecting ``` Run -> Debug 'Development: TestApp' ```.

![Debug the TestApp](https://apidocs.io/illustration/ruby?step=addCode4&workspaceFolder=Webhooks-Ruby&workspaceName=MessageMediaWebhooks&projectName=message_media_webhooks&gemName=message_media_webhooks&gemVer=1.0.0&initLine=client%2520%253D%2520MessageMediaWebhooksClient.new%2528%2527basic_auth_user_name%2527%252C%2520%2527basic_auth_password%2527%2529)



# Class Reference

## <a name="list_of_controllers"></a>List of Controllers

* [APIController](#api_controller)

## <a name="api_controller"></a>![Class: ](https://apidocs.io/img/class.png ".APIController") APIController

### Get singleton instance

The singleton instance of the ``` APIController ``` class can be accessed from the API Client.

```ruby
client_controller = client.client
```

### <a name="create"></a>![Method: ](https://apidocs.io/img/method.png ".APIController.create") create

> This will create a webhook for the specified `events`
> ### Parameters
> **list of supported parameters in `template` according to the message type :**
> you must escape the json for the template parameter. see example .
> | Data   | parameter name | DR| MO | MO MMS | Comment |
> |:--|--|--|--|--|--|
> | **service type**  | $type| ``OK`` |`OK`| `OK`| |
> | **Message ID**  | $mtId, $messageId| `OK` |`OK`| `OK`| |
> | **Delivery report ID** |$drId, $reportId | `OK` || | |
> | **Reply ID**| $moId, $replyId| |`OK`| `OK`||
> | **Account ID**  | $accountId| `OK` |`OK`| `OK`||
> | **Message Timestamp**  | $submittedTimestamp| `OK` |`OK`| `OK`||
> | **Provider Timestamp**  | $receivedTimestamp| `OK` |`OK`| `OK`||
> | **Message status** | $status| `OK` ||||
> | **Status code**  | $statusCode| `OK` ||||
> | **External metadata** | $metadata.get('key')| `OK` |`OK`| `OK`||
> | **Source address**| $sourceAddress| `OK` |`OK`| `OK`||
> | **Destination address**| $destinationAddress|  |`OK`| `OK`||
> | **Message content**| $mtContent, $messageContent| `OK` |`OK`| `OK`||
> | **Reply Content**| $moContent, $replyContent|  |`OK`| `OK`||
> | **Retry Count**| $retryCount| `OK` |`OK`| `OK`||
> **list of allowed  `events` :**
> you can combine all the events whatever the message type.(at least one Event set otherwise the webhook won't be created)
> + **events for SMS**
>     + `RECEIVED_SMS`
>     + `OPT_OUT_SMS`
> + **events for MMS**
>     + `RECEIVED_MMS`
> + **events for DR**
>     + `ENROUTE_DR`
>     + `EXPIRED_DR`
>     + `REJECTED_DR`
>     + `FAILED_DR`
>     + `DELIVERED_DR`
>     + `SUBMITTED_DR`
> a **Response 400 is returned when** :
>     <ul>
>      <li>the `url` is not valid </li>
>      <li>the `events` is null/empty </li>
>      <li>the `encoding` is null </li>
>      <li>the `method` is null </li>
>      <li>the `headers` has a `ContentType`  attribute </li>
>     </ul>


```ruby
def create(content_type,
               body); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| content_type |  ``` Required ```  | TODO: Add a parameter description |
| body |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
content_type = 'Content-Type'
body = CreateRequest.new

result = client_controller.create(content_type, body)

```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 400 | TODO: Add an error description |



### <a name="delete_delete_and_update_webhook"></a>![Method: ](https://apidocs.io/img/method.png ".APIController.delete_delete_and_update_webhook") delete_delete_and_update_webhook

> This will delete the webhook wuth the give id.
> a **Response 404 is returned when** :
>     <ul>
>      <li>there is no webhook  with this `webhookId` </li>
>     </ul>


```ruby
def delete_delete_and_update_webhook(webhook_id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| webhook_id |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
webhook_id = a7f11bb0-f299-4861-a5ca-9b29d04bc5ad

client_controller.delete_delete_and_update_webhook(webhook_id)

```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 404 | TODO: Add an error description |



### <a name="retrieve"></a>![Method: ](https://apidocs.io/img/method.png ".APIController.retrieve") retrieve

> This will retrieve all webhooks for the account we're connected with.
> a **Response 400 is returned when** :
>     <ul>
>      <li>the `page` query parameter is not valid </li>
>      <li>the `pageSize` query parameter is not valid </li>
>     </ul>


```ruby
def retrieve(page = nil,
                 page_size = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| page |  ``` Optional ```  | TODO: Add a parameter description |
| page_size |  ``` Optional ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
page = '1'
page_size = '10'

result = client_controller.retrieve(page, page_size)

```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 400 | TODO: Add an error description |



### <a name="update"></a>![Method: ](https://apidocs.io/img/method.png ".APIController.update") update

> This will update a webhook and returned the updated Webhook. 
> you can update all the attributes individually or together.
> PS : the new value will override the previous one.
> ### Parameters
> + same parameters rules as create webhook apply
>  a **Response 404 is returned when** :
>     <ul>
>      <li>there is no webhook with this `webhookId` </li>
>     </ul>   
>  a **Response 400 is returned when** :
>     <ul>
>       <li>all attributes are null </li>
>      <li>events array is empty </li>
>      <li>content-Type is set in the headers instead of using the `encoding` attribute  </li>
>     </ul>


```ruby
def update(webhook_id,
               content_type,
               body); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| webhook_id |  ``` Required ```  | TODO: Add a parameter description |
| content_type |  ``` Required ```  | TODO: Add a parameter description |
| body |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
webhook_id = UUID.new
content_type = 'Content-Type'
body = UpdateRequest.new

client_controller.update(webhook_id, content_type, body)

```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 404 | TODO: Add an error description |



[Back to List of Controllers](#list_of_controllers)



