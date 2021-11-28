# References https://docs.docker.com/engine/reference/builder/
FROM continuumio/miniconda3:4.10.3

ARG conda_env=mlflow_xp

# Create the environment:
COPY ./environment.yml /tmp/environment.yml
RUN conda env create -f /tmp/environment.yml
# Add new environement to path
ENV PATH /opt/conda/envs/$conda_env/bin:$PATH

WORKDIR /mlflow
ENV BACKEND_URI sqlite:////mlflow/mlflow.db
ENV ARTIFACT_ROOT /mlflow/artifacts
EXPOSE 5000

CMD mlflow server --backend-store-uri ${BACKEND_URI} --default-artifact-root ${ARTIFACT_ROOT} --host 0.0.0.0 --port 5000