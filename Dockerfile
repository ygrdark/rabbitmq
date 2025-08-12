FROM rabbitmq:3-management-alpine

# Puertos necesarios
EXPOSE 5672 15672

# Variables de entorno para credenciales
ENV RABBITMQ_DEFAULT_USER=rabbitmq
ENV RABBITMQ_DEFAULT_PASS=Abc123**

# Plugins necesarios
RUN rabbitmq-plugins enable --offline rabbitmq_management rabbitmq_prometheus

# Configuración de memoria (opcional)
ENV RABBITMQ_VM_MEMORY_HIGH_WATERMARK=0.6
