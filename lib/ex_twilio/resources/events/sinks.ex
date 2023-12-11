defmodule ExTwilio.Events.Sinks do
  @moduledoc """
  Represents Event Streams Sink resource.

  Sinks are the destinations to which events selected in a subscription will be delivered

  - [Twilio docs](https://www.twilio.com/docs/events/event-streams/sink-resource)
  """

  defstruct [
    :date_created,
    :date_updated,
    :description,
    :sid,
    :sink_configuration,
    :sink_type,
    :status,
    :url,
    :links
  ]

  use ExTwilio.Resource, import: [:create]
end

