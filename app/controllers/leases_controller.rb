class LeasesController < ApplicationController
  before_action :set_lease, only: [:show, :edit, :update, :destroy, :new_rent]
  before_action :authenticate_user!
    
  def index
    @leases = Lease.all
  end

  def show
  end

  def new
    @lease = Lease.new
  end
  
  def edit
  end
  
  def create
    @lease = Lease.new(lease_params)
  
    if @lease.save 
        redirect_to root_path, notice: "Successfully created new Lease for #{@lease.apartment.unit_name}"
    else
        render 'new'
    end
  end
  
  def update
    if @lease.update(lease_params)
      redirect_to root_path, notice: 'Lease was successfully updated.'
    else
      render 'edit'
    end
  end
  
  def destroy
    @lease.destroy
    redirect_to root_path
  end
  
  def new_rent
    @lease.paid_rent += params[:new_rent].to_i
    @lease.save
    if @lease.rent_owed == 0
      flash[:alert] = "Tenant is up to date!"
    elsif @lease.rent_owed > 0
      flash[:notice] = "Tenant still owes $#{@lease.rent_owed}"
    elsif @lease.rent_owed < 0
      flash[:notice] = "Tenant has a credit of $#{@lease.rent_owed.abs}!"
    end
    redirect_to @lease.apartment
  end
  
  private

    def set_lease
      @lease = Lease.find(params[:id])
    end

    def lease_params
      params.require(:lease).permit(:start_date, :end_date, :full_lease, :notes, :tenant_id, :apartment_id, :monthly_rent, :paid_rent)
    end
    
end
