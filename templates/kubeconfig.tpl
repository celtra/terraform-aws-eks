apiVersion: v1
preferences: {}
kind: Config

clusters:
- cluster:
    server: ${endpoint}
    certificate-authority-data: ${cluster_auth_base64}
  name: ${kubeconfig_name}

contexts:
- context:
    cluster: ${kubeconfig_name}
    user: ${kubeconfig_name}
  name: ${kubeconfig_name}

current-context: ${kubeconfig_name}

users:
- name: ${kubeconfig_name}
  user:
    exec:
      apiVersion: ${aws_authenticator_kubeconfig_apiversion}
      command: ${aws_authenticator_command}
      interactiveMode: IfAvailable
      args:
${aws_authenticator_command_args}
${aws_authenticator_additional_args}
${aws_authenticator_env_variables}
