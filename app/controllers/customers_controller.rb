class CustomersController < ApplicationController
  def show
    @customer = Customer.find(params[:id])
    @island = Island.find(params[:id])
  end

  def service_providers_index
    @customer = Customer.find(params[:id])
    @service_providers = ServiceProvider.all
  end

  def new
    @customer = Customer.new
  end

  def create
    @customer = Customer.new(customer_params)
    @customer.save!
    redirect_to customer_path(@customer)
  end

  def edit
    @customer = Customer.find(params[:id])
  end

  def update
    @customer = Customer.find(params[:id])
    @customer.update(customer_params)
    redirect_to customer_path(@customer)
  end


  private

  def customer_params
    params.require(:customer).permit(:first_name, :last_name, :email, :island_id)
  end
end
