#!/bin/dash
set -e

if [ ! -s "$LITECOIN_DATA/litecoin.conf" ]; then
	cat <<-EOF > "$LITECOIN_DATA/litecoin.conf"
	printtoconsole=1
	rpcallowip=::/0
	rpcpassword=${LITECOIN_RPC_PASSWORD:-password}
	rpcuser=${LITECOIN_RPC_USER:-litecoin}
	EOF
fi

exec "$@"
