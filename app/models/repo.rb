require_dependency 'git_lib'

class Repo < ActiveRecord::Base

  def commits
    git_check
    @repo.commits
  end

  def file_status
    git_check
    @repo.file_status
  end

  private

  # Create the private repository object
  def git_check
    # May throw InvalidRepositoryException
    #   - because of invalid path
    #   - or broken git repository
    @repo = GitLib::Repo.new(path)
  end
  
end

#
# Latest Schema
# --------------------
# id           int
# title        string
# path         string
#
# EOF - do not delete this