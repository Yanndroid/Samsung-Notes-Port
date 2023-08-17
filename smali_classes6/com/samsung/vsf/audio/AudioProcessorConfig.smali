.class public Lcom/samsung/vsf/audio/AudioProcessorConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final SILENCE_DUR_THRESH_MS:I = 0x7d0

.field private static final SPEECH_DUR_THRESH_MS:I = 0x1


# instance fields
.field private enableDRC:Z

.field private enableDump:Z

.field private enableEncoding:I

.field private enableNS:Z

.field private enablePCMDump:Z

.field private enableRMSComputation:Z

.field private enableRecording:Z

.field private enableSpeechDetection:Z

.field private epdThreshDur:I

.field private isRecordedBufferRequired:Z

.field private samplingRate:I

.field private spdThreshDur:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x7d0

    iput v0, p0, Lcom/samsung/vsf/audio/AudioProcessorConfig;->epdThreshDur:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/vsf/audio/AudioProcessorConfig;->spdThreshDur:I

    return-void
.end method


# virtual methods
.method public enableDRC(Z)Lcom/samsung/vsf/audio/AudioProcessorConfig;
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/vsf/audio/AudioProcessorConfig;->enableDRC:Z

    return-object p0
.end method

.method public enableEncoding(I)Lcom/samsung/vsf/audio/AudioProcessorConfig;
    .locals 0

    iput p1, p0, Lcom/samsung/vsf/audio/AudioProcessorConfig;->enableEncoding:I

    return-object p0
.end method

.method public enableNS(Z)Lcom/samsung/vsf/audio/AudioProcessorConfig;
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/vsf/audio/AudioProcessorConfig;->enableNS:Z

    return-object p0
.end method

.method public enableRMS(Z)Lcom/samsung/vsf/audio/AudioProcessorConfig;
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/vsf/audio/AudioProcessorConfig;->enableRMSComputation:Z

    return-object p0
.end method

.method public enableRecording(Z)Lcom/samsung/vsf/audio/AudioProcessorConfig;
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/vsf/audio/AudioProcessorConfig;->enableRecording:Z

    return-object p0
.end method

.method public enableSpeechDetection(Z)Lcom/samsung/vsf/audio/AudioProcessorConfig;
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/vsf/audio/AudioProcessorConfig;->enableSpeechDetection:Z

    return-object p0
.end method

.method public getEPDThresholdDuration()I
    .locals 1

    iget v0, p0, Lcom/samsung/vsf/audio/AudioProcessorConfig;->epdThreshDur:I

    return v0
.end method

.method public getEncodingType()I
    .locals 1

    iget v0, p0, Lcom/samsung/vsf/audio/AudioProcessorConfig;->enableEncoding:I

    return v0
.end method

.method public getSPDThresholdDuration()I
    .locals 1

    iget v0, p0, Lcom/samsung/vsf/audio/AudioProcessorConfig;->spdThreshDur:I

    return v0
.end method

.method public getSamplingRate()I
    .locals 1

    iget v0, p0, Lcom/samsung/vsf/audio/AudioProcessorConfig;->samplingRate:I

    return v0
.end method

.method public isDumpRequired()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/vsf/audio/AudioProcessorConfig;->enableDump:Z

    return v0
.end method

.method public isPCMDumpRequired()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/vsf/audio/AudioProcessorConfig;->enablePCMDump:Z

    return v0
.end method

.method public isRecordedBufferRequired()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/vsf/audio/AudioProcessorConfig;->isRecordedBufferRequired:Z

    return v0
.end method

.method public setEPDThresholdDuration(I)Lcom/samsung/vsf/audio/AudioProcessorConfig;
    .locals 0

    iput p1, p0, Lcom/samsung/vsf/audio/AudioProcessorConfig;->epdThreshDur:I

    return-object p0
.end method

.method public setIsDumpRequired(Z)Lcom/samsung/vsf/audio/AudioProcessorConfig;
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/vsf/audio/AudioProcessorConfig;->enableDump:Z

    return-object p0
.end method

.method public setIsPCMDumpRequired(Z)Lcom/samsung/vsf/audio/AudioProcessorConfig;
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/vsf/audio/AudioProcessorConfig;->enablePCMDump:Z

    return-object p0
.end method

.method public setIsRecordedBufferRequired(Z)Lcom/samsung/vsf/audio/AudioProcessorConfig;
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/vsf/audio/AudioProcessorConfig;->isRecordedBufferRequired:Z

    return-object p0
.end method

.method public setSPDThresholdDuration(I)Lcom/samsung/vsf/audio/AudioProcessorConfig;
    .locals 0

    iput p1, p0, Lcom/samsung/vsf/audio/AudioProcessorConfig;->spdThreshDur:I

    return-object p0
.end method

.method public setSamplingRate(I)Lcom/samsung/vsf/audio/AudioProcessorConfig;
    .locals 0

    iput p1, p0, Lcom/samsung/vsf/audio/AudioProcessorConfig;->samplingRate:I

    return-object p0
.end method

.method public shouldPerformDRC()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/vsf/audio/AudioProcessorConfig;->enableDRC:Z

    return v0
.end method

.method public shouldPerformEncoding()Z
    .locals 1

    iget v0, p0, Lcom/samsung/vsf/audio/AudioProcessorConfig;->enableEncoding:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public shouldPerformNS()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/vsf/audio/AudioProcessorConfig;->enableNS:Z

    return v0
.end method

.method public shouldPerformRMSComputation()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/vsf/audio/AudioProcessorConfig;->enableRMSComputation:Z

    return v0
.end method

.method public shouldPerformRecording()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/vsf/audio/AudioProcessorConfig;->enableRecording:Z

    return v0
.end method

.method public shouldPerformSpeechDetection()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/vsf/audio/AudioProcessorConfig;->enableSpeechDetection:Z

    return v0
.end method
