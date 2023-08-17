.class public Lcom/samsung/vsf/recognition/RecognizerConstants;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/vsf/recognition/RecognizerConstants$Client;
    }
.end annotation


# static fields
.field public static final ASR_DICT_MODEL_DASH:Ljava/lang/String; = "dash"

.field public static final ASR_DICT_MODEL_DASH_DICT:Ljava/lang/String; = "dash_dict"

.field public static final ASR_DICT_MODEL_WATSON_DICT:Ljava/lang/String; = "watson_dict"

.field public static final CCL_LOG_LEVEL:I = 0x7

.field public static CERT_PATH:Ljava/lang/String; = "/system/etc/security/cacerts/399e7759.0"

.field public static final CHINA_CERT_PATH:Ljava/lang/String; = "/system/etc/security/cacerts/00673b5b.0"

.field public static final CHINA_DICTATION_SERVER:Ljava/lang/String; = "voiceapi-cn.samsung-svoice.cn"

.field public static final CHINA_NOAUTH_SERVER:Ljava/lang/String; = "noauth-cn-dcog-rel-n66.samsung-svoice.cn"

.field public static final CHINA_NOAUTH_SERVER_PORT:I = 0x1bb

.field public static final DEFAULT_RPC_TIMEOUT:I = 0xea60

.field public static final ENCODING_TYPE:Ljava/lang/String; = "encodingType"

.field public static final ENCODING_TYPE_NONE:I = 0x0

.field public static final ENCODING_TYPE_OPUS:I = 0x1

.field public static final ENCODING_TYPE_SPEEX:I = 0x2

.field public static final ENOCDING_TYPE_WAV:I = 0x3

.field public static final EPD_THRESHOLD_DEFAULT:I = 0x7d0

.field public static final EPD_THRESHOLD_LONG:I = 0x7d0

.field public static final EPD_THRESHOLD_MEDIUM:I = 0x2ee

.field public static final EPD_THRESHOLD_SHORT:I = 0x190

.field public static final ERROR_ASR:Ljava/lang/String; = "server_error"

.field public static final ERROR_AUDIO:I = 0x3

.field public static final ERROR_CLIENT:I = 0x5

.field public static final ERROR_INSUFFICIENT_PERMISSIONS:I = 0x9

.field public static final ERROR_NETWORK:I = 0x2

.field public static final ERROR_NETWORK_TIMEOUT:I = 0x1

.field public static final ERROR_NO_MATCH:I = 0x7

.field public static final ERROR_NO_NETWORK:Ljava/lang/String; = "no_network"

.field public static final ERROR_RECOGNIZER_BUSY:I = 0x8

.field public static final ERROR_RECORDER:Ljava/lang/String; = "recorder_error"

.field public static final ERROR_SERVER:I = 0x4

.field public static final ERROR_SPEECH_TIMEOUT:I = 0x6

.field public static final ERROR_TIMEOUT_BTW_CONSECUTIVE_CALLS:I = 0x263

.field public static final ERROR_TIMEOUT_BTW_PROCESS_RESULT_ASR:I = 0x264

.field public static final ERROR_UNKNOWN:I = 0xa

.field public static final FALSE:Ljava/lang/String; = "False"

.field public static final INTERNAL_EPD_THRESHOLD_DEFAULT:I = 0x3e8

.field public static IP_PORT_CHANGED:Z = false

.field public static final ISO_COUNTRY_CODE_CHINA:Ljava/lang/String; = "CN"

.field public static final ISO_COUNTRY_CODE_KOREA:Ljava/lang/String; = "KR"

.field public static final ITN_TIMEFRAME_INFO:Ljava/lang/String; = "itn"

.field public static final KEY_ASR_MODELS_DICT:Ljava/lang/String; = "asrDictModels"

.field public static final KEY_CERT_PATH:Ljava/lang/String; = "certPath"

.field public static final KEY_DOES_CLIENT_NEEDS_RMS:Ljava/lang/String; = "clientNeedsRMS"

.field public static final KEY_DOES_CLIENT_NEEDS_SASR:Ljava/lang/String; = "clientNeedsSASR"

.field public static final KEY_DUMP_TO_BE_DONE:Ljava/lang/String; = "dumpNeeded"

