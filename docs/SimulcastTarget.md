# MuxRuby::SimulcastTarget

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | ID of the Simulcast Target | [optional] 
**passthrough** | **String** | Arbitrary Metadata set when creating a simulcast target. | [optional] 
**status** | **String** | The current status of the simulcast target. See Statuses below for detailed description.   * &#x60;idle&#x60;: Default status. When the parent live stream is in disconnected status, simulcast targets will be idle state.   * &#x60;starting&#x60;: The simulcast target transitions into this state when the parent live stream transition into connected state.   * &#x60;broadcasting&#x60;: The simulcast target has successfully connected to the third party live streaming service and is pushing video to that service.   * &#x60;errored&#x60;: The simulcast target encountered an error either while attempting to connect to the third party live streaming service, or mid-broadcasting. Compared to other errored statuses in the Mux Video API, a simulcast may transition back into the broadcasting state if a connection with the service can be re-established.  | [optional] 
**stream_key** | **String** | Stream Key represents an stream identifier for the third party live streaming service to simulcast the parent live stream too. | [optional] 
**url** | **String** | RTMP hostname including the application name for the third party live streaming service. | [optional] 


