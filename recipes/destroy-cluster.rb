require 'chef/provisioning/aws_driver'

with_driver 'aws'

# we're using self signed certs :(
with_machine_options convergence_options: { ssl_verify_mode: :verify_none }

machine 'web1' do
  recipe 'simple-web'
  tag 'im-a-web-server'
  action :destroy
end

machine 'web2' do
  recipe 'simple-web'
  tag 'im-a-web-server'
  action :destroy
end

machine 'web3' do
  recipe 'simple-web'
  tag 'im-a-web-server'
  action :destroy
end

machine 'web4' do
  recipe 'simple-web'
  tag 'im-a-web-server'
  action :destroy
end

machine 'web5' do
  recipe 'simple-web'
  tag 'im-a-web-server'
  action :destroy
end
