require_dependency "status_engine/application_controller"

module StatusEngine
  class StatusController < ApplicationController
    respond_to :json

    def index
      body = {
        status: "OK",
        revision: current_revision,
      }
      render :json => body
    end

    private
    def current_revision
      revision_file = Rails.root.join("REVISION")
      ( File.exist?(revision_file) ? File.read(revision_file) : `cd #{Rails.root} && git rev-parse HEAD` ).chomp
    end
  end
end
