class VouchersController < ApplicationController
  def index
    if params[:query].present?
      @vouchers = Voucher.brand.where(name: params[:query].downcase.capitalize)
    else @vouchers = Voucher.all
    end
  end

  def show
    @voucher     = vouchers_set_id
    @hide_navbar = true
  end

  def new
    @voucher = Voucher.new
  end

  def create
    @voucher = Voucher.new(patient_params)
    if @voucher.save
      redirect_to voucher_path(@voucher)
    else
      render :new
    end
  end

  def edit
    @voucher = voucher_set_id
  end

  def update
    @voucher = voucher_set_id
    @voucher.update(voucher_params)
  end

  def destroy
    @voucher = voucher_set_id
    @voucher.delete
    redirect_to vouchers_path
  end

  def publish
  end

  private

  def voucher_set_id
    Voucher.find(params[:id])
  end

  def voucher_params
    params.require(:patient).permit(:value, :price,
                                    :end_date, :category,
                                    :bar_code, :status, :post_code,
                                    :phone_number, :email, :photo)
  end
end
