class EntriesController < ApplicationController
  def index
    @entries = Entry.all
  end

  def new
    @place_id = params["place_id"]
  end

  def create
    entry = Entry.new
    entry["place_id"] = params["place_id"]
    entry["title"] = params["title"]
    entry["description"] = params["description"]
    entry["occurred_on"] = params["occurred_on"]
    entry.save
    redirect_to "/places/" + params["place_id"]
  end

end