defmodule ExTwilio.Insights.Voice do
  @moduledoc """
  This is module only exists to add "Voice" to url before each of the Insights urls
  the Insights urls seem to break the pattern of the rest of the Twilio base urls
  """

  def resource_name, do: "Voice"
end
