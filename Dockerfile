FROM sonarqube:6.2-alpine

ENV SERVICE_NAME="sonarqube"
ENV PLUGIN_FOLDER="/opt/sonarqube/extensions/plugins/"

# Install Python Plugin
RUN cd /opt/sonarqube/extensions/plugins && \
	curl -sLo sonar-python-plugin-1.7.0.1195.jar \
    https://sonarsource.bintray.com/Distribution/sonar-python-plugin/sonar-python-plugin-1.7.0.1195.jar

