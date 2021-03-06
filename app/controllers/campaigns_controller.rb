class CampaignsController < ApplicationController
  before_action :set_campaign, only: [:show, :edit, :update, :destroy]

  # GET /campaigns
  # GET /campaigns.json
  def index
    @campaigns = Advertiser.find(params[:advertiser_id]).campaigns
  end

  def all
    @campaigns = Campaign.all
  end

  # GET /campaigns/1
  # GET /campaigns/1.json
  def show        
      shortlisted_influencers = @campaign.shortlisted_influencers
      sreejay = Influencer.where(first_name: 'Sreejay').first
      rec_inf = []
      rec_inf << sreejay unless shortlisted_influencers.member?(sreejay)
      rec_inf << (Influencer.all - shortlisted_influencers).sample(5)
      @recommended_influencers = rec_inf 
      @shortlisted_influencers = shortlisted_influencers
      @interested_influencers = Influencer.all.sample(2)
  end

  # GET /campaigns/new
  def new
    @campaign = Campaign.new
  end

  # GET /campaigns/1/edit
  def edit
  end

  # POST /campaigns
  # POST /campaigns.json
  def create
      @campaign = Campaign.new(campaign_params.merge({advertiser_id: params[:advertiser_id]}))

    respond_to do |format|
      if @campaign.save
          format.html { redirect_to advertiser_campaign_path(@campaign.advertiser_id, @campaign), notice: 'Campaign was successfully created.' }
        format.json { render :show, status: :created, location: @campaign }
      else
        format.html { render :new }
        format.json { render json: @campaign.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /campaigns/1
  # PATCH/PUT /campaigns/1.json
  def update
    respond_to do |format|
      if @campaign.update(campaign_params)
        format.html { redirect_to @campaign, notice: 'Campaign was successfully updated.' }
        format.json { render :show, status: :ok, location: @campaign }
      else
        format.html { render :edit }
        format.json { render json: @campaign.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /campaigns/1
  # DELETE /campaigns/1.json
  def destroy
    @campaign.destroy
    respond_to do |format|
      format.html { redirect_to campaigns_url, notice: 'Campaign was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_campaign
      @campaign = Campaign.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def campaign_params
      params.require(:campaign).permit(:price, :description, :industry)
    end
end
