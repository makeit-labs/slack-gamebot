module Api
  module Endpoints
    class StatusEndpoint < Grape::API
      prefix :api
      format :json

      namespace :status do
        desc 'Get system status.'
        get do
          present self, with: Api::Presenters::StatusPresenter
        end
      end
    end
  end
end
