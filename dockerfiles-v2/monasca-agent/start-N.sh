# 6: startup one container every 6 seconds
# => 10 agents every 1 minutes (assume agent startup time 0)
# => 600 agents needs 60 minutes, i.e., 1h
# => 1000 agents needs 100 minutes, i.e., 1h40m

S=6
N=600
for n in $(seq 1 $N)
do
    echo starting $n / $N ...
    docker run -d -e "u=monasca" -e "p=nomoresecret" -e "pn=service" -e "ku=http://192.168.120.226:35357/v3" --name "monasca-agent-$n" -h "monasca-agent-$n" monasca-agent

    echo waiting $S seconds to start next one
    sleep $S
done
