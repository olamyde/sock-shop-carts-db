{{/*
Expand the name of the chart.
*/}}
<<<<<<< HEAD:carts-db/templates/_helpers.tpl
{{- define "carts-db.name" -}}
=======
{{- define "sock-shop-carts.name" -}}
>>>>>>> f01cf7f350e279998cdedec6be8084ba1a7efb51:templates/_helpers.tpl
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
<<<<<<< HEAD:carts-db/templates/_helpers.tpl
{{- define "carts-db.fullname" -}}
=======
{{- define "sock-shop-carts.fullname" -}}
>>>>>>> f01cf7f350e279998cdedec6be8084ba1a7efb51:templates/_helpers.tpl
{{- if .Values.fullnameOverride }}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- $name := default .Chart.Name .Values.nameOverride }}
{{- if contains $name .Release.Name }}
{{- .Release.Name | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" }}
{{- end }}
{{- end }}
{{- end }}

{{/*
Create chart name and version as used by the chart label.
*/}}
<<<<<<< HEAD:carts-db/templates/_helpers.tpl
{{- define "carts-db.chart" -}}
=======
{{- define "sock-shop-carts.chart" -}}
>>>>>>> f01cf7f350e279998cdedec6be8084ba1a7efb51:templates/_helpers.tpl
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels
*/}}
<<<<<<< HEAD:carts-db/templates/_helpers.tpl
{{- define "carts-db.labels" -}}
helm.sh/chart: {{ include "carts-db.chart" . }}
{{ include "carts-db.selectorLabels" . }}
=======
{{- define "sock-shop-carts.labels" -}}
helm.sh/chart: {{ include "sock-shop-carts.chart" . }}
{{ include "sock-shop-carts.selectorLabels" . }}
>>>>>>> f01cf7f350e279998cdedec6be8084ba1a7efb51:templates/_helpers.tpl
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Selector labels
*/}}
<<<<<<< HEAD:carts-db/templates/_helpers.tpl
{{- define "carts-db.selectorLabels" -}}
app.kubernetes.io/name: {{ include "carts-db.name" . }}
=======
{{- define "sock-shop-carts.selectorLabels" -}}
app.kubernetes.io/name: {{ include "sock-shop-carts.name" . }}
>>>>>>> f01cf7f350e279998cdedec6be8084ba1a7efb51:templates/_helpers.tpl
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{/*
Create the name of the service account to use
*/}}
<<<<<<< HEAD:carts-db/templates/_helpers.tpl
{{- define "carts-db.serviceAccountName" -}}
{{- if .Values.serviceAccount.create }}
{{- default (include "carts-db.fullname" .) .Values.serviceAccount.name }}
=======
{{- define "sock-shop-carts.serviceAccountName" -}}
{{- if .Values.serviceAccount.create }}
{{- default (include "sock-shop-carts.fullname" .) .Values.serviceAccount.name }}
>>>>>>> f01cf7f350e279998cdedec6be8084ba1a7efb51:templates/_helpers.tpl
{{- else }}
{{- default "default" .Values.serviceAccount.name }}
{{- end }}
{{- end }}
