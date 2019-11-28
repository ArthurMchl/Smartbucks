class VouchersController < ApplicationController
  def index
    if params[:query].present?
      sql_query = "brands.name ILIKE ?"
      @vouchers = Voucher.joins(:brand).where(sql_query, "%#{params[:query]}%")
    else
      @vouchers = Voucher.all
    end
  end

  def show
    @voucher = voucher_set_id
  end

  def new
    if params[:step].present?
      @voucher = Voucher.new
      @brands  = Brand.all
    else
      redirect_to new_voucher_path(step: 1)
    end
  end

  def create
    @voucher = Voucher.new(voucher_params)
    brand = Brand.find(params[:voucher][:brand]) if params[:voucher][:brand].present?
    @voucher.brand = brand
    @voucher.user = current_user

    if @voucher.save
      redirect_to publish_voucher_path(@voucher)
    else
      redirect_to new_voucher_path(step: 1)
      flash[:alert] = "Une erreur est survenue"
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
