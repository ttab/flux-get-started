{{/* vim: set filetype=mustache: */}}

{{- define "ttservice.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "ttservice.deployname" }}
{{- if .Values.nameOverride }}
{{- .Values.nameOverride }}
{{- else }}
{{- default .Chart.Name .Values.nameOverride }}-deployment
{{- end }}
{{- end }}

{{- define "ttservice.servicename" }}
{{- if .Values.service.name }}
{{- .Values.service.name }}
{{- else }}
{{- default .Chart.Name .Values.nameOverride }}-service
{{- end }}
{{- end }}

{{- define "ttservice.ingressname" }}
{{- if .Values.ingress.name }}
{{- else }}
{{- default .Chart.Name .Values.nameOverride }}-ingress
{{- end }}
{{- end }}

{{- define "ttservice.pvcname" }}
{{- if .Values.pvc.nameOverride }}
{{- .Values.pvc.nameOverride }}
{{- else }}
{{- default .Chart.Name .Values.pvc.nameOverride }}-claim
{{- end }}
{{- end }}
