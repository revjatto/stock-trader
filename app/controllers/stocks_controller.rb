class StocksController < ApplicationController
    
def search
    
if params[:stock]
@stock = Stock.find_by_ticker(params[:stock])
@stock ||= Stock.new_from_lookup(params[:stock])
end

if @stock
# render partial: 'lookup'
render json: @stock
search_stocks?stock=AAPL
search_stocks?stock=GOOG
else
render status: :not_found, nothing: true
end
end

end