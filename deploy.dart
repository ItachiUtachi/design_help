import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() {
  runApp(const MyApp());
}
/*
1]Importand step to run this code is to install package.
flutter pub add english_words

2]Now go to the terminal and generate a Keystore.
keytool -genkey -v -keystore "D:\flutterdepl\upload-keystore.jk" -storetype JKS -keyalg RSA -keysize 2048 -validity 10000 -alias up
load

3] Now also do the Migrating.
*/
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String msg="";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'testing',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("My App"),
          backgroundColor: Colors.greenAccent,
          centerTitle: true,
          elevation: 30.0,
          toolbarOpacity: 1,
          actions: [
            IconButton(
              onPressed: () {
                // print('You pressed backward arrow');
                msg = 'You print the forward arrow';
              },
              icon: const Icon(Icons.arrow_forward),
              color: Colors.red,
            ),
          ],
        ),
        body: Center(
          child: RandomWord(),
        ),
      ),
    );
  }
}

class RandomWord extends StatefulWidget {
  const RandomWord({super.key});

  @override
  State<RandomWord> createState() => _RandomWordState();
}

class _RandomWordState extends State<RandomWord> {
  @override
  Widget build(BuildContext context) {
    final wordpair = WordPair.random();
    return Text(wordpair.asPascalCase);
  }
}


/*
4]Now make a key.properties file in the andriod folder.
storePassword=123456
keyPassword=123456
keyAlias=upload
storeFile=D:\flutterdepl\upload-keystore.jk ( Change from backward slash to forward slash.) 

5]Now add the following code inside the build.gradle of the app subfolder.
plugins {
    id "com.android.application"
    id "kotlin-android"
    id "dev.flutter.flutter-gradle-plugin"
}
 
def localProperties = new Properties()
def localPropertiesFile = rootProject.file('local.properties')
if (localPropertiesFile.exists()) {
    localPropertiesFile.withReader('UTF-8') { reader ->
        localProperties.load(reader)
    }
}
 
def flutterVersionCode = localProperties.getProperty('flutter.versionCode')
if (flutterVersionCode == null) {
    flutterVersionCode = '1'
}
 
def flutterVersionName = localProperties.getProperty('flutter.versionName')
if (flutterVersionName == null) {
    flutterVersionName = '1.0'
}
 
def keystoreProperties = new Properties()
def keystorePropertiesFile = rootProject.file('key.properties')
if (keystorePropertiesFile.exists()) {
    keystoreProperties.load(new FileInputStream(keystorePropertiesFile))
}
 
android {
    namespace "com.example.app"
    compileSdkVersion flutter.compileSdkVersion
    ndkVersion flutter.ndkVersion
 
    compileOptions {
        sourceCompatibility JavaVersion.VERSION_1_8
        targetCompatibility JavaVersion.VERSION_1_8
    }
 
    kotlinOptions {
        jvmTarget = '1.8'
    }
 
    sourceSets {
        main.java.srcDirs += 'src/main/kotlin'
    }
 
    defaultConfig {
        // TODO: Specify your own unique Application ID (https://developer.android.com/studio/build/application-id.html).
        applicationId "com.example.app"
        // You can update the following values to match your application needs.
        // For more information, see: https://docs.flutter.dev/deployment/android#reviewing-the-gradle-build-configuration.
        minSdkVersion flutter.minSdkVersion
        targetSdkVersion flutter.targetSdkVersion
        versionCode flutterVersionCode.toInteger()
        versionName flutterVersionName
    }
 
    signingConfigs {
       release {
           keyAlias keystoreProperties['keyAlias']
           keyPassword keystoreProperties['keyPassword']
           storeFile keystoreProperties['storeFile'] ? file(keystoreProperties['storeFile']) : null
           storePassword keystoreProperties['storePassword']
       }
   }
 
   buildTypes {
       release {
           signingConfig signingConfigs.release
       }
   }
}
 
flutter {
    source '../..'
}
 
dependencies {}

5] For the Execution part
flutter build appbundle
flutter build apk
flutter emulators and then launch the emulator
flutter install
*/
