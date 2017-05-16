#!/bin/sh

VERSION=`xmlstarlet sel -N x=http://maven.apache.org/POM/4.0.0 -t -v '//x:project/x:version' -n pom.xml` || exit 1

cat <<EOF
| groupId | Artifact |
|---------|----------|
EOF

for f in org.lwjgl.*
do
  cat <<EOF
| [org.lwjgl.osgi](http://search.maven.org/#search%7Cga%7C1%7Cg%3A%22org.lwjgl.osgi%22) | [$f](http://search.maven.org/#artifactdetails%7Corg.lwjgl.osgi%7C$f%7C${VERSION}%7Cjar) |
EOF
done

