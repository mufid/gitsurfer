Gitsurfer::Application.routes.draw do

  get "static/home"
  # We don't need API versioning since this is
  # local application
  namespace 'api' do |variable|
    # Stage file into commit
    # GET --> return
    resource 'stage'

    # Commit
    # #index show specific commit from HEAD
    # #show commit --> get specific commit log by SHA1
    resource 'commit'
  end

  # Catch all route in single controller,
  # let ember handle the rest
  match '*path', to: 'static#home', via: :all
end
