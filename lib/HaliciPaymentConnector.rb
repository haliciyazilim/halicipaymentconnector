require 'HaliciPaymentConnector/version'
require 'rest-client'
class HaliciPaymentConnector

  attr_accessor :token, :host

  def checkout(params)
    params[:token] = token
    RestClient.post("#{host}/payments/checkout", params) do |response, request, result|
      return JSON.parse(result.body)['payment_url']
    end
  end


  def check(payment_token)
    RestClient.post("#{host}/payments/check", {payment_token:payment_token,token:token}) do |response, request, result|
      return JSON.parse(result.body)['payment']
    end
  end

end
