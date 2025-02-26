# Proyecto Piramix (Nuevo)

Este proyecto ha sido desarrollado utilizando las siguientes tecnologías y herramientas. 

---

## Tecnologías Utilizadas

### Flutter

- **Versión**: 3.29.0
- **Canal**: Stable
- **Repositorio**: [Flutter GitHub](https://github.com/flutter/flutter.git)
- **Framework**: Revisión 35c388afb5 (lanzado hace 2 semanas) • 2025-02-10 12:48:41 -0800
- **Motor (Engine)**: Revisión f73bfc4522
- **Herramientas**:
  - **Dart**: 3.7.0 
  - **DevTools**: 2.42.2

---

### Dart

- **Versión**: 3.7.0 (stable)
- **Fecha de lanzamiento**: Miércoles, 5 de febrero de 2025
- **Sistema**: Windows x64

---

### Android

- **SDK**: 
  - **Versión mínima soportada**: minSdkVersion 21
  - **Versión objetivo**: targetSdkVersion 33
  - **Versión actual instalada**: 35.0.0
- **JDK**: OpenJDK Runtime Environment (build 17.0.10+0--11572160)

---

## Entorno de Desarrollo

- **Sistema Operativo**: Microsoft Windows 10 Pro (Versión 10.0.19045.5487)
- **IDE**:
  - **Visual Studio Code**: 1.97.2 (Flutter extension 3.104.0)
  - **Android Studio**:
    - **Versión**: 2023.3
    - **Versión adicional**: 2024.2 (no se puede determinar la versión de Java)

---

## Problemas Comunes y Soluciones

### Error de `idar` y solución

Si te enfrentas a un error relacionado con `isar_flutter_libs`, puedes seguir estos pasos para solucionarlo:

1. Modifica el archivo `build.gradle` ubicado en, para añadir el namespace:
   ```bash
   C:\Users\antonioj.marchena\AppData\Local\Pub\Cache\hosted\pub.dev\isar_flutter_libs-3.1.0+1\android\build.gradle

group 'dev.isar.isar_flutter_libs'
version '1.0'

buildscript {
    repositories {
        google()
        mavenCentral()
    }
    dependencies {
        classpath 'com.android.tools.build:gradle:7.3.1'
    }
}

rootProject.allprojects {
    repositories {
        google()
        mavenCentral()
    }
}

apply plugin: 'com.android.library'

android {
    compileSdkVersion 30

    defaultConfig {
        minSdkVersion 16
    }

    namespace "com.example.piramix"
}

dependencies {
    implementation "androidx.startup:startup-runtime:1.1.1"
}


2. Asegúrate de que el archivo AndroidManifest.xml se vea así:


C:\Users\antonioj.marchena\AppData\Local\Pub\Cache\hosted\pub.dev\isar_flutter_libs-3.1.0+1\android\src\main\AndroidManifest.xml

<manifest xmlns:android="http://schemas.android.com/apk/res/android"
    xmlns:tools="http://schemas.android.com/tools" />