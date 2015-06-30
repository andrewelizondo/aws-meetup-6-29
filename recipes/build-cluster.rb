require 'chef/provisioning/aws_driver'

with_driver 'aws'

# we're using self signed certs :(
with_machine_options convergence_options: { ssl_verify_mode: :verify_none }

#
# this is a basic machine resource, the default action here is
# for chef to go out, create this machine, and converge it
#

machine 'web1' do
  recipe 'simple-web'
  tag 'im-a-web-server'
end

#
# machine_batch allows us to give chef-provisioning
# a group of things to do in parallel
#

# machine_batch do

#   machine 'web2' do
#     recipe 'simple-web'
#     tag 'im-a-web-server'
#   end

#   machine 'web3' do
#     recipe 'simple-web'
#     tag 'im-a-web-server'
#   end

# end

# machine 'web4' do
#   recipe 'simple-web'
#   tag 'im-a-web-server'
# end


