# @title Containers must not allow for privilege escalation
#
# Privileged containers can much more easily obtain root on the node.
# As such, they are not allowed.
#
# @kinds apps/DaemonSet apps/Deployment apps/StatefulSet core/Pod
package container_deny_escalation

import data.lib.core
import data.lib.pods

policyID := "P1002"

violation[msg] {
	pods.containers[container]
	container_allows_escalation(container)

	msg := core.format_with_id(sprintf("%s/%s: Allows privilege escalation", [core.kind, core.name]), policyID)
}

container_allows_escalation(c) {
	c.securityContext.allowPrivilegeEscalation == true
}

container_allows_escalation(c) {
	core.missing_field(c.securityContext, "allowPrivilegeEscalation")
}
