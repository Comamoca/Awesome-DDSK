FROM denoland/deno:1.24.1

WORKDIR /deno
# Prefer not to run as root.
USER deno

# These steps will be re-run upon each file change in your working directory:
ADD . .
# Compile the main app so that it doesn't need to be compiled each startup/entry.
RUN deno cache ddsk.ts

CMD ["run", "ddsk.ts"]
