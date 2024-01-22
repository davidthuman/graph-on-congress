neo_up:
	@docker run \
	--name neo-congress \
	--publish=7474:7474 --publish=7687:7687 \
    --volume=./neo4j/data:/data \
	--env=NEO4J_AUTH=none \
	neo4j

neo_down:
	@docker stop  neo-congress