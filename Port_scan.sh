read -p "Enter IP : " host
for port in {1..1000}
do
  (echo >/dev/tcp/$host/$port) >/dev/null 2>&1 && echo "$port open tcp" 
done
