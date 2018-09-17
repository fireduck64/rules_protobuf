# MAINTAINERS
#
# Every external rule must have a SHA checksum or tag.
#
# To update http_file(s) from maven servers, point your browser to
# https://repo1.maven.org/maven2/com/google/protobuf/protoc, find the
# file, copy it down to your workstation (with curl perhaps), and
# compute the sha256:
#
# $ curl -O -J -L https://repo1.maven.org/maven2/com/google/protobuf/protoc/3.0.0/protoc-3.0.0-linux-x86_64.exe
# $ sha256sum protoc-3.0.0-linux-x86_64.exe #linux
# $ shasum -a256 protoc-3.0.0-osx-x86_64.exe # macosx
#

DEPS = {

    # ##################################
    # Precompiled Plugins Dependencies #
    # ##################################

    "protoc_gen_grpc_java_linux_x86_64": {
        "rule": "http_file",
        "url": "https://repo1.maven.org/maven2/io/grpc/protoc-gen-grpc-java/1.15.0/protoc-gen-grpc-java-1.15.0-linux-x86_64.exe",
        "sha256": "939c3ca0afe0f552ebd11927f2fa60348998b31b22f96a7b144da9e7a4f5b414",
    },

    "protoc_gen_grpc_java_macosx": {
        "rule": "http_file",
        "url": "http://central.maven.org/maven2/io/grpc/protoc-gen-grpc-java/1.15.0/protoc-gen-grpc-java-1.15.0-osx-x86_64.exe",
        "sha256": "57cc43dcd18096f2523032b66e648e352f51c5485fa00cc7e4faa4effe51bd49",
    },

    "protoc_gen_grpc_java_windows_x86_64": {
        "rule": "http_file",
        "url": "https://repo1.maven.org/maven2/io/grpc/protoc-gen-grpc-java/1.15.0/protoc-gen-grpc-java-1.15.0-windows-x86_64.exe",
        "sha256": "f9141d12238441d1c246a7f0d11ef7a57af1a26d6f94492a7ca8dc6ff34294e9",
    },

    # ######################
    # Maven Dependencies #
    # ######################

    "junit_junit_4": {
        "rule": "maven_jar",
        "artifact": "junit:junit:jar:4.12",
        "sha1": "2973d150c0dc1fefe998f834810d68f278ea58ec",
    },

    # To recompute these one can do the following:
    # $ cd grpc-java-maven-deps/
    # $ bazel build :hello
    # $ cat $(bazel info output_base)/external/maven_grpc/rules.bzl >> ../deps.bzl
    # $ manually fix up this file with the new deps.
    #
    'com_google_api_grpc_proto_google_common_protos': {
        'rule': 'maven_jar',
        'artifact': 'com.google.api.grpc:proto-google-common-protos:1.0.0',
        'sha1': '86f070507e28b930e50d218ee5b6788ef0dd05e6',
    },
    'com_google_auth_google_auth_library_credentials': {
        'rule': 'maven_jar',
        'artifact': 'com.google.auth:google-auth-library-credentials:0.9.0',
        'sha1': '8e2b181feff6005c9cbc6f5c1c1e2d3ec9138d46',
    },
    'com_google_code_findbugs_jsr305': {
        'rule': 'maven_jar',
        'artifact': 'com.google.code.findbugs:jsr305:3.0.0',
        'sha1': '5871fb60dc68d67da54a663c3fd636a10a532948',
    },
    'com_google_code_gson_gson': {
        'rule': 'maven_jar',
        'artifact': 'com.google.code.gson:gson:2.7',
        'sha1': '751f548c85fa49f330cecbb1875893f971b33c4e',
    },
    'com_google_errorprone_error_prone_annotations': {
        'rule': 'maven_jar',
        'artifact': 'com.google.errorprone:error_prone_annotations:2.1.2',
        'sha1': '6dcc08f90f678ac33e5ef78c3c752b6f59e63e0c',
    },
    'com_google_guava_guava': {
        'rule': 'maven_jar',
        'artifact': 'com.google.guava:guava:26.0-android',
        'sha1': 'ef69663836b339db335fde0df06fb3cd84e3742b',
    },
    'com_google_instrumentation_instrumentation_api': {
        'rule': 'maven_jar',
        'artifact': 'com.google.instrumentation:instrumentation-api:0.4.3',
        'sha1': '41614af3429573dc02645d541638929d877945a2',
    },
    'com_google_protobuf_nano_protobuf_javanano': {
        'rule': 'maven_jar',
        'artifact': 'com.google.protobuf.nano:protobuf-javanano:3.0.0-alpha-5',
        'sha1': '357e60f95cebb87c72151e49ba1f570d899734f8',
    },
    'com_google_protobuf_protobuf_java': {
        'rule': 'maven_jar',
        'artifact': 'com.google.protobuf:protobuf-java:3.5.1',
        'sha1': '8c3492f7662fa1cbf8ca76a0f5eb1146f7725acd',
    },
    'com_google_protobuf_protobuf_java_util': {
        'rule': 'maven_jar',
        'artifact': 'com.google.protobuf:protobuf-java-util:3.5.1',
        'sha1': '6e40a6a3f52455bd633aa2a0dba1a416e62b4575',
    },
    'com_squareup_okhttp_okhttp': {
        'rule': 'maven_jar',
        'artifact': 'com.squareup.okhttp:okhttp:2.5.0',
        'sha1': '4de2b4ed3445c37ec1720a7d214712e845a24636',
    },
    'com_squareup_okio_okio': {
        'rule': 'maven_jar',
        'artifact': 'com.squareup.okio:okio:1.6.0',
        'sha1': '98476622f10715998eacf9240d6b479f12c66143',
    },
    'io_grpc_grpc_all': {
        'rule': 'maven_jar',
        'artifact': 'io.grpc:grpc-all:1.15.0',
        'sha1': '442dfac27fd072e15ff134ab02c2b38136036090',
    },
    'io_grpc_grpc_auth': {
        'rule': 'maven_jar',
        'artifact': 'io.grpc:grpc-auth:1.15.0',
        'sha1': 'd2eadc6d28ebee8ecffef74f882255e4069972ad',
    },
    'io_grpc_grpc_context': {
        'rule': 'maven_jar',
        'artifact': 'io.grpc:grpc-context:1.15.0',
        'sha1': 'bdfb1d0c90d83fa998a9f25976a71019aebe7bcc',
    },
    'io_grpc_grpc_core': {
        'rule': 'maven_jar',
        'artifact': 'io.grpc:grpc-core:1.15.0',
        'sha1': '85863284e3c56a7f7c2cf7a01963c7f4519a5295',
    },
    'io_grpc_grpc_netty': {
        'rule': 'maven_jar',
        'artifact': 'io.grpc:grpc-netty:1.15.0',
        'sha1': '091d3d80801917e34fcbfa0a7efbd8ded61bb704',
    },
    'io_grpc_grpc_okhttp': {
        'rule': 'maven_jar',
        'artifact': 'io.grpc:grpc-okhttp:1.15.0',
        'sha1': '4e7fbb9d3cd65848fff494de165b1c5839f69a8a',
    },
    'io_grpc_grpc_protobuf': {
        'rule': 'maven_jar',
        'artifact': 'io.grpc:grpc-protobuf:1.15.0',
        'sha1': '3fd81064ee583fc7613f14323f79edb43c29643b',
    },
    'io_grpc_grpc_protobuf_lite': {
        'rule': 'maven_jar',
        'artifact': 'io.grpc:grpc-protobuf-lite:1.15.0',
        'sha1': 'aa410544171ac19ce9c7a764a492e4d34d84c8e7',
    },
    'io_grpc_grpc_protobuf_nano': {
        'rule': 'maven_jar',
        'artifact': 'com.google.protobuf:protobuf-java:3.5.1',
        'sha1': '8c3492f7662fa1cbf8ca76a0f5eb1146f7725acd',
    },
    'io_grpc_grpc_stub': {
        'rule': 'maven_jar',
        'artifact': 'io.grpc:grpc-stub:1.15.0',
        'sha1': '17ac6d74d9bef3dec6eddbd0772fede89865261c',
    },
    'io_netty_netty_buffer': {
        'rule': 'maven_jar',
        'artifact': 'io.netty:netty-buffer:4.1.25.Final',
        'sha1': 'f366d0cc87b158ca064d27507127e3cc4eb2f089',
    },
    'io_netty_netty_codec': {
        'rule': 'maven_jar',
        'artifact': 'io.netty:netty-codec:4.1.25.Final',
        'sha1': '3e465c75bead40d06b5b9c0612b37cf77c548887',
    },
    'io_netty_netty_codec_http': {
        'rule': 'maven_jar',
        'artifact': 'io.netty:netty-codec-http:4.1.25.Final',
        'sha1': '70888d3f2a829541378f68503ddd52c3193df35a',
    },
    'io_netty_netty_codec_http2': {
        'rule': 'maven_jar',
        'artifact': 'io.netty:netty-codec-http2:4.1.25.Final',
        'sha1': '20ffe2d83900da019b69bc557bf211737b322f71',
    },
    'io_netty_netty_codec_socks': {
        'rule': 'maven_jar',
        'artifact': 'io.netty:netty-codec-socks:4.1.25.Final',
        'sha1': '81d672c2823d83825b4839673828bcf20fd53e2c',
    },
    'io_netty_netty_common': {
        'rule': 'maven_jar',
        'artifact': 'io.netty:netty-common:4.1.25.Final',
        'sha1': 'e17d5c05c101fe14536ce3fb34b36c54e04791f6',
    },
    'io_netty_netty_handler': {
        'rule': 'maven_jar',
        'artifact': 'io.netty:netty-handler:4.1.25.Final',
        'sha1': 'ecdfb8fe93a8b75db3ea8746d3437eed845c24bd',
    },
    'io_netty_netty_handler_proxy': {
        'rule': 'maven_jar',
        'artifact': 'io.netty:netty-handler-proxy:4.1.25.Final',
        'sha1': 'be053c1e9f4ac5463883aa7b692798ac7841359a',
    },
    'io_netty_netty_resolver': {
        'rule': 'maven_jar',
        'artifact': 'io.netty:netty-resolver:4.1.25.Final',
        'sha1': 'dc0965d00746b782b33f419b005cbc130973030d',
    },
    'io_netty_netty_transport': {
        'rule': 'maven_jar',
        'artifact': 'io.netty:netty-transport:4.1.25.Final',
        'sha1': '19a6f1f649894b6705aa9d8cbcced188dff133b0',
    },
    'io_opencensus_opencensus_api': {
        'rule': 'maven_jar',
        'artifact': 'io.opencensus:opencensus-api:0.10.0',
        'sha1': '46bcf07e0bd835022ccd531d99c3eb813382d4d8',
    },
    'io_opencensus_opencensus_contrib_grpc_metrics': {
        'rule': 'maven_jar',
        'artifact': 'io.opencensus:opencensus-contrib-grpc-metrics:0.10.0',
        'sha1': 'e47f918dc577b6316f57a884c500b13a98d3c11b',
    }
}
