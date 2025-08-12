FROM rabbitmq:3-management-alpine

EXPOSE 5672 15672

ENV RABBITMQ_DEFAULT_USER=rabbitmq
ENV RABBITMQ_DEFAULT_PASS=Abc123**

# Habilitar plugins
RUN rabbitmq-plugins enable --offline rabbitmq_management rabbitmq_prometheus

# Crear archivo de configuración moderno
RUN echo 'vm_memory_high_watermark.relative = 0.6' > /etc/rabbitmq/conf.d/10-memory.conf

# Permisos correctos
RUN chown rabbitmq:rabbitmq /etc/rabbitmq/conf.d/10-memory.conf
