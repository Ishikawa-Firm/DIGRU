class AddressesController < ApplicationController
  def show
    @address = Address.find(params[:id])
  end
end

