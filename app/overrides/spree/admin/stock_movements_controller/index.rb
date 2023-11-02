module Spree
  module Admin
    class StockMovementsController < ResourceController

      def index
        params[:q] ||= {}

        @search = collection.ransack(params[:q])

        @stock_movements = @search.result
        @stock_movements = @stock_movements.page(params[:page]).per(params[:per_page]) unless params[:per_page] == 'all'
      end
    end
  end
end
