class SlicerConfigsController < ApplicationController
  before_action :set_slicer_config, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @slicer_configs = SlicerConfig.all
    respond_with(@slicer_configs)
  end

  def show
    respond_with(@slicer_config)
  end

  def new
    @slicer_config = SlicerConfig.new
    respond_with(@slicer_config)
  end

  def edit
  end

  def create
    @slicer_config = SlicerConfig.new(slicer_config_params)
    @slicer_config.save
    respond_with(@slicer_config)
  end

  def update
    @slicer_config.update(slicer_config_params)
    respond_with(@slicer_config)
  end

  def destroy
    @slicer_config.destroy
    respond_with(@slicer_config)
  end

  private
    def set_slicer_config
      @slicer_config = SlicerConfig.find(params[:id])
    end

    def slicer_config_params
      params[:slicer_config]
    end
end
