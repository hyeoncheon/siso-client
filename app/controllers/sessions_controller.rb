class SessionsController < ApplicationController
  def create
    render :text => request.env['omniauth.auth'].to_yaml
  end
end
# vim:set ts=2 sw=2 expandtab:
