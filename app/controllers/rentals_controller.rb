class RentalsController < ApplicationController
  def index
    @rental_products = Rental.all
  end
end