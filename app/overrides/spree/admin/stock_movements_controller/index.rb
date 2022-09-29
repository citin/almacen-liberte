module Spree
    module Admin
      class StockMovementsController < ResourceController

        def index
            params[:q] ||= {}

            @search = collection.ransack(params[:q])
            @stock_movements = @search.result.page(params[:page]).per(params[:per_page])
        end
      end
    end
end
