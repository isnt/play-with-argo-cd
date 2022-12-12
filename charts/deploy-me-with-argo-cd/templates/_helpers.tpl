{{/*
Expand the name of the chart.
*/}}
{{- define "deploy-me-with-argo-cd.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "deploy-me-with-argo-cd.selectorLabels" -}}
app.kubernetes.io/name: {{ include "deploy-me-with-argo-cd.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}