.field public static final KEY_ENCODING_TO_BE_DONE_BY_SDK:Ljava/lang/String; = "needEncoding"

.field public static final KEY_EPD_DUR_THRESH:Ljava/lang/String; = "epdDurationThreshHold"

.field public static final KEY_IS_BYTE_ORDER_LITTLE_ENDIAN:Ljava/lang/String; = "isByteOrderLittleEndian"

.field public static final KEY_IS_CENSORED:Ljava/lang/String; = "censor"

.field public static final KEY_LOCALE:Ljava/lang/String; = "locale"

.field public static final KEY_MIME_TYPE:Ljava/lang/String; = "mimeType"

.field public static final KEY_NOISE_SEPARATION_TO_BE_DONE_BY_SDK:Ljava/lang/String; = "clientOwnsNoiseSeparation"

.field public static final KEY_PCM_DUMP_TO_BE_DONE:Ljava/lang/String; = "pcmDumpNeeded"

.field public static final KEY_PORT_NUM:Ljava/lang/String; = "portNumber"

.field public static final KEY_RECORDED_BUFFER_NEEDED:Ljava/lang/String; = "bufferNeeded"

.field public static final KEY_RECORDING_TO_BE_DONE_BY_SDK:Ljava/lang/String; = "clientOwnsRecorder"

.field public static final KEY_RPC_TIMEOUT:Ljava/lang/String; = "rpc_timeout"

.field public static final KEY_SAMPLE_RATE:Ljava/lang/String; = "samplingRate"

.field public static final KEY_SDK_CLIENT:Ljava/lang/String; = "clientType"

.field public static final KEY_SERVER_IP:Ljava/lang/String; = "serverAddress"

.field public static final KEY_SESSION_MODE:Ljava/lang/String; = "sessionMode"

.field public static final KEY_SPD_DUR_THRESH:Ljava/lang/String; = "spdDurationThreshHold"

.field public static final KEY_SPEECH_DETECTION_REQUIRED:Ljava/lang/String; = "requireSpeechDetection"

.field public static final KEY_SPEECH_DETECTION_TO_BE_DONE_BY_SDK:Ljava/lang/String; = "clientOwnsSpeechDetector"

.field public static final KEY_SPX_DUMP_TO_BE_DONE:Ljava/lang/String; = "spxDumpNeeded"

.field public static final KEY_TOS_FULL_ACCEPTED:Ljava/lang/String; = "tos_full"

.field public static final KEY_TOS_OPTION_ACCEPTED:Ljava/lang/String; = "tos_optional"

.field public static final KEY_USE_PLM:Ljava/lang/String; = "usePLM"

.field public static final KEY_USE_TLS:Ljava/lang/String; = "useTLS"

.field public static final KR_PROD2_SERVER_IP:Ljava/lang/String; = "interaction-kr2.samsung-svoice.com"

.field public static final KR_PROD2_SERVER_PORT:I = 0x1bb

.field public static final KR_SERVER_DEV_IP:Ljava/lang/String; = "sds-dev-temp.samsung-svoice.com"

.field public static final KR_SERVER_DEV_PORT:I = 0x1bb

.field public static final KR_SERVER_HOST_IP:Ljava/lang/String; = "cs-kr-dev-n66.cloudpi.net"

.field public static final KR_SERVER_HOST_IP_2:Ljava/lang/String; = "cs-kr2-qa-n66.samsung-svoice.com"

.field public static final KR_SERVER_PORT:I = 0x1bb

.field public static final KR_SERVER_PORT_2:I = 0x1bb

.field public static final KR_SERVER_PROD_IP:Ljava/lang/String; = "dictation-kr.samsung-svoice.com"

.field public static final KR_SERVER_PROD_PORT:I = 0x1bb

.field public static final KR_VOICEAPI_SERVER_IP:Ljava/lang/String; = "voiceapi-kr.samsung-svoice.com"

.field public static final KR_VOICEAPI_SERVER_PORT:I = 0x1bb

.field public static final LOCALE_CANTONESE_GUANGDONG:Ljava/lang/String; = "zh-SG"

.field public static final LOCALE_CHINESE:Ljava/lang/String; = "zh-CN"

