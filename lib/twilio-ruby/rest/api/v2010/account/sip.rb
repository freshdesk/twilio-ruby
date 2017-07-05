##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /

module Twilio
  module REST
    class Api < Domain
      class V2010 < Version
        class AccountContext < InstanceContext
          class SipList < ListResource
            ##
            # Initialize the SipList
            # @param [Version] version Version that contains the resource
            # @param [String] account_sid A 34 character string that uniquely identifies this
            #   resource.
            # @return [SipList] SipList
            def initialize(version, account_sid: nil)
              super(version)

              # Path Solution
              @solution = {
                  account_sid: account_sid
              }

              # Components
              @domains = nil
              @regions = nil
              @ip_access_control_lists = nil
              @credential_lists = nil
            end

            ##
            # Access the domains
            # @param [String] sid The domain sid that uniquely identifies the resource
            # @return [DomainList] if a(n) DomainList object was created.
            # @return [DomainContext] if a(n) DomainContext object was created.
            def domains(sid=:unset)
              if sid != :unset
                return DomainContext.new(
                    @version,
                    @solution[:account_sid],
                    sid,
                )
              end

                @domains ||= DomainList.new(
                    @version,
                    account_sid: @solution[:account_sid],
                )
            end

            ##
            # Access the regions
            # @return [RegionList] if a(n) RegionList object was created.
            # @return [RegionContext] if a(n) RegionContext object was created.
            def regions
              @regions ||= RegionList.new(
                  @version,
                  account_sid: @solution[:account_sid],
              )
            end

            ##
            # Access the ip_access_control_lists
            # @param [String] sid The ip-access-control-list Sid that uniquely identifies this
            #   resource
            # @return [IpAccessControlListList] if a(n) IpAccessControlListList object was created.
            # @return [IpAccessControlListContext] if a(n) IpAccessControlListContext object was created.
            def ip_access_control_lists(sid=:unset)
              if sid != :unset
                return IpAccessControlListContext.new(
                    @version,
                    @solution[:account_sid],
                    sid,
                )
              end

                @ip_access_control_lists ||= IpAccessControlListList.new(
                    @version,
                    account_sid: @solution[:account_sid],
                )
            end

            ##
            # Access the credential_lists
            # @param [String] sid The credential Sid that uniquely identifies this resource
            # @return [CredentialListList] if a(n) CredentialListList object was created.
            # @return [CredentialListContext] if a(n) CredentialListContext object was created.
            def credential_lists(sid=:unset)
              if sid != :unset
                return CredentialListContext.new(
                    @version,
                    @solution[:account_sid],
                    sid,
                )
              end

                @credential_lists ||= CredentialListList.new(
                    @version,
                    account_sid: @solution[:account_sid],
                )
            end

            ##
            # Provide a user friendly representation
            def to_s
              '#<Twilio.Api.V2010.SipList>'
            end
          end

          class SipPage < Page
            ##
            # Initialize the SipPage
            # @param [Version] version Version that contains the resource
            # @param [Response] response Response from the API
            # @param [Hash] solution Path solution for the resource
            # @param [String] account_sid A 34 character string that uniquely identifies this
            #   resource.
            # @return [SipPage] SipPage
            def initialize(version, response, solution)
              super(version, response)

              # Path Solution
              @solution = solution
            end

            ##
            # Build an instance of SipInstance
            # @param [Hash] payload Payload response from the API
            # @return [SipInstance] SipInstance
            def get_instance(payload)
              SipInstance.new(
                  @version,
                  payload,
                  account_sid: @solution[:account_sid],
              )
            end

            ##
            # Provide a user friendly representation
            def to_s
              '<Twilio.Api.V2010.SipPage>'
            end
          end

          class SipInstance < InstanceResource
            ##
            # Initialize the SipInstance
            # @param [Version] version Version that contains the resource
            # @param [Hash] payload payload that contains response from Twilio
            # @param [String] account_sid A 34 character string that uniquely identifies this
            #   resource.
            # @return [SipInstance] SipInstance
            def initialize(version, payload, account_sid: nil)
              super(version)
            end

            ##
            # Provide a user friendly representation
            def to_s
              "<Twilio.Api.V2010.SipInstance>"
            end
          end
        end
      end
    end
  end
end