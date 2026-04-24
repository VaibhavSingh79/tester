# Generated Terraform for VPC: vbl-network-endpoint-main
# Account: Network | OU: Infrastructure

resource "aws_vpc" "vbl_network_endpoint_main" {
  cidr_block           = "10.0.0.0/21"
  enable_dns_support   = true
  enable_dns_hostnames = true
  
  tags = {
    Name        = "vbl-network-endpoint-main"
    Environment = "POC"
    AccountName = "Network"
  }
}


# ==========================================
# Subnets
# ==========================================

resource "aws_subnet" "vbl_ue2_network_db_A" {
  vpc_id     = aws_vpc.vbl_network_endpoint_main.id
  cidr_block = "10.0.0.0/26"
  
  # Map public subnets to assign public IPs automatically
  map_public_ip_on_launch = false

  tags = {
    Name = "vbl-ue2-network-db-A"
    Tier = "Private"
  }
}

resource "aws_subnet" "vbl_ue2_network_db_B" {
  vpc_id     = aws_vpc.vbl_network_endpoint_main.id
  cidr_block = "10.0.0.64/26"
  
  # Map public subnets to assign public IPs automatically
  map_public_ip_on_launch = false

  tags = {
    Name = "vbl-ue2-network-db-B"
    Tier = "Private"
  }
}

resource "aws_subnet" "vbl_ue2_network_db_C" {
  vpc_id     = aws_vpc.vbl_network_endpoint_main.id
  cidr_block = "10.0.0.128/26"
  
  # Map public subnets to assign public IPs automatically
  map_public_ip_on_launch = false

  tags = {
    Name = "vbl-ue2-network-db-C"
    Tier = "Private"
  }
}

resource "aws_subnet" "vbl_ue2_network_lb_A" {
  vpc_id     = aws_vpc.vbl_network_endpoint_main.id
  cidr_block = "10.0.1.0/25"
  
  # Map public subnets to assign public IPs automatically
  map_public_ip_on_launch = false

  tags = {
    Name = "vbl-ue2-network-lb-A"
    Tier = "Private"
  }
}

resource "aws_subnet" "vbl_ue2_network_lb_B" {
  vpc_id     = aws_vpc.vbl_network_endpoint_main.id
  cidr_block = "10.0.1.128/25"
  
  # Map public subnets to assign public IPs automatically
  map_public_ip_on_launch = false

  tags = {
    Name = "vbl-ue2-network-lb-B"
    Tier = "Private"
  }
}

resource "aws_subnet" "vbl_ue2_network_lb_C" {
  vpc_id     = aws_vpc.vbl_network_endpoint_main.id
  cidr_block = "10.0.2.0/25"
  
  # Map public subnets to assign public IPs automatically
  map_public_ip_on_launch = false

  tags = {
    Name = "vbl-ue2-network-lb-C"
    Tier = "Private"
  }
}

resource "aws_subnet" "vbl_ue2_network_app_A" {
  vpc_id     = aws_vpc.vbl_network_endpoint_main.id
  cidr_block = "10.0.3.0/24"
  
  # Map public subnets to assign public IPs automatically
  map_public_ip_on_launch = false

  tags = {
    Name = "vbl-ue2-network-app-A"
    Tier = "Private"
  }
}

resource "aws_subnet" "vbl_ue2_network_app_B" {
  vpc_id     = aws_vpc.vbl_network_endpoint_main.id
  cidr_block = "10.0.4.0/24"
  
  # Map public subnets to assign public IPs automatically
  map_public_ip_on_launch = false

  tags = {
    Name = "vbl-ue2-network-app-B"
    Tier = "Private"
  }
}

resource "aws_subnet" "vbl_ue2_network_app_C" {
  vpc_id     = aws_vpc.vbl_network_endpoint_main.id
  cidr_block = "10.0.5.0/24"
  
  # Map public subnets to assign public IPs automatically
  map_public_ip_on_launch = false

  tags = {
    Name = "vbl-ue2-network-app-C"
    Tier = "Private"
  }
}

