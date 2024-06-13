defmodule ExTwilio.Events.SubscribedEvents do
  @moduledoc """
  Represents Event Streams Subscription Events resource.

  """

  defstruct [
    :account_sid,
    :schema_version,
    :subscription_sid,
    :type,
    :url
  ]

  use ExTwilio.Resource, import: [:stream, :all, :create, :destroy]

  def parents,
    do: [%ExTwilio.Parent{module: ExTwilio.Events.Subscriptions, key: :subscription_sid}]

  def resource_collection_name, do: "types"

  def resource_name, do: "SubscribedEvents"
end
