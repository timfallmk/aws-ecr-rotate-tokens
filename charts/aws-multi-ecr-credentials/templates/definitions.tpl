{{/* vim: set filetype=mustache: */}}
{{/*
Define resource names
*/}}
{{- define "aws-multi-ecr-credentials.namespace" }}
{{- default (printf "%s-ns" .Release.Name) -}}
{{- end }}

{{- define "aws-multi-ecr-credentials.serviceAccount" }}
{{- default (printf "%s-account" .Release.Name) -}}
{{- end }}

{{- define "aws-multi-ecr-credentials.job" }}
{{- default (printf "%s-job" .Release.Name) -}}
{{- end }}

{{- define "aws-multi-ecr-credentials.cronJob" }}
{{- default (printf "%s-cron" .Release.Name) -}}
{{- end }}

{{- define "aws-multi-ecr-credentials.secret" }}
{{- default (printf "%s-secret" .Release.Name) -}}
{{- end }}


