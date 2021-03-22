class CustomerListsController < ApplicationController
  def index
    @customer = Customer.find(params[:id])
    @service_provider = ServiceProvider.find(params[:id])
    @customer_lists = CustomerList.all
  end

  def new
    @customer_list = CustomerList.new
    redirect_to customer_customer_lists_path(@customer_list,@customer)
  end

  def create
    @customer_list = CustomerList.new(params[:customer_list])
    @customer_list.save
    redirect_to customer_customer_lists_path(@customer_list)
  end

  def edit
    @customer_list = CustomerList.find(params[:id])
  end

  def show
    @customer_list = CustomerList.find(params[:id])

  end

  def update
    @customer_list = CustomerList.find(params[:id])
    @customer_list.update(customer_list_params)
    redirect_to customer_list_path(@customer_list)
  end

private

  def customer_list_params
    params.require(:customer_list).permit(:customer_id, :service_provider_id)
  end
end
