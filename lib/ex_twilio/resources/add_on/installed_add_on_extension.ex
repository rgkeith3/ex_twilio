defmodule ExTwilio.InstalledAddOn.Extension do
  @moduledoc false
  defstruct [
    :sid,
    :installed_add_on_sid,
    :friendly_name,
    :product_name,
    :unique_name,
    :enabled,
    :url
  ]

  use ExTwilio.Resource, import: [:stream, :all, :create, :destroy, :find, :update]

  def parents, do: [:installed_add_on]
end
