defmodule ExTwilio.Insights.Settings do
  @moduledoc """
  Represents Voice Insights Settings Resource.

  - [Twilio docs](https://www.twilio.com/docs/voice/voice-insights/api/call/voice-insights-settings-resource)
  """

  defstruct [
    :account_sid,
    :advanced_features,
    :voice_trace,
    :url,
    :subaccount_sid
  ]

  use ExTwilio.Resource, import: [:find, :create]

  def resource_name, do: "Voice/Settings"
end
