#!/usr/bin/with-contenv bashio

export PORT="$(bashio::addon.ingress_port)"

yarn server
