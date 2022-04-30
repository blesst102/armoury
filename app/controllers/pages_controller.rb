class PagesController < ApplicationController
  def index
      # @armss = Armrequest.order("created_at").last
      # @arms = Arm.all.count
       @armreq = Armrequest.all.count
       @armretcount = Armrequest.where('return_status = ?', 'Returned').count
      # @armret = ArmReturn.all.count
      # @user = User.all.count
      @armret = Armrequest.all.where('return_status = ?', 'Returned')
       @armreqtime = Armrequest.where('request_date = ?', Date.today.to_date).count
      @approve = Armrequest.all.where('approve = ?', 'Approve')
     @arms = Arm.all.count

     @shipments = Shipment.all.count
  end
end
