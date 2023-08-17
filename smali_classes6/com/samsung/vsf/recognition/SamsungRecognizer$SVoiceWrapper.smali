.class Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;
.super Lcom/sec/svoice/api/SVoiceSentinel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/vsf/recognition/SamsungRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SVoiceWrapper"
.end annotation


# static fields
.field private static final SESSION_TIMEOUT_MS:J = 0x41eb0L

.field private static final SPEECH_TIMELIMIT_MS:J = 0x1d4c0L

.field private static final TRY_COUNT:I = 0x3


# instance fields
.field public id:I

.field public volatile isClosing:Z

.field public volatile isOpened:Z

.field public volatile isProcessing:Z

.field public mSVSessionId:Ljava/lang/String;

.field public mSVoiceClient:Lcom/sec/svoice/api/SVoice;

.field public openLatency:J

.field public openThread:Ljava/lang/Thread;

.field public openTimeStamp:J

.field public processTimeStamp:J

.field private startSeqNumber:I

.field public final synthetic this$0:Lcom/samsung/vsf/recognition/SamsungRecognizer;


# direct methods
.method public constructor <init>(Lcom/samsung/vsf/recognition/SamsungRecognizer;I)V
    .locals 2

    iput-object p1, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->this$0:Lcom/samsung/vsf/recognition/SamsungRecognizer;

    invoke-direct {p0}, Lcom/sec/svoice/api/SVoiceSentinel;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->openTimeStamp:J

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->startSeqNumber:I

    iput p2, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->id:I

    invoke-direct {p0}, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->createSVoiceClient()V

    return-void
.end method

