class CouponsController < ApplicationController 
  
  def index 
    @coupons = Coupon.all 
  end 
  
  def show 
    @coupon = Coupon.find(params[:name])
  end 
  
  def new 
  end 
  
  def create 
    @coupon = Coupon.new 
    @coupon[:coupon_code] = params[:name][:code]
    @coupon[:store] = params[:coupon][:store]
    @coupon.save 
  end 
  
end 