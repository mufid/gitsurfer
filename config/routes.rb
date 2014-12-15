Gitsurfer::Application.routes.draw do

  # We don't need API versioning since this is
  # local application
  namespace 'api' do |variable|
    # Stage file into commit
    resource 'stage'

    # Commit
    # #index show specific commit from HEAD
    # #show commit --> get specific commit log by SHA1
    resource 'commit'
  end

  # Catch all route in single controller,
  # let ember handle the rest
end