.field public static final LOCALE_CHINESE_HONGKONG:Ljava/lang/String; = "zh-HK"

.field public static final LOCALE_CHINESE_TAIWAN:Ljava/lang/String; = "zh-TW"

.field public static final LOCALE_ENG_UK:Ljava/lang/String; = "en-GB"

.field public static final LOCALE_ENG_US:Ljava/lang/String; = "en-US"

.field public static final LOCALE_FRANCH:Ljava/lang/String; = "fr-FR"

.field public static final LOCALE_GERMEN:Ljava/lang/String; = "de-DE"

.field public static final LOCALE_ITALIAN:Ljava/lang/String; = "it-IT"

.field public static final LOCALE_JAPANESE:Ljava/lang/String; = "ja-JP"

.field public static final LOCALE_KOREAN:Ljava/lang/String; = "ko-KR"

.field public static final LOCALE_PORTUGESE_BRAZIL:Ljava/lang/String; = "pt-BR"

.field public static final LOCALE_RUSSIAN:Ljava/lang/String; = "ru-RU"

.field public static final LOCALE_SPANISH_SPAIN:Ljava/lang/String; = "es-ES"

.field public static final LOCALE_SPANISH_US:Ljava/lang/String; = "es-US"

.field public static final MULTI_SESSION_MODE:I = 0x2

.field public static final OFF:Ljava/lang/String; = "Off"

.field public static final ON:Ljava/lang/String; = "On"

.field public static PORT:I = 0x1bb

.field public static final QA_SERVER_HOST_IP:Ljava/lang/String; = "qa-n66.cloudpi.net"

.field public static final QA_SERVER_PORT:I = 0x1bb

.field public static final QA_VOICEAPI_SERVER_IP:Ljava/lang/String; = "voiceapi-qa.samsung-svoice.com"

.field public static final QA_VOICEAPI_SERVER_PORT:I = 0x1bb

.field public static final RECOGNIZER_INTENT:Ljava/lang/String; = "com.samsung.vsf.start"

.field public static final RECOGNIZER_RESULTS:Ljava/lang/String; = "utterance"

.field public static final RECOGNIZER_RESULTS_ASR_LATENCY:Ljava/lang/String; = "asrLatency"

.field public static final RECOGNIZER_RESULTS_INSTANCE_ID:Ljava/lang/String; = "instanceId"

.field public static final RECOGNIZER_RESULTS_ORIGINAL:Ljava/lang/String; = "utterance_original"

.field public static final SANDBOX_SERVER_HOST_IP:Ljava/lang/String; = "sbx-n66.cloudpi.net"

.field public static final SANDBOX_SERVER_PORT:I = 0x1bb

.field public static final SDK_VERSION:Ljava/lang/String; = "20191001.1.35"

.field public static SERVER_HOST_IP:Ljava/lang/String; = "voiceapi-qa.samsung-svoice.com"

.field public static final SESSION_ID:Ljava/lang/String; = "sessionid"

.field public static final SILENCE_THRESHOLD_DEFAULT:I = 0x1388

.field public static final SINGLE_SESSION_MODE:I = 0x1

.field public static final SPD_THRESHOLD_DEFAULT:I = 0x1

.field public static final START_SEQUENCE_NUMBER:Ljava/lang/String; = "startSequenceNumber"

.field public static final THRESHOLD_SILENCE_BEFORE_EPD:I = 0x1f4

.field public static final TRUE:Ljava/lang/String; = "True"

.field public static USE_TLS:Z = true

.field public static final US_PROD2_SERVER_IP:Ljava/lang/String; = "interaction-us2.samsung-svoice.com"

.field public static final US_PROD2_SERVER_PORT:I = 0x1bb

.field public static final US_SERVER_HOST_IP:Ljava/lang/String; = "cs-us-rel-n66.cloudpi.net"

.field public static final US_SERVER_PORT:I = 0x1bb

.field public static final US_VOICEAPI_SERVER_IP:Ljava/lang/String; = "voiceapi-us.samsung-svoice.com"

.field public static final US_VOICEAPI_SERVER_PORT:I = 0x1bb

.field public static useJSpeexEncoder:Z = true


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
