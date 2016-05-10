class TenantsController < ApplicationController
  before_action :set_tenant, only: [:show, :edit, :update]
    
  def index
    @tenants = Tenant.all
  end

  def show
  end

  def new
    @tenant = Tenant.new
  end
  
  def edit
  end
  
  def create
  end
  
  def update
    if @tenant.update(tenant_params)
      redirect_to @tenant, notice: 'Tenant was successfully updated.'
    else
      render 'edit'
    end
  end
  
  def destroy
  end
  
  private

    def set_tenant
      @tenant = Tenant.find(params[:id])
    end

    def tenant_params
      params.require(:tenant).permit(:first_name, :last_name, :dob, :notes)
    end
    
end
