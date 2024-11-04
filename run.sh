for par in DB_HOST,prod.rds.endpoint ; do
  aws ssm get-parameter --name $(echo $par | awk -F , '{print $2}') --with-decryption --query 'Parameter.Value' --output text
done

#--query 'parameter.Value' --output text