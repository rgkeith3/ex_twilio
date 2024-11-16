defmodule ExTwilio.SipCredentialListMapping do
  @moduledoc """
  Represents a SIP Credential List Mapping resource in the Twilio API.

  - [Twilio docs](https://www.twilio.com/docs/voice/sip/api/sip-credentiallistmapping-resource)
  """

  defstruct sid: nil,
            account_sid: nil,
            friendly_name: nil,
            date_created: nil,
            date_updated: nil,
            uri: nil

  use ExTwilio.Resource,
    import: [
      :stream,
      :all,
      :find,
      :create,
      :update,
      :destroy
    ]

  def resource_name, do: "Auth/Calls/CredentialListMappings"
  def resource_collection_name, do: "content"
  def parents, do: [:account, :sip_domain]
end
