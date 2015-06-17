require 'HaliciPaymentConnector/version'
require 'rest-client'
class HaliciPaymentConnector

  attr_accessor :token, :host

  def checkout(params)
    params[:token] = token
    RestClient.post(host, params) do |response, request, result|
      return JSON.parse(result.body)['payment_url']
    end
  end

end
