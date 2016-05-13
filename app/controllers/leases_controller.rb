class LeasesController < ApplicationController
  before_action :set_lease, only: [:show, :edit, :update, :destroy]
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
  
  private

    def set_lease
      @lease = Lease.find(params[:id])
    end

    def lease_params
      params.require(:lease).permit(:start_date, :end_date, :full_lease, :notes, :tenant_id, :apartment_id, :monthly_rent, :paid_rent)
    end
    
end
