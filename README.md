# Multi-Build Application — Docker & Kubernetes Sample

A sample application demonstrating how a small service is containerized with Docker and deployed to Kubernetes — the same build → image → deploy flow used in production CI/CD pipelines.

## What's inside

| File | Purpose |
| --- | --- |
| `app.py` | Python application entry point |
| `app.js` | Node.js component of the sample app |
| `Dockerfile` | Container image build for the application |
| `pod.yaml` | Kubernetes Pod manifest |
| `service.yaml` | Kubernetes Service exposing the application |
| `start.sh` | Startup script used by the container |

## Run it locally

```bash
docker build -t multibuild-application:latest .
docker run -p 8080:8080 multibuild-application:latest
```

## Deploy to Kubernetes

```bash
kubectl apply -f pod.yaml
kubectl apply -f service.yaml
kubectl get pods,svc
```

## Skills demonstrated

Docker image builds · Kubernetes Pod/Service manifests · container startup scripting · Python & Node.js runtime packaging

---

*More projects — Terraform/EKS and observability — on my [profile](https://github.com/MReshma575).*
