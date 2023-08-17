.class public Lcom/sec/vsg/voiceframework/NoiseReduction;
.super Lcom/sec/vsg/voiceframework/process/BaseAudioProcess;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/vsg/voiceframework/NoiseReduction$Mode;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "NoiseReduction"


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/sec/vsg/voiceframework/NoiseReduction$Mode;I)V
    .locals 3

    const/16 v0, 0x10

    invoke-direct {p0, p1, v0, p2}, Lcom/sec/vsg/voiceframework/process/BaseAudioProcess;-><init>(Ljava/lang/Enum;II)V

    iget-object p2, p0, Lcom/sec/vsg/voiceframework/process/BaseAudioProcess;->VALib:Lcom/sec/vsg/voiceframework/SpeechKit;

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/vsg/voiceframework/process/BaseAudioProcess;->getMode(Ljava/lang/Enum;)I

    move-result p2

    iget-object v0, p0, Lcom/sec/vsg/voiceframework/process/BaseAudioProcess;->VALib:Lcom/sec/vsg/voiceframework/SpeechKit;

    iget v1, p0, Lcom/sec/vsg/voiceframework/process/BaseAudioProcess;->mChannelConfig:I

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v1, v2}, Lcom/sec/vsg/voiceframework/SpeechKit;->initializeDoNS(III)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/vsg/voiceframework/process/BaseAudioProcess;->id:J

    sget-object p2, Lcom/sec/vsg/voiceframework/NoiseReduction;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NS initialized"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/sec/vsg/voiceframework/process/ProcessLOGS;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/sec/vsg/voiceframework/NoiseReduction$Mode;II)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/vsg/voiceframework/process/BaseAudioProcess;-><init>(Ljava/lang/Enum;II)V

    iget-object p2, p0, Lcom/sec/vsg/voiceframework/process/BaseAudioProcess;->VALib:Lcom/sec/vsg/voiceframework/SpeechKit;

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/vsg/voiceframework/process/BaseAudioProcess;->getMode(Ljava/lang/Enum;)I

    move-result p1

    iget-object p2, p0, Lcom/sec/vsg/voiceframework/process/BaseAudioProcess;->VALib:Lcom/sec/vsg/voiceframework/SpeechKit;

    iget p3, p0, Lcom/sec/vsg/voiceframework/process/BaseAudioProcess;->mChannelConfig:I

    const/4 v0, 0x0

    invoke-virtual {p2, p1, p3, v0}, Lcom/sec/vsg/voiceframework/SpeechKit;->initializeDoNS(III)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/sec/vsg/voiceframework/process/BaseAudioProcess;->id:J

    sget-object p1, Lcom/sec/vsg/voiceframework/NoiseReduction;->TAG:Ljava/lang/String;

    const-string p2, "NS initialized"

    invoke-static {p1, p2}, Lcom/sec/vsg/voiceframework/process/ProcessLOGS;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/sec/vsg/voiceframework/NoiseReduction$Mode;III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/vsg/voiceframework/process/BaseAudioProcess;-><init>(Ljava/lang/Enum;II)V

    iget-object p2, p0, Lcom/sec/vsg/voiceframework/process/BaseAudioProcess;->VALib:Lcom/sec/vsg/voiceframework/SpeechKit;

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/vsg/voiceframework/process/BaseAudioProcess;->getMode(Ljava/lang/Enum;)I

    move-result p1

    iget-object p2, p0, Lcom/sec/vsg/voiceframework/process/BaseAudioProcess;->VALib:Lcom/sec/vsg/voiceframework/SpeechKit;

    iget p3, p0, Lcom/sec/vsg/voiceframework/process/BaseAudioProcess;->mChannelConfig:I

    invoke-virtual {p2, p1, p3, p4}, Lcom/sec/vsg/voiceframework/SpeechKit;->initializeDoNS(III)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/sec/vsg/voiceframework/process/BaseAudioProcess;->id:J

    sget-object p1, Lcom/sec/vsg/voiceframework/NoiseReduction;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "NS initialized debugMode "

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

    sget-object v0, Lcom/sec/vsg/voiceframework/NoiseReduction;->TAG:Ljava/lang/String;

    const-string v1, "NS destroy()"

    invoke-static {v0, v1}, Lcom/sec/vsg/voiceframework/process/ProcessLOGS;->info(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/sec/vsg/voiceframework/process/BaseAudioProcess;->id:J

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/sec/vsg/voiceframework/process/BaseAudioProcess;->id:J

    iget-object v4, p0, Lcom/sec/vsg/voiceframework/process/BaseAudioProcess;->VALib:Lcom/sec/vsg/voiceframework/SpeechKit;

    if-eqz v4, :cond_0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-virtual {v4, v0, v1}, Lcom/sec/vsg/voiceframework/SpeechKit;->freeMemoryDoNS(J)I

    :cond_0
    return-void
.end method

.method public process([SI)I
    .locals 0

    invoke-super {p0, p1, p2, p1, p2}, Lcom/sec/vsg/voiceframework/process/BaseAudioProcess;->process([SI[SI)I

    move-result p1

    return p1
.end method

.method public process([SI[SI)I
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/sec/vsg/voiceframework/process/BaseAudioProcess;->process([SI[SI)I

    move-result p1

    return p1
.end method

.method public processUnit([SI)I
    .locals 7

    iget-object v0, p0, Lcom/sec/vsg/voiceframework/process/BaseAudioProcess;->VALib:Lcom/sec/vsg/voiceframework/SpeechKit;

    if-eqz v0, :cond_0

    iget-wide v1, p0, Lcom/sec/vsg/voiceframework/process/BaseAudioProcess;->id:J

    const-wide/16 v3, -0x1

    cmp-long v3, v1, v3

    if-eqz v3, :cond_0

    move-object v3, p1

    move v4, p2

    move-object v5, p1

    move v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/sec/vsg/voiceframework/SpeechKit;->processDoNSFrame(J[SI[SI)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public processUnit([SI[SI)I
    .locals 7

    iget-object v0, p0, Lcom/sec/vsg/voiceframework/process/BaseAudioProcess;->VALib:Lcom/sec/vsg/voiceframework/SpeechKit;

    if-eqz v0, :cond_0

    iget-wide v1, p0, Lcom/sec/vsg/voiceframework/process/BaseAudioProcess;->id:J

    const-wide/16 v3, -0x1

    cmp-long v3, v1, v3

    if-eqz v3, :cond_0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/sec/vsg/voiceframework/SpeechKit;->processDoNSFrame(J[SI[SI)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