.method public static synthetic access$100(Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;Ljava/lang/Exception;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->handleException(Ljava/lang/Exception;Z)V

    return-void
.end method

.method public static synthetic access$300(Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->setStartSeqNumber(I)V

    return-void
.end method

.method public static synthetic access$800(Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->createSVoiceClient()V

    return-void
.end method

.method public static synthetic access$900(Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->updateTimeStamp()V

    return-void
.end method

.method private createSVoiceClient()V
    .locals 9

    iget-object v0, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->this$0:Lcom/samsung/vsf/recognition/SamsungRecognizer;

    invoke-virtual {v0}, Lcom/samsung/vsf/recognition/Recognizer;->getConfig()Lcom/samsung/vsf/SpeechRecognizer$Config;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/vsf/SpeechRecognizer$Config;->getIsTLSUsed()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/sec/svoice/api/SVoice;

    invoke-virtual {v0}, Lcom/samsung/vsf/SpeechRecognizer$Config;->getServerIP()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/samsung/vsf/SpeechRecognizer$Config;->getPortNumber()I

    move-result v4

    iget-object v2, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->this$0:Lcom/samsung/vsf/recognition/SamsungRecognizer;

    invoke-virtual {v2}, Lcom/samsung/vsf/recognition/Recognizer;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/vsf/util/DeviceInfo;->getInstance(Landroid/content/Context;)Lcom/samsung/vsf/util/DeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/vsf/util/DeviceInfo;->getUniqueDeviceIdentifier()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    invoke-virtual {v0}, Lcom/samsung/vsf/SpeechRecognizer$Config;->getCertificatePath()Ljava/lang/String;

    move-result-object v8

    move-object v2, v1

    move-object v6, p0

    invoke-direct/range {v2 .. v8}, Lcom/sec/svoice/api/SVoice;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/sec/svoice/api/SVoiceSentinel;ZLjava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/sec/svoice/api/SVoice;

    invoke-virtual {v0}, Lcom/samsung/vsf/SpeechRecognizer$Config;->getServerIP()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/samsung/vsf/SpeechRecognizer$Config;->getPortNumber()I

    move-result v3

    iget-object v4, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->this$0:Lcom/samsung/vsf/recognition/SamsungRecognizer;

    invoke-virtual {v4}, Lcom/samsung/vsf/recognition/Recognizer;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/vsf/util/DeviceInfo;->getInstance(Landroid/content/Context;)Lcom/samsung/vsf/util/DeviceInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/vsf/util/DeviceInfo;->getUniqueDeviceIdentifier()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, p0}, Lcom/sec/svoice/api/SVoice;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/sec/svoice/api/SVoiceSentinel;)V

    :goto_0
    iput-object v1, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->mSVoiceClient:Lcom/sec/svoice/api/SVoice;

    iget-object v1, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->mSVoiceClient:Lcom/sec/svoice/api/SVoice;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lcom/sec/svoice/api/SVoice;->enable_log(I)V

    iget-object v1, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->mSVoiceClient:Lcom/sec/svoice/api/SVoice;

    invoke-virtual {v0}, Lcom/samsung/vsf/SpeechRecognizer$Config;->getRPCTimeoutValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/sec/svoice/api/SVoice;->time_out(I)V

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createSVoiceClient "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->mSVoiceClient:Lcom/sec/svoice/api/SVoice;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " for SamsungRecognizer@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tickcount"

    invoke-static {v1, v0}, Lcom/samsung/vsf/util/SVoiceLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private getAsrParams(Ljava/lang/String;IZLjava/lang/String;)Ljava/util/Properties;
    .locals 4

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iget-object v1, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->this$0:Lcom/samsung/vsf/recognition/SamsungRecognizer;

    invoke-virtual {v1}, Lcom/samsung/vsf/recognition/Recognizer;->getConfig()Lcom/samsung/vsf/SpeechRecognizer$Config;

    move-result-object v1

    if-eqz p3, :cond_0

    const-string p3, "LE"

    goto :goto_0

    :cond_0
    const-string p3, "BE"

    :goto_0
    const-string v2, "audio/raw"

    invoke-virtual {p1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    const-string v3, "contenttype"

    if-nez v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ";coding=linear;sampleRate="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ";byteorder="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-virtual {v0, v3, p1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    const-string p3, "audio/x-speex-with-header-byte"

    invoke-virtual {p1, p3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p3

    if-eqz p3, :cond_3

    const-string p3, "audio/x-opus-with-header-byte"

    invoke-virtual {p1, p3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p3

    if-nez p3, :cond_1

    :cond_3
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ";rate="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ";channel="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "1"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :goto_2
    const-string p1, "locale"

    invoke-virtual {v0, p1, p4}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "getmetadata"

    const-string p2, "true"

    invoke-virtual {v0, p1, p2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/samsung/vsf/SpeechRecognizer$Config;->getIsUsePLMRequired()Z

    move-result p1

    const-string p3, "false"

    if-eqz p1, :cond_4

    move-object p1, p2

    goto :goto_3

    :cond_4
    move-object p1, p3

    :goto_3
    const-string p4, "useplm"

    invoke-virtual {v0, p4, p1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/samsung/vsf/SpeechRecognizer$Config;->getASRDictationModel()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {v1}, Lcom/samsung/vsf/SpeechRecognizer$Config;->getASRDictationModel()Ljava/lang/String;

    move-result-object p1

    const-string p4, "rampcode"

    invoke-virtual {v0, p4, p1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    invoke-virtual {v1}, Lcom/samsung/vsf/SpeechRecognizer$Config;->getIsCensored()Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_4

    :cond_6
    move-object p2, p3

    :goto_4
    const-string p1, "censor"

    invoke-virtual {v0, p1, p2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide p1, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->openLatency:J

    invoke-static {p1, p2}, Lcom/samsung/vsf/util/ClientLogger;->getPrepareLogger(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "client_log"

    invoke-virtual {v0, p2, p1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private getElapsedString()Ljava/lang/String;
    .locals 6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->openTimeStamp:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long v4, v0, v2

    rem-long/2addr v0, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[t + "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "s]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getProcessToASRLatency()Ljava/lang/String;
    .locals 6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->processTimeStamp:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long v4, v0, v2

    rem-long/2addr v0, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleError(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TEST_PLATFORM: ERROR"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/Exception;

    const-string v0, "server_error"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->handleException(Ljava/lang/Exception;Z)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->isOpened:Z

    iget-object p1, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->this$0:Lcom/samsung/vsf/recognition/SamsungRecognizer;

    new-instance v0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper$2;

    invoke-direct {v0, p0}, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper$2;-><init>(Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->this$0:Lcom/samsung/vsf/recognition/SamsungRecognizer;

    invoke-static {p1}, Lcom/samsung/vsf/recognition/SamsungRecognizer;->access$400(Lcom/samsung/vsf/recognition/SamsungRecognizer;)Lcom/samsung/vsf/recognition/SamsungRecognizer$ASRResultThread;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->this$0:Lcom/samsung/vsf/recognition/SamsungRecognizer;

    invoke-static {p1}, Lcom/samsung/vsf/recognition/SamsungRecognizer;->access$400(Lcom/samsung/vsf/recognition/SamsungRecognizer;)Lcom/samsung/vsf/recognition/SamsungRecognizer$ASRResultThread;

    move-result-object p1

    iget v0, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->id:I

    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    invoke-virtual {p1, v0, v1}, Lcom/samsung/vsf/recognition/SamsungRecognizer$ASRResultThread;->addResponseToqueue(ILjava/util/Properties;)V

    :cond_0
    return-void
.end method

.method private handleException(Ljava/lang/Exception;Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " notify : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "tickcount"

    invoke-static {p2, p1}, Lcom/samsung/vsf/util/SVoiceLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->this$0:Lcom/samsung/vsf/recognition/SamsungRecognizer;

    invoke-static {p1}, Lcom/samsung/vsf/recognition/SamsungRecognizer;->access$400(Lcom/samsung/vsf/recognition/SamsungRecognizer;)Lcom/samsung/vsf/recognition/SamsungRecognizer$ASRResultThread;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->this$0:Lcom/samsung/vsf/recognition/SamsungRecognizer;

    invoke-static {p1}, Lcom/samsung/vsf/recognition/SamsungRecognizer;->access$1600(Lcom/samsung/vsf/recognition/SamsungRecognizer;)I

    move-result p2

    iget-object v0, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->this$0:Lcom/samsung/vsf/recognition/SamsungRecognizer;

    invoke-static {v0}, Lcom/samsung/vsf/recognition/SamsungRecognizer;->access$400(Lcom/samsung/vsf/recognition/SamsungRecognizer;)Lcom/samsung/vsf/recognition/SamsungRecognizer$ASRResultThread;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/vsf/recognition/SamsungRecognizer$ASRResultThread;->access$1700(Lcom/samsung/vsf/recognition/SamsungRecognizer$ASRResultThread;)I

    move-result v0

    add-int/2addr p2, v0

    invoke-static {p1, p2}, Lcom/samsung/vsf/recognition/SamsungRecognizer;->access$1602(Lcom/samsung/vsf/recognition/SamsungRecognizer;I)I

    iget-object p1, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->this$0:Lcom/samsung/vsf/recognition/SamsungRecognizer;

    invoke-static {p1}, Lcom/samsung/vsf/recognition/SamsungRecognizer;->access$400(Lcom/samsung/vsf/recognition/SamsungRecognizer;)Lcom/samsung/vsf/recognition/SamsungRecognizer$ASRResultThread;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/samsung/vsf/recognition/SamsungRecognizer$ASRResultThread;->access$1702(Lcom/samsung/vsf/recognition/SamsungRecognizer$ASRResultThread;I)I

    iget-object p1, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->this$0:Lcom/samsung/vsf/recognition/SamsungRecognizer;

    invoke-static {p1}, Lcom/samsung/vsf/recognition/SamsungRecognizer;->access$400(Lcom/samsung/vsf/recognition/SamsungRecognizer;)Lcom/samsung/vsf/recognition/SamsungRecognizer$ASRResultThread;

    move-result-object p1

    const/4 p2, -0x1

    invoke-static {p1, p2}, Lcom/samsung/vsf/recognition/SamsungRecognizer$ASRResultThread;->access$002(Lcom/samsung/vsf/recognition/SamsungRecognizer$ASRResultThread;I)I

    iget-object p1, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->this$0:Lcom/samsung/vsf/recognition/SamsungRecognizer;

    invoke-static {p1}, Lcom/samsung/vsf/recognition/SamsungRecognizer;->access$1800(Lcom/samsung/vsf/recognition/SamsungRecognizer;)Ljava/util/PriorityQueue;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/PriorityQueue;->clear()V

    :cond_0
    invoke-direct {p0}, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->isNetworkConnected()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->this$0:Lcom/samsung/vsf/recognition/SamsungRecognizer;

    const-string p2, "no_network"

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->this$0:Lcom/samsung/vsf/recognition/SamsungRecognizer;

    const-string p2, "server_error"

    :goto_0
    invoke-virtual {p1, p2}, Lcom/samsung/vsf/recognition/Recognizer;->notifyErrorString(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->this$0:Lcom/samsung/vsf/recognition/SamsungRecognizer;

    invoke-virtual {p1}, Lcom/samsung/vsf/recognition/Recognizer;->clearCmds()V

    return-void
.end method

.method private isNetworkConnected()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->this$0:Lcom/samsung/vsf/recognition/SamsungRecognizer;

    invoke-static {v0}, Lcom/samsung/vsf/recognition/SamsungRecognizer;->access$1500(Lcom/samsung/vsf/recognition/SamsungRecognizer;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private setStartSeqNumber(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->startSeqNumber:I

    return-void
.end method

.method private updateTimeStamp()V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->openTimeStamp:J

    return-void
.end method


# virtual methods
.method public cancel()Z
    .locals 6

    iget-boolean v0, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->isOpened:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->this$0:Lcom/samsung/vsf/recognition/SamsungRecognizer;

    invoke-static {v0}, Lcom/samsung/vsf/recognition/SamsungRecognizer;->access$1300(Lcom/samsung/vsf/recognition/SamsungRecognizer;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->isOpened:Z

    iget-object v0, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->mSVoiceClient:Lcom/sec/svoice/api/SVoice;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->mSVoiceClient:Lcom/sec/svoice/api/SVoice;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SamsungRecognizer@"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->id:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->getElapsedString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " cancel() , device id: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->this$0:Lcom/samsung/vsf/recognition/SamsungRecognizer;

    invoke-static {v5}, Lcom/samsung/vsf/recognition/SamsungRecognizer;->access$700(Lcom/samsung/vsf/recognition/SamsungRecognizer;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "tickcount"

    invoke-static {v5, v3}, Lcom/samsung/vsf/util/SVoiceLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/svoice/api/SVoice;->cancel()V

    :cond_0
    if-eqz v0, :cond_1

    iget-boolean v3, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->isClosing:Z

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->getElapsedString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " destroy() , device id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->this$0:Lcom/samsung/vsf/recognition/SamsungRecognizer;

    invoke-static {v4}, Lcom/samsung/vsf/recognition/SamsungRecognizer;->access$700(Lcom/samsung/vsf/recognition/SamsungRecognizer;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/samsung/vsf/util/SVoiceLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sec/svoice/api/SVoice;->destroy()Z

    :cond_1
    iput-object v2, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->mSVSessionId:Ljava/lang/String;

    iput-object v2, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->openThread:Ljava/lang/Thread;

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->this$0:Lcom/samsung/vsf/recognition/SamsungRecognizer;

    invoke-static {v2}, Lcom/samsung/vsf/recognition/SamsungRecognizer;->access$1400(Lcom/samsung/vsf/recognition/SamsungRecognizer;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    return v1
.end method

.method public close()Z
    .locals 8

    invoke-virtual {p0}, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->isOpening()Z

    move-result v0

    const-string v1, "SamsungRecognizer@"

    const/4 v2, 0x0

    const-string v3, "tickcount"

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_1

    move v0, v2

    :goto_0
    if-nez v0, :cond_0

    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->id:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->getElapsedString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " close(): waiting for openAsync() to complete"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/samsung/vsf/util/SVoiceLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->openThread:Ljava/lang/Thread;

    invoke-virtual {v6}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v4

    goto :goto_0

    :catch_0
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :cond_0
    iput-object v5, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->openThread:Ljava/lang/Thread;

    :cond_1
    iget-boolean v0, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->isOpened:Z

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->id:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->getElapsedString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " close(), device id: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->this$0:Lcom/samsung/vsf/recognition/SamsungRecognizer;

    invoke-static {v6}, Lcom/samsung/vsf/recognition/SamsungRecognizer;->access$700(Lcom/samsung/vsf/recognition/SamsungRecognizer;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/samsung/vsf/util/SVoiceLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->this$0:Lcom/samsung/vsf/recognition/SamsungRecognizer;

    invoke-static {v0}, Lcom/samsung/vsf/recognition/SamsungRecognizer;->access$1000(Lcom/samsung/vsf/recognition/SamsungRecognizer;)Z

    move-result v0

    if-nez v0, :cond_4

    iput-boolean v4, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->isClosing:Z

    iget-object v0, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->mSVoiceClient:Lcom/sec/svoice/api/SVoice;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/sec/svoice/api/SVoice;->close()V

    :cond_2
    iget-object v0, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->mSVoiceClient:Lcom/sec/svoice/api/SVoice;

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->getElapsedString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " destroy(), device id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->this$0:Lcom/samsung/vsf/recognition/SamsungRecognizer;

    invoke-static {v1}, Lcom/samsung/vsf/recognition/SamsungRecognizer;->access$700(Lcom/samsung/vsf/recognition/SamsungRecognizer;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/samsung/vsf/util/SVoiceLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "destroySVoiceClient"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->mSVoiceClient:Lcom/sec/svoice/api/SVoice;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/samsung/vsf/util/SVoiceLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->mSVoiceClient:Lcom/sec/svoice/api/SVoice;

    invoke-virtual {v0}, Lcom/sec/svoice/api/SVoice;->destroy()Z

    iput-object v5, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->mSVoiceClient:Lcom/sec/svoice/api/SVoice;

    :cond_3
    iput-boolean v2, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->isClosing:Z

    :cond_4
    iput-boolean v2, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->isOpened:Z

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput v4, v0, Landroid/os/Message;->what:I

    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->this$0:Lcom/samsung/vsf/recognition/SamsungRecognizer;

    invoke-static {v1}, Lcom/samsung/vsf/recognition/SamsungRecognizer;->access$1400(Lcom/samsung/vsf/recognition/SamsungRecognizer;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_5
    iput-object v5, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->mSVSessionId:Ljava/lang/String;

    iput-object v5, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->openThread:Ljava/lang/Thread;

    return v4
.end method

.method public getOpenDeviceInfo(Lcom/samsung/vsf/SpeechRecognizer$Config;)Ljava/util/Properties;
    .locals 3

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/vsf/SpeechRecognizer$Config;->getLocale()Ljava/lang/String;

    move-result-object v1

    const-string v2, "locale"

    invoke-virtual {v0, v2, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->this$0:Lcom/samsung/vsf/recognition/SamsungRecognizer;

    invoke-virtual {v1}, Lcom/samsung/vsf/recognition/Recognizer;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/vsf/util/DeviceInfo;->getInstance(Landroid/content/Context;)Lcom/samsung/vsf/util/DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/vsf/util/DeviceInfo;->getModelAndVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "serviceinfo"

    invoke-virtual {v0, v2, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/samsung/vsf/SpeechRecognizer$Config;->getIsTOSOptionAccepted()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "audiosharing"

    invoke-virtual {v0, v2, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "usehash"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/samsung/vsf/util/ClientLogger;->getOpenLogger(Lcom/samsung/vsf/SpeechRecognizer$Config;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "client_log"

    invoke-virtual {v0, v2, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/samsung/vsf/SpeechRecognizer$Config;->getServerIP()Ljava/lang/String;

    move-result-object p1

    const-string v1, "currentendpoint"

    invoke-virtual {v0, v1, p1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "clientapp"

    const-string v1, "dict"

    invoke-virtual {v0, p1, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public isClosing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->isClosing:Z

    return v0
.end method

.method public isConnected()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->mSVoiceClient:Lcom/sec/svoice/api/SVoice;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/svoice/api/SVoice;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SamsungRecognizer@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " isConnected : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "tickcount"

    invoke-static {v2, v1}, Lcom/samsung/vsf/util/SVoiceLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public isOpened()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->isOpened:Z

    return v0
.end method

.method public isOpening()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->openThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSessionTimedOut()Z
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->openTimeStamp:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x41eb0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSpeechTimeLimitExceeded()Z
    .locals 7

    iget-object v0, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->this$0:Lcom/samsung/vsf/recognition/SamsungRecognizer;

    invoke-virtual {v0}, Lcom/samsung/vsf/recognition/Recognizer;->getConfig()Lcom/samsung/vsf/SpeechRecognizer$Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/vsf/SpeechRecognizer$Config;->getSessionMode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    return v1

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->openTimeStamp:J

    sub-long/2addr v3, v5

    const-wide/32 v5, 0x1d4c0

    cmp-long v0, v3, v5

    if-ltz v0, :cond_1

    move v1, v2

    :cond_1
    return v1
.end method

.method public isValidEndpoint(Ljava/util/Properties;)Z
    .locals 2

    const-string v0, "isValidEndpoint"

    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "open() isValid : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tickcount"

    invoke-static {v1, v0}, Lcom/samsung/vsf/util/SVoiceLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    const-string v0, "true"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public open()Z
    .locals 14

    const-string v0, "ASRProfiling"

    iget-boolean v1, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->isOpened:Z

    const-string v2, "SamsungRecognizer@"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "tickcount"

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->isSessionTimedOut()Z

    move-result v6

    if-nez v6, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " already opened"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/samsung/vsf/util/SVoiceLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iput-object v3, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->openThread:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->this$0:Lcom/samsung/vsf/recognition/SamsungRecognizer;

    iget-boolean v1, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->isOpened:Z

    invoke-static {v0, v1}, Lcom/samsung/vsf/recognition/SamsungRecognizer;->access$500(Lcom/samsung/vsf/recognition/SamsungRecognizer;Z)Z

    move-result v0

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->isOpened:Z

    return v0

    :cond_1
    move v1, v4

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->isOpening()Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_3

    :goto_1
    if-nez v4, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " open(): waiting for openAsync() to complete"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/samsung/vsf/util/SVoiceLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->openThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v7

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    :cond_3
    iget-boolean v6, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->isOpened:Z

    if-eqz v6, :cond_6

    if-nez v1, :cond_4

    iput-boolean v4, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->isOpened:Z

    iget-object v1, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->mSVoiceClient:Lcom/sec/svoice/api/SVoice;

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->id:I

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " open(): connection is teared down. Destroy the object"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/samsung/vsf/util/SVoiceLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/Thread;

    new-instance v6, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceObjectDestroyable;

    iget-object v8, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->this$0:Lcom/samsung/vsf/recognition/SamsungRecognizer;

    iget-object v9, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->mSVoiceClient:Lcom/sec/svoice/api/SVoice;

    iget v10, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->id:I

    invoke-direct {v6, v8, v9, v10}, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceObjectDestroyable;-><init>(Lcom/samsung/vsf/recognition/SamsungRecognizer;Lcom/sec/svoice/api/SVoice;I)V

    invoke-direct {v1, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    iput-object v3, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->mSVoiceClient:Lcom/sec/svoice/api/SVoice;

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->this$0:Lcom/samsung/vsf/recognition/SamsungRecognizer;

    invoke-virtual {v1}, Lcom/samsung/vsf/recognition/Recognizer;->getConfig()Lcom/samsung/vsf/SpeechRecognizer$Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/vsf/SpeechRecognizer$Config;->getSessionMode()I

    move-result v1

    if-ne v1, v7, :cond_5

    invoke-virtual {p0}, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->isSessionTimedOut()Z

    move-result v1

    if-nez v1, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " SINGLE_SESSION_MODE and session is not timedout. Hence, re-use the object"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/samsung/vsf/util/SVoiceLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->this$0:Lcom/samsung/vsf/recognition/SamsungRecognizer;

    invoke-static {v0, v7}, Lcom/samsung/vsf/recognition/SamsungRecognizer;->access$500(Lcom/samsung/vsf/recognition/SamsungRecognizer;Z)Z

    move-result v0

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->close()Z

    iput-boolean v4, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->isOpened:Z

    :cond_6
    :goto_2
    iput-object v3, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->openThread:Ljava/lang/Thread;

    iget-object v1, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->mSVoiceClient:Lcom/sec/svoice/api/SVoice;

    if-nez v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SamasungRecognizer@"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->id:I

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "open(): creating new mSVoiceClient"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/samsung/vsf/util/SVoiceLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->createSVoiceClient()V

    iget-object v1, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->this$0:Lcom/samsung/vsf/recognition/SamsungRecognizer;

    invoke-static {v1, v4}, Lcom/samsung/vsf/recognition/SamsungRecognizer;->access$602(Lcom/samsung/vsf/recognition/SamsungRecognizer;Z)Z

    :cond_7
    iget-object v1, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->this$0:Lcom/samsung/vsf/recognition/SamsungRecognizer;

    invoke-virtual {v1}, Lcom/samsung/vsf/recognition/Recognizer;->getConfig()Lcom/samsung/vsf/SpeechRecognizer$Config;

    move-result-object v1

    move v6, v4

    move v8, v6

    :goto_3
    const/4 v9, 0x3

    if-ge v6, v9, :cond_c

    if-nez v8, :cond_c

    :try_start_1
    iget-object v9, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->mSVoiceClient:Lcom/sec/svoice/api/SVoice;

    if-eqz v9, :cond_b

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->id:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->getElapsedString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " open() [try "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v10, v6, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", device id: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->this$0:Lcom/samsung/vsf/recognition/SamsungRecognizer;

    invoke-static {v10}, Lcom/samsung/vsf/recognition/SamsungRecognizer;->access$700(Lcom/samsung/vsf/recognition/SamsungRecognizer;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Lcom/samsung/vsf/util/SVoiceLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iput-wide v9, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->openLatency:J

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "open() starts "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/samsung/vsf/util/SVoiceLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->mSVoiceClient:Lcom/sec/svoice/api/SVoice;

    invoke-virtual {p0, v1}, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->getOpenDeviceInfo(Lcom/samsung/vsf/SpeechRecognizer$Config;)Ljava/util/Properties;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/sec/svoice/api/SVoice;->open(Ljava/util/Properties;)Ljava/util/Properties;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "open() ends "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Lcom/samsung/vsf/util/SVoiceLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iget-wide v12, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->openLatency:J

    sub-long/2addr v10, v12

    iput-wide v10, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->openLatency:J

    invoke-direct {p0}, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->updateTimeStamp()V

    if-eqz v9, :cond_b

    invoke-virtual {v9}, Ljava/util/Properties;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_b

    invoke-virtual {p0, v9}, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->isValidEndpoint(Ljava/util/Properties;)Z

    move-result v10

    if-eqz v10, :cond_8

    const-string v10, "sessionid"

    invoke-virtual {v9, v10}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->mSVSessionId:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SamsungRecognizer sessionId "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->mSVSessionId:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Lcom/samsung/vsf/util/SVoiceLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "open() successful for SamsungRecognizer@"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->id:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Lcom/samsung/vsf/util/SVoiceLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    move v8, v7

    goto/16 :goto_5

    :cond_8
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "open() has failed for SamsungRecognizer@"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->id:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Lcom/samsung/vsf/util/SVoiceLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "permission"

    invoke-virtual {v9, v10}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "open() Permission "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Lcom/samsung/vsf/util/SVoiceLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v10, :cond_9

    const-string v11, "1"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_9

    const-string v9, "open() Device is BLOCKED "

    invoke-static {v5, v9}, Lcom/samsung/vsf/util/SVoiceLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_9
    const-string v10, "serverEndpoint"

    invoke-virtual {v9, v10}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "open() serverEndpoint "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Lcom/samsung/vsf/util/SVoiceLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v9, :cond_b

    new-instance v10, Lcom/samsung/vsf/recognition/SamsungRecognizer$CancelThread;

    iget-object v11, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->mSVoiceClient:Lcom/sec/svoice/api/SVoice;

    iget v12, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->id:I

    invoke-direct {v10, v11, v12}, Lcom/samsung/vsf/recognition/SamsungRecognizer$CancelThread;-><init>(Lcom/sec/svoice/api/SVoice;I)V

    invoke-virtual {v10}, Ljava/lang/Thread;->start()V

    iput-object v3, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->mSVoiceClient:Lcom/sec/svoice/api/SVoice;

    invoke-virtual {v1}, Lcom/samsung/vsf/SpeechRecognizer$Config;->getPortNumber()I

    move-result v10

    invoke-virtual {v1, v9, v10}, Lcom/samsung/vsf/SpeechRecognizer$Config;->setServerDetails(Ljava/lang/String;I)Lcom/samsung/vsf/SpeechRecognizer$Config;

    invoke-direct {p0}, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->createSVoiceClient()V

    iget-object v9, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->this$0:Lcom/samsung/vsf/recognition/SamsungRecognizer;

    invoke-static {v9, v4}, Lcom/samsung/vsf/recognition/SamsungRecognizer;->access$602(Lcom/samsung/vsf/recognition/SamsungRecognizer;Z)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_1
    move-exception v9

    const/4 v10, 0x2

    if-ne v6, v10, :cond_a

    move v11, v7

    goto :goto_4

    :cond_a
    move v11, v4

    :goto_4
    invoke-direct {p0, v9, v11}, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->handleException(Ljava/lang/Exception;Z)V

    if-ne v6, v10, :cond_b

    iput-boolean v4, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->isOpened:Z

    :cond_b
    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_3

    :cond_c
    :goto_6
    iget-object v0, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->this$0:Lcom/samsung/vsf/recognition/SamsungRecognizer;

    invoke-static {v0, v8}, Lcom/samsung/vsf/recognition/SamsungRecognizer;->access$500(Lcom/samsung/vsf/recognition/SamsungRecognizer;Z)Z

    move-result v0

    goto/16 :goto_0
.end method

.method public openAsync()V
    .locals 4

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper$3;

    invoke-direct {v1, p0}, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper$3;-><init>(Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Thread-Recognizer@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->openThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public prepare()Z
    .locals 8

    const-string v0, "ASRProfiling"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SamsungRecognizer@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->getElapsedString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " prepare()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", device id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->this$0:Lcom/samsung/vsf/recognition/SamsungRecognizer;

    invoke-static {v2}, Lcom/samsung/vsf/recognition/SamsungRecognizer;->access$700(Lcom/samsung/vsf/recognition/SamsungRecognizer;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "tickcount"

    invoke-static {v2, v1}, Lcom/samsung/vsf/util/SVoiceLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    iget-object v3, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->this$0:Lcom/samsung/vsf/recognition/SamsungRecognizer;

    invoke-static {v3}, Lcom/samsung/vsf/recognition/SamsungRecognizer;->access$1000(Lcom/samsung/vsf/recognition/SamsungRecognizer;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->mSVoiceClient:Lcom/sec/svoice/api/SVoice;

    if-eqz v3, :cond_0

    const/16 v4, 0x2710

    invoke-virtual {v3, v4}, Lcom/sec/svoice/api/SVoice;->time_out(I)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "prepare2() starts "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/vsf/util/SVoiceLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->mSVoiceClient:Lcom/sec/svoice/api/SVoice;

    iget-object v4, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->this$0:Lcom/samsung/vsf/recognition/SamsungRecognizer;

    invoke-static {v4}, Lcom/samsung/vsf/recognition/SamsungRecognizer;->access$1100(Lcom/samsung/vsf/recognition/SamsungRecognizer;)Lcom/samsung/vsf/audio/AudioProcessor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/vsf/audio/AudioProcessor;->getMimeType()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->this$0:Lcom/samsung/vsf/recognition/SamsungRecognizer;

    invoke-virtual {v5}, Lcom/samsung/vsf/recognition/Recognizer;->getConfig()Lcom/samsung/vsf/SpeechRecognizer$Config;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/vsf/SpeechRecognizer$Config;->getSamplingRate()I

    move-result v5

    iget-object v6, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->this$0:Lcom/samsung/vsf/recognition/SamsungRecognizer;

    invoke-virtual {v6}, Lcom/samsung/vsf/recognition/Recognizer;->getConfig()Lcom/samsung/vsf/SpeechRecognizer$Config;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/vsf/SpeechRecognizer$Config;->getIsByteOrderLittleEndian()Z

    move-result v6

    iget-object v7, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->this$0:Lcom/samsung/vsf/recognition/SamsungRecognizer;

    invoke-virtual {v7}, Lcom/samsung/vsf/recognition/Recognizer;->getConfig()Lcom/samsung/vsf/SpeechRecognizer$Config;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/vsf/SpeechRecognizer$Config;->getLocale()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v4, v5, v6, v7}, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->getAsrParams(Ljava/lang/String;IZLjava/lang/String;)Ljava/util/Properties;

    move-result-object v4

    new-instance v5, Ljava/util/Properties;

    invoke-direct {v5}, Ljava/util/Properties;-><init>()V

    invoke-virtual {v3, v2, v4, v5}, Lcom/sec/svoice/api/SVoice;->prepare2(ILjava/util/Properties;Ljava/util/Properties;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "prepare2() ends "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/vsf/util/SVoiceLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->this$0:Lcom/samsung/vsf/recognition/SamsungRecognizer;

    invoke-static {v0, v2}, Lcom/samsung/vsf/recognition/SamsungRecognizer;->access$1202(Lcom/samsung/vsf/recognition/SamsungRecognizer;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-direct {p0, v0, v2}, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->handleException(Ljava/lang/Exception;Z)V

    iput-boolean v1, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->isOpened:Z

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->this$0:Lcom/samsung/vsf/recognition/SamsungRecognizer;

    invoke-static {v0, v1}, Lcom/samsung/vsf/recognition/SamsungRecognizer;->access$500(Lcom/samsung/vsf/recognition/SamsungRecognizer;Z)Z

    move-result v0

    return v0
.end method

.method public process()Z
    .locals 6

    const-string v0, "ASRProfiling"

    iget-boolean v1, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->isOpened:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SamsungRecognizer@"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->id:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->getElapsedString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " process() , device id: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->this$0:Lcom/samsung/vsf/recognition/SamsungRecognizer;

    invoke-static {v3}, Lcom/samsung/vsf/recognition/SamsungRecognizer;->access$700(Lcom/samsung/vsf/recognition/SamsungRecognizer;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "tickcount"

    invoke-static {v3, v1}, Lcom/samsung/vsf/util/SVoiceLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    :try_start_0
    iget-object v3, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->this$0:Lcom/samsung/vsf/recognition/SamsungRecognizer;

    invoke-static {v3}, Lcom/samsung/vsf/recognition/SamsungRecognizer;->access$1000(Lcom/samsung/vsf/recognition/SamsungRecognizer;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->mSVoiceClient:Lcom/sec/svoice/api/SVoice;

    if-eqz v3, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->processTimeStamp:J

    iput-boolean v1, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->isProcessing:Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "process() starts "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/vsf/util/SVoiceLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->mSVoiceClient:Lcom/sec/svoice/api/SVoice;

    new-instance v4, Ljava/util/Properties;

    invoke-direct {v4}, Ljava/util/Properties;-><init>()V

    invoke-virtual {v3, v4}, Lcom/sec/svoice/api/SVoice;->process(Ljava/util/Properties;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "process() ends "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/vsf/util/SVoiceLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->isProcessing:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-direct {p0, v0, v1}, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->handleException(Ljava/lang/Exception;Z)V

    iput-boolean v2, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->isOpened:Z

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->this$0:Lcom/samsung/vsf/recognition/SamsungRecognizer;

    invoke-static {v0, v2}, Lcom/samsung/vsf/recognition/SamsungRecognizer;->access$500(Lcom/samsung/vsf/recognition/SamsungRecognizer;Z)Z

    move-result v0

    return v0
.end method

.method public resultASR(ILjava/util/Properties;)V
    .locals 8

    const-string p1, "err"

    invoke-virtual {p2, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "tickcount"

    if-eqz p1, :cond_0

    const-string v1, "0"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In error ASRResult SamsungRecognizer@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " metadata:-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "metadata"

    invoke-virtual {p2, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "error: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/samsung/vsf/util/SVoiceLog;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->handleError(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_0
    iget-boolean p1, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->isOpened:Z

    if-eqz p1, :cond_a

    iget p1, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->id:I

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "instanceId"

    invoke-virtual {p2, v1, p1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->getProcessToASRLatency()Ljava/lang/String;

    move-result-object p1

    const-string v1, "asrLatency"

    invoke-virtual {p2, v1, p1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    iget-object v1, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->this$0:Lcom/samsung/vsf/recognition/SamsungRecognizer;

    invoke-virtual {v1}, Lcom/samsung/vsf/recognition/Recognizer;->getConfig()Lcom/samsung/vsf/SpeechRecognizer$Config;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object p1, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->this$0:Lcom/samsung/vsf/recognition/SamsungRecognizer;

    invoke-virtual {p1}, Lcom/samsung/vsf/recognition/Recognizer;->getConfig()Lcom/samsung/vsf/SpeechRecognizer$Config;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/vsf/SpeechRecognizer$Config;->getLocale()Ljava/lang/String;

    move-result-object p1

    :cond_1
    const-string v1, "utterance"

    invoke-virtual {p2, v1}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p2, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "utterance_original"

    invoke-virtual {p2, v3, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string v2, "ja-JP"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "zh-CN"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "zh-SG"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "zh-HK"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "zh-TW"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p2, v1}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p2, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_4
    :goto_0
    const-string p1, "utterancetoken"

    invoke-virtual {p2, p1}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p2, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-virtual {p2, v1, p1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    const-string p1, "itn"

    invoke-virtual {p2, p1}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p2, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, p1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->startSeqNumber:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "startSequenceNumber"

    invoke-virtual {p2, v3, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Start Seq Number :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->startSeqNumber:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/vsf/util/SVoiceLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SamsungRecognizer@"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->id:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " resultASR():-"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " itn:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/vsf/util/SVoiceLog;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "islast"

    invoke-virtual {p2, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "true"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "resultASR() "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "ASRProfiling"

    invoke-static {v6, v4}, Lcom/samsung/vsf/util/SVoiceLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->this$0:Lcom/samsung/vsf/recognition/SamsungRecognizer;

    invoke-virtual {v4}, Lcom/samsung/vsf/recognition/Recognizer;->getConfig()Lcom/samsung/vsf/SpeechRecognizer$Config;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/vsf/SpeechRecognizer$Config;->getSessionMode()I

    move-result v4

    const/4 v6, 0x2

    if-ne v4, v6, :cond_7

    iget-object v4, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->this$0:Lcom/samsung/vsf/recognition/SamsungRecognizer;

    new-instance v6, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper$1;

    invoke-direct {v6, p0}, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper$1;-><init>(Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;)V

    invoke-virtual {v4, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_7
    invoke-virtual {p2, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_8

    invoke-virtual {p2, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "false"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "empty partial ASRResult SamsungRecognizer@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "utt : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " ts: "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/vsf/util/SVoiceLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    invoke-virtual {p2, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "TEST_PLATFORM: VOICE_SEARCH_COMPLETE"

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_9
    iget-object p1, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->this$0:Lcom/samsung/vsf/recognition/SamsungRecognizer;

    invoke-static {p1}, Lcom/samsung/vsf/recognition/SamsungRecognizer;->access$400(Lcom/samsung/vsf/recognition/SamsungRecognizer;)Lcom/samsung/vsf/recognition/SamsungRecognizer$ASRResultThread;

    move-result-object p1

    if-eqz p1, :cond_a

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "startSeqNumber"

    invoke-virtual {p2, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/vsf/util/SVoiceLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->this$0:Lcom/samsung/vsf/recognition/SamsungRecognizer;

    invoke-static {p1}, Lcom/samsung/vsf/recognition/SamsungRecognizer;->access$400(Lcom/samsung/vsf/recognition/SamsungRecognizer;)Lcom/samsung/vsf/recognition/SamsungRecognizer$ASRResultThread;

    move-result-object p1

    iget v0, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->id:I

    invoke-virtual {p1, v0, p2}, Lcom/samsung/vsf/recognition/SamsungRecognizer$ASRResultThread;->addResponseToqueue(ILjava/util/Properties;)V

    :cond_a
    :goto_2
    return-void
.end method

.method public resultNLU(ILjava/util/Properties;)V
    .locals 0

    return-void
.end method

.method public resultPrepare(ILjava/util/Properties;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/sec/svoice/api/SVoiceSentinel;->resultPrepare(ILjava/util/Properties;)V

    const-string p1, "err"

    invoke-virtual {p2, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "tickcount"

    if-eqz p1, :cond_0

    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "prepare2 FAILED. Hence, close the connection"

    invoke-static {p2, v0}, Lcom/samsung/vsf/util/SVoiceLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->handleError(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "prepare2 successful. Hence, continue"

    invoke-static {p2, p1}, Lcom/samsung/vsf/util/SVoiceLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public send([B)Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->this$0:Lcom/samsung/vsf/recognition/SamsungRecognizer;

    invoke-static {v0}, Lcom/samsung/vsf/recognition/SamsungRecognizer;->access$1200(Lcom/samsung/vsf/recognition/SamsungRecognizer;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send() starts "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ASRProfiling"

    invoke-static {v2, v0}, Lcom/samsung/vsf/util/SVoiceLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->this$0:Lcom/samsung/vsf/recognition/SamsungRecognizer;

    invoke-static {v0, v1}, Lcom/samsung/vsf/recognition/SamsungRecognizer;->access$1202(Lcom/samsung/vsf/recognition/SamsungRecognizer;Z)Z

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->isOpened:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SamsungRecognizer@"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->id:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->getElapsedString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " send(), device id: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->this$0:Lcom/samsung/vsf/recognition/SamsungRecognizer;

    invoke-static {v2}, Lcom/samsung/vsf/recognition/SamsungRecognizer;->access$700(Lcom/samsung/vsf/recognition/SamsungRecognizer;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "tickcount"

    invoke-static {v2, v0}, Lcom/samsung/vsf/util/SVoiceLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->this$0:Lcom/samsung/vsf/recognition/SamsungRecognizer;

    invoke-static {v2}, Lcom/samsung/vsf/recognition/SamsungRecognizer;->access$1000(Lcom/samsung/vsf/recognition/SamsungRecognizer;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->mSVoiceClient:Lcom/sec/svoice/api/SVoice;

    if-eqz v2, :cond_1

    invoke-virtual {v2, p1}, Lcom/sec/svoice/api/SVoice;->send([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    invoke-direct {p0, p1, v0}, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->handleException(Ljava/lang/Exception;Z)V

    iput-boolean v1, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->isOpened:Z

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/samsung/vsf/recognition/SamsungRecognizer$SVoiceWrapper;->this$0:Lcom/samsung/vsf/recognition/SamsungRecognizer;

    invoke-static {p1, v1}, Lcom/samsung/vsf/recognition/SamsungRecognizer;->access$500(Lcom/samsung/vsf/recognition/SamsungRecognizer;Z)Z

    move-result p1

    return p1
.end method
