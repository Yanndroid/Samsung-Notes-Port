.class public Lcom/sec/vsg/voiceframework/SpeechKitWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "SpeechKitWrapper"

.field private static uniqueInstance:Lcom/sec/vsg/voiceframework/SpeechKit;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/sec/vsg/voiceframework/SpeechKit;
    .locals 4

    const-class v0, Lcom/sec/vsg/voiceframework/SpeechKitWrapper;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/sec/vsg/voiceframework/SpeechKitWrapper;->uniqueInstance:Lcom/sec/vsg/voiceframework/SpeechKit;

    if-nez v1, :cond_1

    invoke-static {}, Lcom/sec/vsg/voiceframework/SpeechKit;->init()I

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/sec/vsg/voiceframework/SpeechKit;

    invoke-direct {v1}, Lcom/sec/vsg/voiceframework/SpeechKit;-><init>()V

    sput-object v1, Lcom/sec/vsg/voiceframework/SpeechKitWrapper;->uniqueInstance:Lcom/sec/vsg/voiceframework/SpeechKit;

    sget-object v1, Lcom/sec/vsg/voiceframework/SpeechKitWrapper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VOICEACTIVITY LIBRARY VERSION : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/sec/vsg/voiceframework/SpeechKitWrapper;->uniqueInstance:Lcom/sec/vsg/voiceframework/SpeechKit;

    invoke-virtual {v3}, Lcom/sec/vsg/voiceframework/SpeechKit;->GetVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/vsg/voiceframework/process/ProcessLOGS;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/sec/vsg/voiceframework/SpeechKitWrapper;->TAG:Ljava/lang/String;

    const-string v2, "getInstance() : No VoiceAcitivity Library is exist"

    invoke-static {v1, v2}, Lcom/sec/vsg/voiceframework/process/ProcessLOGS;->warn(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    sget-object v1, Lcom/sec/vsg/voiceframework/SpeechKitWrapper;->uniqueInstance:Lcom/sec/vsg/voiceframework/SpeechKit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
