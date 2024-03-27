resource "aws_vpn_gateway" "small_network-useast1-vpn_gateway" {
  vpc_id = var.vpc_id
}

resource "aws_customer_gateway" "small_network-useast1-customer_gateway" {
  bgp_asn    = 65000
  ip_address = "172.0.0.1"
  type       = "ipsec.1"
}

resource "aws_vpn_connection" "main" {
  vpn_gateway_id      = aws_vpn_gateway.small_network-useast1-vpn_gateway.id
  customer_gateway_id = aws_customer_gateway.small_network-useast1-customer_gateway.id
  type                = "ipsec.1"
  static_routes_only  = true
}