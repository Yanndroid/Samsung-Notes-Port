.class public Lcom/sec/vsg/voiceframework/NoiseChecker;
.super Lcom/sec/vsg/voiceframework/process/BaseAudioProcess;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/vsg/voiceframework/NoiseChecker$Mode;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NoiseChecker"


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/sec/vsg/voiceframework/NoiseChecker$Mode;I)V
    .locals 1

    const/16 v0, 0x10

    invoke-direct {p0, p1, v0, p2}, Lcom/sec/vsg/voiceframework/process/BaseAudioProcess;-><init>(Ljava/lang/Enum;II)V

    iget-object p2, p0, Lcom/sec/vsg/voiceframework/process/BaseAudioProcess;->VALib:Lcom/sec/vsg/voiceframework/SpeechKit;

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/vsg/voiceframework/process/BaseAudioProcess;->getMode(Ljava/lang/Enum;)I

    iget-object p1, p0, Lcom/sec/vsg/voiceframework/process/BaseAudioProcess;->VALib:Lcom/sec/vsg/voiceframework/SpeechKit;

    invoke-virtual {p1}, Lcom/sec/vsg/voiceframework/SpeechKit;->initializeENV()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/sec/vsg/voiceframework/process/BaseAudioProcess;->id:J

    sget-object p1, Lcom/sec/vsg/voiceframework/NoiseChecker;->TAG:Ljava/lang/String;

    const-string p2, "NC initialized"

    invoke-static {p1, p2}, Lcom/sec/vsg/voiceframework/process/ProcessLOGS;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/sec/vsg/voiceframework/NoiseChecker$Mode;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/vsg/voiceframework/process/BaseAudioProcess;-><init>(Ljava/lang/Enum;II)V

    iget-object p2, p0, Lcom/sec/vsg/voiceframework/process/BaseAudioProcess;->VALib:Lcom/sec/vsg/voiceframework/SpeechKit;

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/vsg/voiceframework/process/BaseAudioProcess;->getMode(Ljava/lang/Enum;)I

    iget-object p1, p0, Lcom/sec/vsg/voiceframework/process/BaseAudioProcess;->VALib:Lcom/sec/vsg/voiceframework/SpeechKit;

    invoke-virtual {p1}, Lcom/sec/vsg/voiceframework/SpeechKit;->initializeENV()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/sec/vsg/voiceframework/process/BaseAudioProcess;->id:J

    sget-object p1, Lcom/sec/vsg/voiceframework/NoiseChecker;->TAG:Ljava/lang/String;

    const-string p2, "NC initialized"

    invoke-static {p1, p2}, Lcom/sec/vsg/voiceframework/process/ProcessLOGS;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 5

    sget-object v0, Lcom/sec/vsg/voiceframework/NoiseChecker;->TAG:Ljava/lang/String;

    const-string v1, "NC destroy()"

    invoke-static {v0, v1}, Lcom/sec/vsg/voiceframework/process/ProcessLOGS;->info(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/sec/vsg/voiceframework/process/BaseAudioProcess;->id:J

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/sec/vsg/voiceframework/process/BaseAudioProcess;->id:J

    iget-object v4, p0, Lcom/sec/vsg/voiceframework/process/BaseAudioProcess;->VALib:Lcom/sec/vsg/voiceframework/SpeechKit;

    if-eqz v4, :cond_0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-virtual {v4, v0, v1}, Lcom/sec/vsg/voiceframework/SpeechKit;->freeMemoryDoENV(J)I

    :cond_0
    return-void
.end method

.method public getEnvMinima([SI)I
    .locals 5

    iget-object v0, p0, Lcom/sec/vsg/voiceframework/process/BaseAudioProcess;->VALib:Lcom/sec/vsg/voiceframework/SpeechKit;

    if-eqz v0, :cond_0

    iget-wide v1, p0, Lcom/sec/vsg/voiceframework/process/BaseAudioProcess;->id:J

    const-wide/16 v3, -0x1

    cmp-long v3, v1, v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/sec/vsg/voiceframework/SpeechKit;->processENVFrame(J[SI)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getEnvResult([SI)I
    .locals 5

    iget-object v0, p0, Lcom/sec/vsg/voiceframework/process/BaseAudioProcess;->VALib:Lcom/sec/vsg/voiceframework/SpeechKit;

    if-eqz v0, :cond_0

    iget-wide v1, p0, Lcom/sec/vsg/voiceframework/process/BaseAudioProcess;->id:J

    const-wide/16 v3, -0x1

    cmp-long v3, v1, v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/sec/vsg/voiceframework/SpeechKit;->processENVFrame(J[SI)I

    iget-object p1, p0, Lcom/sec/vsg/voiceframework/process/BaseAudioProcess;->VALib:Lcom/sec/vsg/voiceframework/SpeechKit;

    iget-wide v0, p0, Lcom/sec/vsg/voiceframework/process/BaseAudioProcess;->id:J

    invoke-virtual {p1, v0, v1}, Lcom/sec/vsg/voiceframework/SpeechKit;->getEnvResultValue(J)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
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

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/sec/vsg/voiceframework/SpeechKit;->processENVFrame(J[SI)I

    move-result p1

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

    invoke-virtual {p3, v0, v1, p1, p2}, Lcom/sec/vsg/voiceframework/SpeechKit;->processENVFrame(J[SI)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
