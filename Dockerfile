# Coolify build target for lms-prototype.mereka.dev.
# Uses the repo's nginx.conf (with SPA fallback) instead of Coolify's
# default static build-pack config (which try_files ends in =404 and
# breaks deep-link refresh).
FROM nginx:alpine

COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY index.html \
     badge-app-store.png \
     badge-google-play.png \
     app-store-badge.svg \
     google-play-badge.svg \
     logo-horizontal-black-Mereka.svg \
     logo-horizontal-white-Mereka.svg \
     /usr/share/nginx/html/

EXPOSE 80
