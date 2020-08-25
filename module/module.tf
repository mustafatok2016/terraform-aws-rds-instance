module "db" {
    source = "terraform-aws-rds-instance"
    region = "us-east-2"
    subnet_ids = [
    "subnet-01fd890eaff2139b7", 
    "subnet-06e2b411c295d270d", 
    "subnet-00f8f8482e906ba1f"
    ]
    security_group_name = "db"
    allowed_hosts = [
    "0.0.0.0/0"
    ]
    db_name = "dbname"
    engine = "aurora"
    engine_version = "5.6.10a"
    instance_class = "db.t2.micro"
    username = "foo"
    password = "foobarbaz"
    publicly_accessible = true
}




output "region" {
value = "${module.db.region}"
}
output "subnet_list" {
value = "${module.db.subnet_list}"
}
output "allows_hosts" {
value = "${module.db.allowed_hosts}"
}
output "DB_NAME" {
value = "${module.db.DB_NAME}"
}