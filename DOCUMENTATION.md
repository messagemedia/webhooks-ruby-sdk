# Getting started

TODO: Add a description

## How to Build

This client library is a Ruby gem which can be compiled and used in your Ruby and Ruby on Rails project. This library requires a few gems from the RubyGems repository.

1. Open the command line interface or the terminal and navigate to the folder containing the source code.
2. Run ``` gem build message_media_webhooks.gemspec ``` to build the gem.
3. Once built, the gem can be installed on the current work environment using ``` gem install message_media_webhooks-1.4.0.gem ```

![Building Gem](https://apidocs.io/illustration/ruby?step=buildSDK&workspaceFolder=MessageMediaWebhooks-Ruby&workspaceName=MessageMediaWebhooks-Ruby&projectName=message_media_webhooks&gemName=message_media_webhooks&gemVer=1.4.0)

## How to Use

The following section explains how to use the MessageMediaWebhooks Ruby Gem in a new Rails project using RubyMine&trade;. The basic workflow presented here is also applicable if you prefer using a different editor or IDE.

### 1. Starting a new project

Close any existing projects in RubyMine&trade; by selecting ``` File -> Close Project ```. Next, click on ``` Create New Project ``` to create a new project from scratch.

![Create a new project in RubyMine](https://apidocs.io/illustration/ruby?step=createNewProject0&workspaceFolder=MessageMediaWebhooks-Ruby&workspaceName=MessageMediaWebhooks&projectName=message_media_webhooks&gemName=message_media_webhooks&gemVer=1.4.0)

Next, provide ``` TestApp ``` as the project name, choose ``` Rails Application ``` as the project type, and click ``` OK ```.

![Create a new Rails Application in RubyMine - step 1](https://apidocs.io/illustration/ruby?step=createNewProject1&workspaceFolder=MessageMediaWebhooks-Ruby&workspaceName=MessageMediaWebhooks&projectName=message_media_webhooks&gemName=message_media_webhooks&gemVer=1.4.0)

In the next dialog make sure that correct *Ruby SDK* is being used (minimum 2.0.0) and click ``` OK ```.

![Create a new Rails Application in RubyMine - step 2](https://apidocs.io/illustration/ruby?step=createNewProject2&workspaceFolder=MessageMediaWebhooks-Ruby&workspaceName=MessageMediaWebhooks&projectName=message_media_webhooks&gemName=message_media_webhooks&gemVer=1.4.0)

This will create a new Rails Application project with an existing set of files and folder.

### 2. Add reference of the gem

In order to use the MessageMediaWebhooks gem in the new project we must add a gem reference. Locate the ```Gemfile``` in the *Project Explorer* window under the ``` TestApp ``` project node. The file contains references to all gems being used in the project. Here, add the reference to the library gem by adding the following line: ``` gem 'message_media_webhooks', '~> 1.4.0' ```

![Add references of the Gemfile](https://apidocs.io/illustration/ruby?step=addReference&workspaceFolder=MessageMediaWebhooks-Ruby&workspaceName=MessageMediaWebhooks&projectName=message_media_webhooks&gemName=message_media_webhooks&gemVer=1.4.0)

### 3. Adding a new Rails Controller

Once the ``` TestApp ``` project is created, a folder named ``` controllers ``` will be visible in the *Project Explorer* under the following path: ``` TestApp > app > controllers ```. Right click on this folder and select ``` New -> Run Rails Generator... ```.

![Run Rails Generator on Controllers Folder](https://apidocs.io/illustration/ruby?step=addCode0&workspaceFolder=MessageMediaWebhooks-Ruby&workspaceName=MessageMediaWebhooks&projectName=message_media_webhooks&gemName=message_media_webhooks&gemVer=1.4.0)

Selecting the said option will popup a small window where the generator names are displayed. Here, select the ``` controller ``` template.

![Create a new Controller](https://apidocs.io/illustration/ruby?step=addCode1&workspaceFolder=MessageMediaWebhooks-Ruby&workspaceName=MessageMediaWebhooks&projectName=message_media_webhooks&gemName=message_media_webhooks&gemVer=1.4.0)

Next, a popup window will ask you for a Controller name and included Actions. For controller name provide ``` Hello ``` and include an action named ``` Index ``` and click ``` OK ```.

![Add a new Controller](https://apidocs.io/illustration/ruby?step=addCode2&workspaceFolder=MessageMediaWebhooks-Ruby&workspaceName=MessageMediaWebhooks&projectName=message_media_webhooks&gemName=message_media_webhooks&gemVer=1.4.0)

A new controller class anmed ``` HelloController ``` will be created in a file named ``` hello_controller.rb ``` containing a method named ``` Index ```. In this method, add code for initialization and a sample for its usage.

![Initialize the library](https://apidocs.io/illustration/ruby?step=addCode3&workspaceFolder=MessageMediaWebhooks-Ruby&workspaceName=MessageMediaWebhooks&projectName=message_media_webhooks&gemName=message_media_webhooks&gemVer=1.4.0)

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

![Debug the TestApp](https://apidocs.io/illustration/ruby?step=addCode4&workspaceFolder=Webhooks-Ruby&workspaceName=MessageMediaWebhooks&projectName=message_media_webhooks&gemName=message_media_webhooks&gemVer=1.4.0&initLine=client%2520%253D%2520MessageMediaWebhooksClient.new%2528%2527basic_auth_user_name%2527%252C%2520%2527basic_auth_password%2527%2529)



# Class Reference

## <a name="list_of_controllers"></a>List of Controllers

* [WebhooksController](#webhooks_controller)

## <a name="webhooks_controller"></a>![Class: ](https://apidocs.io/img/class.png ".WebhooksController") WebhooksController

### Get singleton instance

The singleton instance of the ``` WebhooksController ``` class can be accessed from the API Client.

```ruby
webhooks_controller = client.webhooks
```

### <a name="create_webhook"></a>![Method: ](https://apidocs.io/img/method.png ".WebhooksController.create_webhook") create_webhook

> Create a webhook for one or more of the specified events.
> A webhook would typically have the following structure:
> ```
> {
>   "url": "http://webhook.com",
>   "method": "POST",
>   "encoding": "JSON",
>   "headers": {
>     "Account": "DeveloperPortal7000"
>   },
>   "events": [
>     "RECEIVED_SMS"
>   ],
>   "template": "{\"id\":\"$mtId\",\"status\":\"$statusCode\"}"
> }
> ```
> A valid webhook must consist of the following properties:
> - ```url``` The configured URL which will trigger the webhook when a selected event occurs.
> - ```method``` The methods to map CRUD (create, retrieve, update, delete) operations to HTTP requests.
> - ```encoding``` The format in which the payload will be returned. You can choose from ```JSON```, ```FORM_ENCODED``` or ```XML```. This will automatically add the Content-Type header for you so you don't have to add it again in the `headers` property.
> - ```headers``` HTTP header fields which provide required information about the request or response, or about the object sent in the message body. This should not include the `Content-Type` header.
> - ```events``` Event or events that will trigger the webhook. Atleast one event should be present.
> - ```template``` The structure of the payload that will be returned.
> #### Types of Events
> You can select all of the events (listed below) or combine them in whatever way you like but atleast one event must be used. Otherwise, the webhook won't be created.
> A webhook will be triggered when any one or more of the events occur:
> + **SMS**
>     + `RECEIVED_SMS` Receive an SMS
>     + `OPT_OUT_SMS` Opt-out occured
> + **MMS**
>     + `RECEIVED_MMS` Receive an MMS
> + **DR (Delivery Reports)**
>     + `ENROUTE_DR` Message is enroute
>     + `EXPIRED_DR` Message has expired
>     + `REJECTED_DR` Message is rejected
>     + `FAILED_DR` Message has failed
>     + `DELIVERED_DR` Message is delivered
>     + `SUBMITTED_DR` Message is submitted
> #### Template Parameters
> You can choose what to include in the data that will be sent as the payload via the Webhook.
> Keep in my mind, you must escape the JSON in the template value (see example above).
> The table illustrates a list of all the parameters that can be included in the template and which event types it can be applied to.
> | Data  | Parameter Name | Example | Event Type |
> |:--|--|--|--|--|
> | **Service Type**  | $type| `SMS` | `DR` `MO` `MO MMS` |
> | **Message ID**  | $mtId, $messageId| `877c19ef-fa2e-4cec-827a-e1df9b5509f7` | `DR` `MO` `MO MMS`|
> | **Delivery Report ID** |$drId, $reportId| `01e1fa0a-6e27-4945-9cdb-18644b4de043` | `DR` |
> | **Reply ID**| $moId, $replyId| `a175e797-2b54-468b-9850-41a3eab32f74` | `MO` `MO MMS` |
> | **Account ID**  | $accountId| `DeveloperPortal7000` | `DR` `MO` `MO MMS` |
> | **Message Timestamp**  | $submittedTimestamp| `2016-12-07T08:43:00.850Z` | `DR` `MO` `MO MMS` |
> | **Provider Timestamp**  | $receivedTimestamp| `2016-12-07T08:44:00.850Z` | `DR` `MO` `MO MMS` |
> | **Message Status** | $status| `enroute` | `DR` |
> | **Status Code**  | $statusCode| `200` | `DR` |
> | **External Metadata** | $metadata.get('key')| `name` | `DR` `MO` `MO MMS` |
> | **Source Address**| $sourceAddress| `+61491570156` | `DR` `MO` `MO MMS` |
> | **Destination Address**| $destinationAddress| `+61491593156` | `MO` `MO MMS` |
> | **Message Content**| $mtContent, $messageContent| `Hi Derp` | `DR` `MO` `MO MMS` |
> | **Reply Content**| $moContent, $replyContent| `Hello Derpina` | `MO` `MO MMS` |
> | **Retry Count**| $retryCount| `1` | `DR` `MO` `MO MMS` |
> *Note: A 400 response will be returned if the `url` is invalid, the `events`, `encoding` or `method` is null or the `headers` has a Content-Type  attribute.*


```ruby
def create_webhook(body); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| body |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
body = CreateWebhookRequest.new

result = webhooks_controller.create_webhook(body)

```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 400 | Unexpected error in API call. See HTTP response body for details. |
| 409 | Unexpected error in API call. See HTTP response body for details. |



### <a name="retrieve_webhook"></a>![Method: ](https://apidocs.io/img/method.png ".WebhooksController.retrieve_webhook") retrieve_webhook

> Retrieve all the webhooks created for the connected account.
> A successful request to the retrieve webhook endpoint will return a response body as follows:
> ```
> {
>     "page": 0,
>     "pageSize": 100,
>     "pageData": [
>         {
>             "url": "https://webhook.com",
>             "method": "POST",
>             "id": "8805c9d8-bef7-41c7-906a-69ede93aa024",
>             "encoding": "JSON",
>             "events": [
>                 "RECEIVED_SMS"
>             ],
>             "headers": {},
>             "template": "{\"id\":\"$mtId\", \"status\":\"$statusCode\"}"
>         }
>     ]
> }
> ```
> *Note: Response 400 is returned when the `page` query parameter is not valid or the `pageSize` query parameter is not valid.*


```ruby
def retrieve_webhook(page = nil,
                         page_size = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| page |  ``` Optional ```  | TODO: Add a parameter description |
| page_size |  ``` Optional ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
page = 127
page_size = 127

result = webhooks_controller.retrieve_webhook(page, page_size)

```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 400 | Unexpected error in API call. See HTTP response body for details. |



### <a name="delete_webhook"></a>![Method: ](https://apidocs.io/img/method.png ".WebhooksController.delete_webhook") delete_webhook

> Delete a webhook that was previously created for the connected account.
> A webhook can be cancelled by appending the UUID of the webhook to the endpoint and submitting a DELETE request to the /webhooks/messages endpoint.
> *Note: Only pre-created webhooks can be deleted. If an invalid or non existent webhook ID parameter is specified in the request, then a HTTP 404 Not Found response will be returned.*


```ruby
def delete_webhook(webhook_id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| webhook_id |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
webhook_id = a7f11bb0-f299-4861-a5ca-9b29d04bc5ad

webhooks_controller.delete_webhook(webhook_id)

```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 404 | TODO: Add an error description |



### <a name="update_webhook"></a>![Method: ](https://apidocs.io/img/method.png ".WebhooksController.update_webhook") update_webhook

> Update a webhook. You can update individual attributes or all of them by submitting a PATCH request to the /webhooks/messages endpoint (the same endpoint used above to delete a webhook)
> A successful request to the retrieve webhook endpoint will return a response body as follows:
> ```
> {
>     "url": "https://webhook.com",
>     "method": "POST",
>     "id": "04442623-0961-464e-9cbc-ec50804e0413",
>     "encoding": "JSON",
>     "events": [
>         "RECEIVED_SMS"
>     ],
>     "headers": {},
>     "template": "{\"id\":\"$mtId\", \"status\":\"$statusCode\"}"
> }
> ```
> *Note: Only pre-created webhooks can be deleted. If an invalid or non existent webhook ID parameter is specified in the request, then a HTTP 404 Not Found response will be returned.*


```ruby
def update_webhook(webhook_id,
                       body); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| webhook_id |  ``` Required ```  | TODO: Add a parameter description |
| body |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
webhook_id = a7f11bb0-f299-4861-a5ca-9b29d04bc5ad
body_value = "    {        \"url\": \"https://myurl.com\",        \"method\": \"POST\",        \"encoding\": \"FORM_ENCODED\",        \"events\": [            \"ENROUTE_DR\"        ],        \"template\": \"{\\\"id\\\":\\\"$mtId\\\", \\\"status\\\":\\\"$statusCode\\\"}\"    }";
body = JSON.parse(body_value);

result = webhooks_controller.update_webhook(webhook_id, body)

```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 400 | Unexpected error in API call. See HTTP response body for details. |
| 404 | TODO: Add an error description |



[Back to List of Controllers](#list_of_controllers)
