FROM grafana/grafana:latest

# Modify JavaScript files to change the AppTitle and LoginTitle
RUN find /usr/share/grafana/public/build/ -name *.js -exec sed -i 's|"AppTitle","Grafana")|"AppTitle","TOP SECRET. US GOVERNMENT PROPERTY")|g' {} \;
RUN find /usr/share/grafana/public/build/ -name *.js -exec sed -i 's|"LoginTitle","Welcome to Grafana")|"LoginTitle","Welcome to TOP SECRET. US GOVERNMENT PROPERTY")|g' {} \;

# Copy custom background images
COPY logo/liquid-cheese.svg /usr/share/grafana/public/img/g8_login_dark.svg
COPY logo/liquid-cheese.svg /usr/share/grafana/public/img/g8_login_light.svg
