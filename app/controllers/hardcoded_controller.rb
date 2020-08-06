class HardcodedController < ApplicationController
  def validation
    render json: { validity: true }
  end
end
