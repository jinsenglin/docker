N=2
for n in $(seq 1 $N)
do
    echo starting $n / $N ...
    docker run -d -e "u=monasca" -e "p=nomoresecret" -e "pn=service" -e "ku=http://192.168.120.226:35357/v3" --name "monasca-agent-$n" -h "monasca-agent-$n" monasca-agent
done
