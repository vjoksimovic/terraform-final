output "web_public_ip" {
  description = "The public IP address of the web server"
  value       = aws_eip.tutorial_web_eip[0].public_ip

  depends_on = [aws_eip.tutorial_web_eip]
}

output "web_public_dns" {
  description = "The public DNS address of the web server2"
  value       = aws_eip.tutorial_web_eip[0].public_dns
  depends_on = [aws_eip.tutorial_web_eip]
}

output "web_public_ip_2" {
  description = "The public IP address of the web server2"
  value       = aws_eip.tutorial_web_eip[1].public_ip

  depends_on = [aws_eip.tutorial_web_eip]
}

output "web_public_dns_2" {
  description = "The public DNS address of the web server2"
  value       = aws_eip.tutorial_web_eip[1].public_dns
  depends_on = [aws_eip.tutorial_web_eip]
}

output "database_endpoint" {
  description = "The endpoint of the database"
  value       = aws_db_instance.tutorial_database.address
}

output "database_port" {
  description = "The port of the database"
  value       = aws_db_instance.tutorial_database.port
}

output "tutorial_alb" {
  description = "The endpoint of the ALB"
  value       = aws_lb.tutorial_alb
}
