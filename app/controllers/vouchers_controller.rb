class VouchersController < ApplicationController
  def index
    if params[:query].present?
      @vouchers = Voucher.brand.where(name: params[:query].downcase.capitalize)
    else @vouchers = Voucher.all
    end
  end

  def show
    @voucher = voucher_set_id
  end

  def new
    @voucher = Voucher.new
    @brands  = Brand.all
  end

  def create
    @voucher = Voucher.new(voucher_params)
    brand = Brand.find(params[:voucher][:brand])
    @voucher.brand = brand
    @voucher.user = current_user

    if @voucher.save
      redirect_to publish_voucher_path(@voucher)
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
    @voucher = voucher_set_id
  end

  private

  def voucher_set_id
    Voucher.find(params[:id])
  end

  def voucher_params
    params.require(:voucher).permit(:value, :price, :end_date, :category, :bar_code)
  end
end
