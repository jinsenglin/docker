for n in {1..3}
do
    docker run -d --name "monasca-agent-$n" monasca-agent
done
