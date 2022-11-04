# install flyctl
curl -L https://fly.io/install.sh | sh

# need to add fly to path here

# signup for fly.io
fly auth signup

# create a postgres instance on fly.io
flyctl postgres create

# set up tunnel config to acess db
# fly wireguard create

# allocate an ip address for the db
flyctl ips allocate-v6 -a onlyaudio-db

# connect (ssh?) to the db with psql
# flyctl postgres connect -a onlyaudio-db

# set up a firewall rule to allow access to the db
fly wireguard create "personal" "dfw" "alec-macbook"

# activate wire guard
# wireguard app on mac
sudo apt install wireguard-tools openresolv
sudo cp alec-macbook.conf /etc/wireguard
wg-quick up basic


# check that the tunnel is active
dig +short txt _peer.internal fdaa:0:ce56
dig +noall +answer _apps.internal txt
