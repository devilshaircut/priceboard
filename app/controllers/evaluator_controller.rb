class EvaluatorController < ApplicationController

  def evaluate
    lookup = AmazonProductAdvertisingApi::Operations::Item::ItemLookup.new("0060883286")
    lookup.run
    @title = lookup.response.items.first.item_attributes.title
    @itemid = lookup.response.items.first.asin
  end
  
  def findauthor
    finditem = AmazonProductAdvertisingApi::Operations::Item::ItemLookup.new(params["itemnumber"])
    finditem.run
    if finditem.response.items.first != nil
      @author = finditem.response.items.first.item_attributes.author
    else
      @author = nil
    end
  end

end




