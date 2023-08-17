.class public Lcom/sec/vsg/voiceframework/DynamicRangeControl;
.super Lcom/sec/vsg/voiceframework/process/BaseAudioProcess;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/vsg/voiceframework/DynamicRangeControl$Mode;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "DynamicRangeControl"

.field private static isCurrentUTTSaturated:Z = false


# instance fields
.field private isDRCon:Z

.field private isFirstFrame:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/sec/vsg/voiceframework/DynamicRangeControl$Mode;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/vsg/voiceframework/process/BaseAudioProcess;-><init>(Ljava/lang/Enum;II)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sec/vsg/voiceframework/DynamicRangeControl;->isFirstFrame:Z

    iput-boolean p1, p0, Lcom/sec/vsg/voiceframework/DynamicRangeControl;->isDRCon:Z

    sget-object p1, Lcom/sec/vsg/voiceframework/DynamicRangeControl;->TAG:Ljava/lang/String;

    const-string p2, "DRC initialize()"

    invoke-static {p1, p2}, Lcom/sec/vsg/voiceframework/process/ProcessLOGS;->info(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/vsg/voiceframework/process/BaseAudioProcess;->VALib:Lcom/sec/vsg/voiceframework/SpeechKit;

    if-eqz p1, :cond_0

    iget p2, p0, Lcom/sec/vsg/voiceframework/process/BaseAudioProcess;->mSampleRate:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Lcom/sec/vsg/voiceframework/SpeechKit;->initializeDRC(II)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/sec/vsg/voiceframework/process/BaseAudioProcess;->id:J

    :cond_0
    return-void
.end method

.method private internalProcessDRC([SI)I
    .locals 7

    iget-boolean v0, p0, Lcom/sec/vsg/voiceframework/DynamicRangeControl;->isFirstFrame:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/sec/vsg/voiceframework/DynamicRangeControl;->isCurrentUTTSaturated:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/sec/vsg/voiceframework/DynamicRangeControl;->isDRCon:Z

    sget-object v0, Lcom/sec/vsg/voiceframework/DynamicRangeControl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DRC : Previous Utterance Saturation = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v4, Lcom/sec/vsg/voiceframework/DynamicRangeControl;->isCurrentUTTSaturated:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/sec/vsg/voiceframework/process/ProcessLOGS;->info(Ljava/lang/String;Ljava/lang/String;)V

    sput-boolean v2, Lcom/sec/vsg/voiceframework/DynamicRangeControl;->isCurrentUTTSaturated:Z

    iput-boolean v2, p0, Lcom/sec/vsg/voiceframework/DynamicRangeControl;->isFirstFrame:Z

    :cond_0
    sget-boolean v0, Lcom/sec/vsg/voiceframework/DynamicRangeControl;->isCurrentUTTSaturated:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/vsg/voiceframework/process/BaseAudioProcess;->VALib:Lcom/sec/vsg/voiceframework/SpeechKit;

    if-eqz v0, :cond_2

    iget-wide v3, p0, Lcom/sec/vsg/voiceframework/process/BaseAudioProcess;->id:J

    const-wide/16 v5, -0x1

    cmp-long v5, v3, v5

    if-eqz v5, :cond_2

    iget-boolean v5, p0, Lcom/sec/vsg/voiceframework/DynamicRangeControl;->isDRCon:Z

    if-eqz v5, :cond_1

    invoke-virtual {v0, v3, v4, p1, p2}, Lcom/sec/vsg/voiceframework/SpeechKit;->processDRC(J[SI)I

    move-result p1

    goto :goto_0

    :cond_1
    new-array v0, p2, [S

    invoke-static {p1, v2, v0, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lcom/sec/vsg/voiceframework/process/BaseAudioProcess;->VALib:Lcom/sec/vsg/voiceframework/SpeechKit;

    iget-wide v2, p0, Lcom/sec/vsg/voiceframework/process/BaseAudioProcess;->id:J

    invoke-virtual {p1, v2, v3, v0, p2}, Lcom/sec/vsg/voiceframework/SpeechKit;->processDRC(J[SI)I

    move-result p1

    :goto_0
    move v2, p1

    if-ne v2, v1, :cond_2

    sput-boolean v1, Lcom/sec/vsg/voiceframework/DynamicRangeControl;->isCurrentUTTSaturated:Z

    sget-object p1, Lcom/sec/vsg/voiceframework/DynamicRangeControl;->TAG:Ljava/lang/String;

    const-string p2, "DRC : Saturation happens"

    invoke-static {p1, p2}, Lcom/sec/vsg/voiceframework/process/ProcessLOGS;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return v2
.end method


# virtual methods
.method public checkSaturation([SI)I
    .locals 1

    iget-object v0, p0, Lcom/sec/vsg/voiceframework/process/BaseAudioProcess;->VALib:Lcom/sec/vsg/voiceframework/SpeechKit;

    invoke-virtual {v0, p1, p2}, Lcom/sec/vsg/voiceframework/SpeechKit;->checkSaturationDRC([SI)I

    move-result p1

    return p1
.end method

.method public destroy()V
    .locals 5

    sget-object v0, Lcom/sec/vsg/voiceframework/DynamicRangeControl;->TAG:Ljava/lang/String;

    const-string v1, "DRC destroy()"

    invoke-static {v0, v1}, Lcom/sec/vsg/voiceframework/process/ProcessLOGS;->info(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/sec/vsg/voiceframework/process/BaseAudioProcess;->id:J

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/sec/vsg/voiceframework/process/BaseAudioProcess;->id:J

    iget-object v4, p0, Lcom/sec/vsg/voiceframework/process/BaseAudioProcess;->VALib:Lcom/sec/vsg/voiceframework/SpeechKit;

    if-eqz v4, :cond_0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-virtual {v4, v0, v1}, Lcom/sec/vsg/voiceframework/SpeechKit;->freeMemoryDRC(J)I

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
    .locals 3

    iget-object v0, p0, Lcom/sec/vsg/voiceframework/process/BaseAudioProcess;->VALib:Lcom/sec/vsg/voiceframework/SpeechKit;

    iget-wide v1, p0, Lcom/sec/vsg/voiceframework/process/BaseAudioProcess;->id:J

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/sec/vsg/voiceframework/SpeechKit;->processDRC(J[SI)I

    move-result p1

    return p1
.end method

.method public processUnit([SI[SI)I
    .locals 2

    iget-object p3, p0, Lcom/sec/vsg/voiceframework/process/BaseAudioProcess;->VALib:Lcom/sec/vsg/voiceframework/SpeechKit;

    iget-wide v0, p0, Lcom/sec/vsg/voiceframework/process/BaseAudioProcess;->id:J

    invoke-virtual {p3, v0, v1, p1, p2}, Lcom/sec/vsg/voiceframework/SpeechKit;->processDRC(J[SI)I

    move-result p1

    return p1
.end method
