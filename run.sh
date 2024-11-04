for par in DB_HOST,prod.rds.endpoint ; do
  var=$(aws ssm get-parameter --name $(echo $par | awk -F , '{print $2}') --with-decryption --query 'Parameter.Value' --output text)
  echo export $(echo $par | awk -F , '{print $1}')=$var
done
#
#--query 'parameter.Value' --output text