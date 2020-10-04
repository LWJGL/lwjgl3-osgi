lwjgl3-osgi
===

[![Maven Central](https://img.shields.io/maven-central/v/org.lwjgl.osgi/org.lwjgl.parent)](https://search.maven.org/search?q=g:org.lwjgl.osgi)

This project produces a set of [OSGi](https://www.osgi.org) bundles for
the [LWJGL](https://lwjgl.org) library.

| JVM             | Platform | Status |
|-----------------|----------|--------|
| OpenJDK LTS     | Linux    | [![Build (OpenJDK LTS, Linux)](https://img.shields.io/github/workflow/status/LWJGL/lwjgl3-osgi/main-openjdk_lts-linux)](https://github.com/LWJGL/lwjgl3-osgi/actions?query=workflow%3Amain-openjdk_lts-linux) |
| OpenJDK Current | Linux    | [![Build (OpenJDK Current, Linux)](https://img.shields.io/github/workflow/status/LWJGL/lwjgl3-osgi/main-openjdk_current-linux)](https://github.com/LWJGL/lwjgl3-osgi/actions?query=workflow%3Amain-openjdk_current-linux)
| OpenJDK Current | Windows  | [![Build (OpenJDK Current, Windows)](https://img.shields.io/github/workflow/status/LWJGL/lwjgl3-osgi/main-openjdk_current-windows)](https://github.com/LWJGL/lwjgl3-osgi/actions?query=workflow%3Amain-openjdk_current-windows)

## Usage

Use dependencies in the `org.lwjgl.osgi` groupId as you would with
the ordinary LWJGL libraries:

```
<dependency>
  <groupId>org.lwjgl.osgi</groupId>
  <artifactId>org.lwjgl.glfw</artifactId>
  <version>${latestVersion}</version>
</dependency>
<dependency>
  <groupId>org.lwjgl.osgi</groupId>
  <artifactId>org.lwjgl.opengl</artifactId>
  <version>${latestVersion}</version>
</dependency>
```

See the [com.io7m.lwjgl.examples](https://github.com/io7m/com.io7m.lwjgl.examples) project
for some example OSGi components using each of the various libraries.

## Limitations

### Allocator

Currently, when running in an OSGi container [LWJGL will use the
platform's default allocator instead of the (typically preferred)
jemalloc](https://github.com/LWJGL/lwjgl3-osgi/issues/10#issuecomment-450435669).
This isn't likely to be a problem for the
majority of users. A workaround if it _is_ a
problem for you is to manually set the allocator using the
[Configuration](https://javadoc.lwjgl.org/org/lwjgl/system/Configuration.html)
class prior to doing anything else with LWJGL.

## Available Bundles

| groupId | Artifact |
|---------|----------|
| [org.lwjgl.osgi](http://search.maven.org/#search%7Cga%7C1%7Cg%3A%22org.lwjgl.osgi%22) | [org.lwjgl.assimp](http://search.maven.org/#artifactdetails%7Corg.lwjgl.osgi%7Corg.lwjgl.assimp%7C3.2.1.1%7Cjar) |
| [org.lwjgl.osgi](http://search.maven.org/#search%7Cga%7C1%7Cg%3A%22org.lwjgl.osgi%22) | [org.lwjgl.bgfx](http://search.maven.org/#artifactdetails%7Corg.lwjgl.osgi%7Corg.lwjgl.bgfx%7C3.2.1.1%7Cjar) |
| [org.lwjgl.osgi](http://search.maven.org/#search%7Cga%7C1%7Cg%3A%22org.lwjgl.osgi%22) | [org.lwjgl.cuda](http://search.maven.org/#artifactdetails%7Corg.lwjgl.osgi%7Corg.lwjgl.cuda%7C3.2.1.1%7Cjar) |
| [org.lwjgl.osgi](http://search.maven.org/#search%7Cga%7C1%7Cg%3A%22org.lwjgl.osgi%22) | [org.lwjgl.egl](http://search.maven.org/#artifactdetails%7Corg.lwjgl.osgi%7Corg.lwjgl.egl%7C3.2.1.1%7Cjar) |
| [org.lwjgl.osgi](http://search.maven.org/#search%7Cga%7C1%7Cg%3A%22org.lwjgl.osgi%22) | [org.lwjgl.glfw](http://search.maven.org/#artifactdetails%7Corg.lwjgl.osgi%7Corg.lwjgl.glfw%7C3.2.1.1%7Cjar) |
| [org.lwjgl.osgi](http://search.maven.org/#search%7Cga%7C1%7Cg%3A%22org.lwjgl.osgi%22) | [org.lwjgl.jawt](http://search.maven.org/#artifactdetails%7Corg.lwjgl.osgi%7Corg.lwjgl.jawt%7C3.2.1.1%7Cjar) |
| [org.lwjgl.osgi](http://search.maven.org/#search%7Cga%7C1%7Cg%3A%22org.lwjgl.osgi%22) | [org.lwjgl.jemalloc](http://search.maven.org/#artifactdetails%7Corg.lwjgl.osgi%7Corg.lwjgl.jemalloc%7C3.2.1.1%7Cjar) |
| [org.lwjgl.osgi](http://search.maven.org/#search%7Cga%7C1%7Cg%3A%22org.lwjgl.osgi%22) | [org.lwjgl.libdivide](http://search.maven.org/#artifactdetails%7Corg.lwjgl.osgi%7Corg.lwjgl.libdivide%7C3.2.1.1%7Cjar) |
| [org.lwjgl.osgi](http://search.maven.org/#search%7Cga%7C1%7Cg%3A%22org.lwjgl.osgi%22) | [org.lwjgl.lmdb](http://search.maven.org/#artifactdetails%7Corg.lwjgl.osgi%7Corg.lwjgl.lmdb%7C3.2.1.1%7Cjar) |
| [org.lwjgl.osgi](http://search.maven.org/#search%7Cga%7C1%7Cg%3A%22org.lwjgl.osgi%22) | [org.lwjgl.lwjgl](http://search.maven.org/#artifactdetails%7Corg.lwjgl.osgi%7Corg.lwjgl.lwjgl%7C3.2.1.1%7Cjar) |
| [org.lwjgl.osgi](http://search.maven.org/#search%7Cga%7C1%7Cg%3A%22org.lwjgl.osgi%22) | [org.lwjgl.lz4](http://search.maven.org/#artifactdetails%7Corg.lwjgl.osgi%7Corg.lwjgl.lz4%7C3.2.1.1%7Cjar) |
| [org.lwjgl.osgi](http://search.maven.org/#search%7Cga%7C1%7Cg%3A%22org.lwjgl.osgi%22) | [org.lwjgl.meow](http://search.maven.org/#artifactdetails%7Corg.lwjgl.osgi%7Corg.lwjgl.meow%7C3.2.1.1%7Cjar) |
| [org.lwjgl.osgi](http://search.maven.org/#search%7Cga%7C1%7Cg%3A%22org.lwjgl.osgi%22) | [org.lwjgl.nanovg](http://search.maven.org/#artifactdetails%7Corg.lwjgl.osgi%7Corg.lwjgl.nanovg%7C3.2.1.1%7Cjar) |
| [org.lwjgl.osgi](http://search.maven.org/#search%7Cga%7C1%7Cg%3A%22org.lwjgl.osgi%22) | [org.lwjgl.nfd](http://search.maven.org/#artifactdetails%7Corg.lwjgl.osgi%7Corg.lwjgl.nfd%7C3.2.1.1%7Cjar) |
| [org.lwjgl.osgi](http://search.maven.org/#search%7Cga%7C1%7Cg%3A%22org.lwjgl.osgi%22) | [org.lwjgl.nuklear](http://search.maven.org/#artifactdetails%7Corg.lwjgl.osgi%7Corg.lwjgl.nuklear%7C3.2.1.1%7Cjar) |
| [org.lwjgl.osgi](http://search.maven.org/#search%7Cga%7C1%7Cg%3A%22org.lwjgl.osgi%22) | [org.lwjgl.odbc](http://search.maven.org/#artifactdetails%7Corg.lwjgl.osgi%7Corg.lwjgl.odbc%7C3.2.1.1%7Cjar) |
| [org.lwjgl.osgi](http://search.maven.org/#search%7Cga%7C1%7Cg%3A%22org.lwjgl.osgi%22) | [org.lwjgl.openal](http://search.maven.org/#artifactdetails%7Corg.lwjgl.osgi%7Corg.lwjgl.openal%7C3.2.1.1%7Cjar) |
| [org.lwjgl.osgi](http://search.maven.org/#search%7Cga%7C1%7Cg%3A%22org.lwjgl.osgi%22) | [org.lwjgl.opencl](http://search.maven.org/#artifactdetails%7Corg.lwjgl.osgi%7Corg.lwjgl.opencl%7C3.2.1.1%7Cjar) |
| [org.lwjgl.osgi](http://search.maven.org/#search%7Cga%7C1%7Cg%3A%22org.lwjgl.osgi%22) | [org.lwjgl.opengl](http://search.maven.org/#artifactdetails%7Corg.lwjgl.osgi%7Corg.lwjgl.opengl%7C3.2.1.1%7Cjar) |
| [org.lwjgl.osgi](http://search.maven.org/#search%7Cga%7C1%7Cg%3A%22org.lwjgl.osgi%22) | [org.lwjgl.opengles](http://search.maven.org/#artifactdetails%7Corg.lwjgl.osgi%7Corg.lwjgl.opengles%7C3.2.1.1%7Cjar) |
| [org.lwjgl.osgi](http://search.maven.org/#search%7Cga%7C1%7Cg%3A%22org.lwjgl.osgi%22) | [org.lwjgl.opus](http://search.maven.org/#artifactdetails%7Corg.lwjgl.osgi%7Corg.lwjgl.opus%7C3.2.1.1%7Cjar) |
| [org.lwjgl.osgi](http://search.maven.org/#search%7Cga%7C1%7Cg%3A%22org.lwjgl.osgi%22) | [org.lwjgl.ovr](http://search.maven.org/#artifactdetails%7Corg.lwjgl.osgi%7Corg.lwjgl.ovr%7C3.2.1.1%7Cjar) |
| [org.lwjgl.osgi](http://search.maven.org/#search%7Cga%7C1%7Cg%3A%22org.lwjgl.osgi%22) | [org.lwjgl.par](http://search.maven.org/#artifactdetails%7Corg.lwjgl.osgi%7Corg.lwjgl.par%7C3.2.1.1%7Cjar) |
| [org.lwjgl.osgi](http://search.maven.org/#search%7Cga%7C1%7Cg%3A%22org.lwjgl.osgi%22) | [org.lwjgl.remotery](http://search.maven.org/#artifactdetails%7Corg.lwjgl.osgi%7Corg.lwjgl.remotery%7C3.2.1.1%7Cjar) |
| [org.lwjgl.osgi](http://search.maven.org/#search%7Cga%7C1%7Cg%3A%22org.lwjgl.osgi%22) | [org.lwjgl.rpmalloc](http://search.maven.org/#artifactdetails%7Corg.lwjgl.osgi%7Corg.lwjgl.rpmalloc%7C3.2.1.1%7Cjar) |
| [org.lwjgl.osgi](http://search.maven.org/#search%7Cga%7C1%7Cg%3A%22org.lwjgl.osgi%22) | [org.lwjgl.sse](http://search.maven.org/#artifactdetails%7Corg.lwjgl.osgi%7Corg.lwjgl.sse%7C3.2.1.1%7Cjar) |
| [org.lwjgl.osgi](http://search.maven.org/#search%7Cga%7C1%7Cg%3A%22org.lwjgl.osgi%22) | [org.lwjgl.stb](http://search.maven.org/#artifactdetails%7Corg.lwjgl.osgi%7Corg.lwjgl.stb%7C3.2.1.1%7Cjar) |
| [org.lwjgl.osgi](http://search.maven.org/#search%7Cga%7C1%7Cg%3A%22org.lwjgl.osgi%22) | [org.lwjgl.tinyexr](http://search.maven.org/#artifactdetails%7Corg.lwjgl.osgi%7Corg.lwjgl.tinyexr%7C3.2.1.1%7Cjar) |
| [org.lwjgl.osgi](http://search.maven.org/#search%7Cga%7C1%7Cg%3A%22org.lwjgl.osgi%22) | [org.lwjgl.tinyfd](http://search.maven.org/#artifactdetails%7Corg.lwjgl.osgi%7Corg.lwjgl.tinyfd%7C3.2.1.1%7Cjar) |
| [org.lwjgl.osgi](http://search.maven.org/#search%7Cga%7C1%7Cg%3A%22org.lwjgl.osgi%22) | [org.lwjgl.tootle](http://search.maven.org/#artifactdetails%7Corg.lwjgl.osgi%7Corg.lwjgl.tootle%7C3.2.1.1%7Cjar) |
| [org.lwjgl.osgi](http://search.maven.org/#search%7Cga%7C1%7Cg%3A%22org.lwjgl.osgi%22) | [org.lwjgl.vma](http://search.maven.org/#artifactdetails%7Corg.lwjgl.osgi%7Corg.lwjgl.vma%7C3.2.1.1%7Cjar) |
| [org.lwjgl.osgi](http://search.maven.org/#search%7Cga%7C1%7Cg%3A%22org.lwjgl.osgi%22) | [org.lwjgl.vulkan](http://search.maven.org/#artifactdetails%7Corg.lwjgl.osgi%7Corg.lwjgl.vulkan%7C3.2.1.1%7Cjar) |
| [org.lwjgl.osgi](http://search.maven.org/#search%7Cga%7C1%7Cg%3A%22org.lwjgl.osgi%22) | [org.lwjgl.xxhash](http://search.maven.org/#artifactdetails%7Corg.lwjgl.osgi%7Corg.lwjgl.xxhash%7C3.2.1.1%7Cjar) |
| [org.lwjgl.osgi](http://search.maven.org/#search%7Cga%7C1%7Cg%3A%22org.lwjgl.osgi%22) | [org.lwjgl.yoga](http://search.maven.org/#artifactdetails%7Corg.lwjgl.osgi%7Corg.lwjgl.yoga%7C3.2.1.1%7Cjar) |
| [org.lwjgl.osgi](http://search.maven.org/#search%7Cga%7C1%7Cg%3A%22org.lwjgl.osgi%22) | [org.lwjgl.zstd](http://search.maven.org/#artifactdetails%7Corg.lwjgl.osgi%7Corg.lwjgl.zstd%7C3.2.1.1%7Cjar) |

