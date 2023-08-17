.class public Lcom/samsung/android/scs/ai/sdkcommon/asr/SpeechRecognitionConst;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/scs/ai/sdkcommon/asr/SpeechRecognitionConst$ServerType;,
        Lcom/samsung/android/scs/ai/sdkcommon/asr/SpeechRecognitionConst$Method;,
        Lcom/samsung/android/scs/ai/sdkcommon/asr/SpeechRecognitionConst$Key;
    }
.end annotation


# static fields
.field public static final SERVER_ASR_TOS_BASE_URL:Ljava/lang/String; = "tos.samsung-svoice.com"

.field public static final SERVICE_BIND_ACTION:Ljava/lang/String; = "android.sec.speech.RecognitionService"

.field public static final SERVICE_SYSTEM_BIND_ACTION:Ljava/lang/String; = "android.sec.speech.RecognitionSystemService"

.field public static final SYSTEM_PERMISSION_BIND_SERVICE:Ljava/lang/String; = "com.samsung.android.scs.ai.asr.permission.SYSTEM_BIND_SPEECH_RECOGNITION_SERVICE"

.field public static final SYSTEM_PERMISSION_QUERY_CP:Ljava/lang/String; = "com.samsung.android.scs.ai.asr.permission.SYSTEM_SPEECH_RECOGNITION_SERVICE_CONFIG_PROVIDER"

.field public static final SYSTEM_URI_STRING:Ljava/lang/String; = "com.samsung.android.scs.ai.speech2"

.field public static final URI_STRING:Ljava/lang/String; = "com.samsung.android.scs.ai.speech"

.field public static final VERSION:Ljava/lang/Integer;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/scs/ai/sdkcommon/asr/SpeechRecognitionConst;->VERSION:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
