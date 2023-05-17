defmodule ExTwilio.InstalledAddOn do
  defstruct [
    :sid,
    :account_sid,
    :friendly_name,
    :description,
    :configuration,
    :unique_name,
    :date_created,
    :date_updated,
    :url,
    :links
  ]

  use ExTwilio.Resource, import: [:stream, :all, :create, :destroy, :find, :update]

  def parents, do: [:marketplace]
end
