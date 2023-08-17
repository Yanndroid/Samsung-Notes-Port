.class public Lcom/sec/vsg/voiceframework/EndPointDetector;
.super Lcom/sec/vsg/voiceframework/process/BaseAudioProcess;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/vsg/voiceframework/EndPointDetector$Mode;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "EndPointDetector"


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/sec/vsg/voiceframework/EndPointDetector$Mode;I)V
    .locals 2

    const/16 v0, 0x10

    invoke-direct {p0, p1, v0, p2}, Lcom/sec/vsg/voiceframework/process/BaseAudioProcess;-><init>(Ljava/lang/Enum;II)V

    iget-object p2, p0, Lcom/sec/vsg/voiceframework/process/BaseAudioProcess;->VALib:Lcom/sec/vsg/voiceframework/SpeechKit;

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/vsg/voiceframework/process/BaseAudioProcess;->getMode(Ljava/lang/Enum;)I

    move-result p2

    iget-object v0, p0, Lcom/sec/vsg/voiceframework/process/BaseAudioProcess;->VALib:Lcom/sec/vsg/voiceframework/SpeechKit;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lcom/sec/vsg/voiceframework/SpeechKit;->initializeEPD(II)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/vsg/voiceframework/process/BaseAudioProcess;->id:J

    sget-object p2, Lcom/sec/vsg/voiceframework/EndPointDetector;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EPD initialized"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/sec/vsg/voiceframework/process/ProcessLOGS;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/sec/vsg/voiceframework/EndPointDetector$Mode;II)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/vsg/voiceframework/process/BaseAudioProcess;-><init>(Ljava/lang/Enum;II)V

    iget-object p2, p0, Lcom/sec/vsg/voiceframework/process/BaseAudioProcess;->VALib:Lcom/sec/vsg/voiceframework/SpeechKit;

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/vsg/voiceframework/process/BaseAudioProcess;->getMode(Ljava/lang/Enum;)I

    move-result p2

    iget-object p3, p0, Lcom/sec/vsg/voiceframework/process/BaseAudioProcess;->VALib:Lcom/sec/vsg/voiceframework/SpeechKit;

    const/4 v0, 0x0

    invoke-virtual {p3, p2, v0}, Lcom/sec/vsg/voiceframework/SpeechKit;->initializeEPD(II)J

    move-result-wide p2

    iput-wide p2, p0, Lcom/sec/vsg/voiceframework/process/BaseAudioProcess;->id:J

    sget-object p2, Lcom/sec/vsg/voiceframework/EndPointDetector;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "EPD initialized"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/sec/vsg/voiceframework/process/ProcessLOGS;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/sec/vsg/voiceframework/EndPointDetector$Mode;III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/vsg/voiceframework/process/BaseAudioProcess;-><init>(Ljava/lang/Enum;II)V

    iget-object p2, p0, Lcom/sec/vsg/voiceframework/process/BaseAudioProcess;->VALib:Lcom/sec/vsg/voiceframework/SpeechKit;

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/vsg/voiceframework/process/BaseAudioProcess;->getMode(Ljava/lang/Enum;)I

    move-result p1

    iget-object p2, p0, Lcom/sec/vsg/voiceframework/process/BaseAudioProcess;->VALib:Lcom/sec/vsg/voiceframework/SpeechKit;

    invoke-virtual {p2, p1, p4}, Lcom/sec/vsg/voiceframework/SpeechKit;->initializeEPD(II)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/sec/vsg/voiceframework/process/BaseAudioProcess;->id:J

    sget-object p1, Lcom/sec/vsg/voiceframework/EndPointDetector;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "EPD initialized debugMode "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/sec/vsg/voiceframework/process/ProcessLOGS;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 5

    sget-object v0, Lcom/sec/vsg/voiceframework/EndPointDetector;->TAG:Ljava/lang/String;

    const-string v1, "EPD destroy()"

    invoke-static {v0, v1}, Lcom/sec/vsg/voiceframework/process/ProcessLOGS;->info(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/sec/vsg/voiceframework/process/BaseAudioProcess;->id:J

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/sec/vsg/voiceframework/process/BaseAudioProcess;->id:J

    iget-object v4, p0, Lcom/sec/vsg/voiceframework/process/BaseAudioProcess;->VALib:Lcom/sec/vsg/voiceframework/SpeechKit;

    if-eqz v4, :cond_0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-virtual {v4, v0, v1}, Lcom/sec/vsg/voiceframework/SpeechKit;->freeMemoryEPD(J)I

    :cond_0
    return-void
.end method

.method public process([SI)I
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/sec/vsg/voiceframework/process/BaseAudioProcess;->process([SI)I

    move-result p1

    return p1
.end method

.method public process([SII)I
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/sec/vsg/voiceframework/process/BaseAudioProcess;->process([SII)I

    move-result p1

    return p1
.end method

.method public processUnit([SI)I
    .locals 5

    iget-object v0, p0, Lcom/sec/vsg/voiceframework/process/BaseAudioProcess;->VALib:Lcom/sec/vsg/voiceframework/SpeechKit;

    if-eqz v0, :cond_0

    iget-wide v1, p0, Lcom/sec/vsg/voiceframework/process/BaseAudioProcess;->id:J

    const-wide/16 v3, -0x1

    cmp-long v3, v1, v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/sec/vsg/voiceframework/SpeechKit;->processEPDFrame(J[SI)I

    move-result p1

    sget-object p2, Lcom/sec/vsg/voiceframework/EndPointDetector;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EPD aar val:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/sec/vsg/voiceframework/process/ProcessLOGS;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public processUnit([SI[SI)I
    .locals 4

    iget-object p3, p0, Lcom/sec/vsg/voiceframework/process/BaseAudioProcess;->VALib:Lcom/sec/vsg/voiceframework/SpeechKit;

    if-eqz p3, :cond_0

    iget-wide v0, p0, Lcom/sec/vsg/voiceframework/process/BaseAudioProcess;->id:J

    const-wide/16 v2, -0x1

    cmp-long p4, v0, v2

    if-eqz p4, :cond_0

    invoke-virtual {p3, v0, v1, p1, p2}, Lcom/sec/vsg/voiceframework/SpeechKit;->processEPDFrame(J[SI)I

    move-result p1

    sget-object p2, Lcom/sec/vsg/voiceframework/EndPointDetector;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "EPD aar val:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/sec/vsg/voiceframework/process/ProcessLOGS;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public reset()V
    .locals 5

    sget-object v0, Lcom/sec/vsg/voiceframework/EndPointDetector;->TAG:Ljava/lang/String;

    const-string v1, "EPD param reset()"

    invoke-static {v0, v1}, Lcom/sec/vsg/voiceframework/process/ProcessLOGS;->info(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/vsg/voiceframework/process/BaseAudioProcess;->VALib:Lcom/sec/vsg/voiceframework/SpeechKit;

    if-eqz v0, :cond_0

    iget-wide v1, p0, Lcom/sec/vsg/voiceframework/process/BaseAudioProcess;->id:J

    const-wide/16 v3, -0x1

    cmp-long v3, v1, v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v1, v2}, Lcom/sec/vsg/voiceframework/SpeechKit;->resetEPDparams(J)I

    :cond_0
    return-void
.end method

.method public setLogStatus(Z)V
    .locals 5

    sget-object v0, Lcom/sec/vsg/voiceframework/EndPointDetector;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EPD setLogStatus ( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " ) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/vsg/voiceframework/process/ProcessLOGS;->info(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/vsg/voiceframework/process/BaseAudioProcess;->VALib:Lcom/sec/vsg/voiceframework/SpeechKit;

    if-eqz v0, :cond_0

    iget-wide v1, p0, Lcom/sec/vsg/voiceframework/process/BaseAudioProcess;->id:J

    const-wide/16 v3, -0x1

    cmp-long v3, v1, v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v1, v2, p1}, Lcom/sec/vsg/voiceframework/SpeechKit;->LogEpdSetting(JI)I

    :cond_0
    return-void
.end method
