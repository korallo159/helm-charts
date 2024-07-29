{{- define "manager.resourceNamePrefix" -}}
{{- print .Values.resourceNamePrefix "-manager" }}
{{- end }}

{{- define "manager.globalResourceName" -}}
{{- print "tenable" "-" (include "manager.resourceNamePrefix") "-" .name "-" (trunc 8 (sha256sum (print .root.Release.Namespace ":" .root.Release.Name))) }}
{{- end }}

{{- define "manager.labels" -}}
app.kubernetes.io/component: manager
{{- end }}