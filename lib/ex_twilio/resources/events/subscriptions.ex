defmodule ExTwilio.Events.Subscriptions do
  @moduledoc """
  Represents Event Streams Subscriptions resource.

  You can use the Subscriptions API to subscribe to specific Twilio events and versions, and manage your subscriptions. 

  - [Twilio docs](https://www.twilio.com/docs/events/event-streams/subscription)
  """

  defstruct [
    :account_sid,
    :sid,
    :date_created,
    :date_updated,
    :description,
    :sink_sid,
    :url,
    :links
  ]

  use ExTwilio.Resource, import: [:create]
end

