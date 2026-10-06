FROM nginxinc/nginx-unprivileged

# PORT is supplied by the PaaS (App Platform, Railway, Render, Fly, Cloud Run).
# 8080 matches the common default; the template is rendered at container start.
ENV PORT=8080

# Serving only what the site needs. COPY . would also expose CONTEXT.md and
# UI-ELEMENTS.md, which are internal project notes.
COPY index.html /usr/share/nginx/html/index.html
COPY data/calendar.json /usr/share/nginx/html/data/calendar.json

# envsubst renders this into conf.d at startup, so $PORT above is substituted.
# nginx variables such as $uri are left alone, since they are not environment vars.
COPY nginx.conf.template /etc/nginx/templates/default.conf.template
