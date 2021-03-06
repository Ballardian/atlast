class WishlistItemsController < ApplicationController
  def index
    @user = User.find(params[:user_id])
    @wishlists = current_user.wishlist_items
    @places = []
    @wishlists.each { |w| @places << w.place }
  end

  def new
    @wishlist = WishlistItem.new
  end

  def create
    # raise
    @place = Place.find(params[:place_id])
    @wishlist_check = WishlistItem.where(place_id: @place.id, user_id: current_user.id)
    if @wishlist_check.empty?
      @wishlist = WishlistItem.new
      @wishlist.user = current_user
      @wishlist.place = @place
      if @wishlist.save
        respond_to do |format|
          # raise
          format.html { redirect_to place_path(@place) }
          format.js # <-- will render `app/views/reviews/create.js.erb`
        end
      else
        render :new
      end
    else
      @wishlist_check.destroy_all
      respond_to do |format|
        # raise
        format.html { redirect_to place_path(@place) }
        format.js # <-- will render `app/views/reviews/create.js.erb`
      end
    end
  end
end
