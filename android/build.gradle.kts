allprojects {
    repositories {
        google()
        mavenCentral()
    }
}

val newBuildDir: Directory =
    rootProject.layout.buildDirectory
        .dir("../../build")
        .get()
rootProject.layout.buildDirectory.value(newBuildDir)

subprojects {
    afterEvaluate {
        if (project.hasProperty("android")) {
            val android = project.extensions.getByName("android") as com.android.build.gradle.BaseExtension

            // 1. Force the versions like we did before
            android.compileSdkVersion(34)
            android.buildToolsVersion("34.0.0")

            // 2. The Namespace Injector:
            // If the plugin (like Isar) forgot to set a namespace, we set it for them
            if (android.namespace == null) {
                // This creates a namespace based on the project name (e.g., dev.isar.isar_flutter_libs)
                val name = project.name.replace("-", "_").replace(":", ".")
                android.namespace = "dev.isar.$name"
            }
        }
    }
}

tasks.register<Delete>("clean") {
    delete(rootProject.layout.buildDirectory)
}
