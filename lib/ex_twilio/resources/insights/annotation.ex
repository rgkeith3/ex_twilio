defmodule ExTwilio.Insights.Annotation do
  @moduledoc """
  Represents Voice Insights Annotation Resource.

  - [Twilio docs](https://www.twilio.com/docs/voice/voice-insights/api/call/call-annotation-resource)
  """

  defstruct [
    :call_sid,
    :answered_by,
    :connectivity_issue,
    :quality_issues,
    :spam,
    :call_score,
    :comment,
    :incident
  ]

  use ExTwilio.Resource, import: [:find, :create]

  def parents, do: [%ExTwilio.Parent{module: ExTwilio.Insights.Voice, key: :call_sid}]
  def resource_name, do: "Annotation"
end
