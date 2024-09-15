
# we can use the output as aws_instance.expense, output.instances_info gives error so use aws_instance.expense

output "instances_info" {
    value = aws_instance.expense
}