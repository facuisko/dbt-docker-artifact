ARG project_id
ARG base_artifact
ARG base_image

FROM gcr.io/utility-logic-357614/dbttesting:v1
COPY . /app/
RUN echo "dbt via docker"

RUN chmod +x /app/dbt_run.sh
WORKDIR /app/
ENTRYPOINT ["/app/dbt_run.sh" ]`