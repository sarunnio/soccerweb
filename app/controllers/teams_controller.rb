class TeamsController < ApplicationController
  def for_leagueid
  @teams = Team.find( :all, :conditions => [" league_id = ?", params[:id]]  ).sort_by{ |k| k['team_name'] }    
    respond_to do |format|
      format.json  { render :json => @teams }      
    end
  end
end