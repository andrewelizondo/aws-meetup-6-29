require 'chef/provisioning/aws_driver'

with_driver 'aws'

# we're using self signed certs :(
with_machine_options convergence_options: { ssl_verify_mode: :verify_none }

1.upto(5) do |i|
  machine "web#{i}" do
    action :destroy
  end
end
