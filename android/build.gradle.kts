// Top-level build.gradle.kts

buildscript {
    repositories {
        google()
        mavenCentral()
    }
    dependencies {
        // Use AGP 7.4.2 to be compatible with flutter_local_notifications 12.x
        classpath("com.android.tools.build:gradle:7.4.2")
        classpath("org.jetbrains.kotlin:kotlin-gradle-plugin:1.8.20")
    }
}

allprojects {
    repositories {
        google()
        mavenCentral()
    }
}
