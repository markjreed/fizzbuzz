output "fizzbuzz" {
  value = <<EOT
    %{~ for i in range(1,101) ~}
       %{~if i % 3 == 0}Fizz%{ endif ~}
       %{~if i % 5 == 0}Buzz%{ endif ~}
       %{~if i % 3 > 0 && i % 5 > 0}${i}%{ endif }
     %{~ endfor ~}
EOT
}
