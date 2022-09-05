ARG ERPNEXT_VERSION
FROM frappe/erpnext-worker:${ERPNEXT_VERSION}

USER root

COPY apps ../apps

RUN --mount=type=cache,target=/root/.cache/pip \
    install-app non_profit

USER frappe
