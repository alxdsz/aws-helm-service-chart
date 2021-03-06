{{/* vim: set filetype=mustache: */}}

{{/* Expand the name of the chart. */}}
{{- define "service.name" -}}
{{- default .Release.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/* Expand AWS ECR image url. */}}
{{- define "image.url" -}}
{{- $serviceName := default .Release.Name .Values.nameOverride -}}
{{- printf "%s/%s:%s" .Values.image.repository $serviceName .Values.image.tag -}}
{{- end -}}