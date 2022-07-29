ARG project_id
ARG base_artifact
ARG base_image

FROM us-east4-docker.pkg.dev/${project_id}/${base_artifact}/${base_image}
COPY . /app/
RUN echo "dbt via docker"

RUN chmod +x /app/dbt_run.sh
WORKDIR /app/
ENTRYPOINT ["/app/dbt_run.sh" ]`