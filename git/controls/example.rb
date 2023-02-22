git_dir = '/workspaces/saf-training-lab-environment/git_test/.git'

# Git Resource
describe git(git_dir) do
  its('branches') { should include 'master' }
  its('branches') { should include 'testBranch' }
  its('current_branch') { should cmp 'master' }
  its('last_commit') { should cmp 'edc207f' }
  its('second_last_commit') { should cmp '8c30bff' }
end
