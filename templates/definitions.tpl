{{/* vim: set filetype=mustache: */}}
{{/*
Define resource names
*/}}
# {{- define "aws-ecr-rotate-tokens.namespace" }}
# {{- default (printf "%s-ns" .Release.Name) -}}
# {{- end }}

{{- define "aws-ecr-rotate-tokens.serviceAccount" }}
{{- default (printf "%s-account" .Release.Name) -}}
{{- end }}

{{- define "aws-ecr-rotate-tokens.job" }}
{{- default (printf "%s-job" .Release.Name) -}}
{{- end }}

{{- define "aws-ecr-rotate-tokens.cronJob" }}
{{- default (printf "%s-cron" .Release.Name) -}}
{{- end }}

{{- define "aws-ecr-rotate-tokens.secret" }}
{{- default (printf "%s-secret" .Release.Name) -}}
{{- end }}


