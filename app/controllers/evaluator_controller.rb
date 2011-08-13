class EvaluatorController < ApplicationController
  def evaluate
    
    lookup = AmazonProductAdvertisingApi::Operations::Item::ItemLookup.new("0060883286")
    lookup.run
    @title = lookup.response.items.first.item_attributes.title
    @author = lookup.response.items.first.item_attributes.author
    @itemid = lookup.response.items.first.asin
    
  end

end




