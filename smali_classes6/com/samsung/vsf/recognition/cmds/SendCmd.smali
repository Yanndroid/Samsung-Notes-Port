.class public Lcom/samsung/vsf/recognition/cmds/SendCmd;
.super Lcom/samsung/vsf/recognition/Cmd;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/vsf/recognition/cmds/SendCmd$SpeechDetectionResult;
    }
.end annotation


# instance fields
.field private duration:I

.field private isBufferBeforeEPD:Z

.field private mBuffer:[B

.field private mEPDResult:Lcom/samsung/vsf/recognition/cmds/SendCmd$SpeechDetectionResult;

.field private mRMSValue:I

.field private seqNumber:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/vsf/recognition/Cmd;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/vsf/recognition/cmds/SendCmd;->isBufferBeforeEPD:Z

    iput v0, p0, Lcom/samsung/vsf/recognition/cmds/SendCmd;->seqNumber:I

    sget-object v0, Lcom/samsung/vsf/recognition/cmds/SendCmd$SpeechDetectionResult;->NONE:Lcom/samsung/vsf/recognition/cmds/SendCmd$SpeechDetectionResult;

    iput-object v0, p0, Lcom/samsung/vsf/recognition/cmds/SendCmd;->mEPDResult:Lcom/samsung/vsf/recognition/cmds/SendCmd$SpeechDetectionResult;

    iput p1, p0, Lcom/samsung/vsf/recognition/cmds/SendCmd;->seqNumber:I

    return-void
.end method


# virtual methods
.method public execute(Lcom/samsung/vsf/recognition/Recognizer$CmdHandler;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/samsung/vsf/recognition/Recognizer$CmdHandler;->send(Lcom/samsung/vsf/recognition/Cmd;)V

    return-void
.end method

.method public getAudioBuffer()[B
    .locals 1

    iget-object v0, p0, Lcom/samsung/vsf/recognition/cmds/SendCmd;->mBuffer:[B

    return-object v0
.end method

.method public getDuration()I
    .locals 1

    iget v0, p0, Lcom/samsung/vsf/recognition/cmds/SendCmd;->duration:I

    return v0
.end method

.method public getRMSValue()I
    .locals 1

    iget v0, p0, Lcom/samsung/vsf/recognition/cmds/SendCmd;->mRMSValue:I

    return v0
.end method

.method public getSequenceNumber()I
    .locals 1

    iget v0, p0, Lcom/samsung/vsf/recognition/cmds/SendCmd;->seqNumber:I

    return v0
.end method

.method public getSpeechDetectionResult()Lcom/samsung/vsf/recognition/cmds/SendCmd$SpeechDetectionResult;
    .locals 1

    iget-object v0, p0, Lcom/samsung/vsf/recognition/cmds/SendCmd;->mEPDResult:Lcom/samsung/vsf/recognition/cmds/SendCmd$SpeechDetectionResult;

    return-object v0
.end method

.method public isBufferBeforeEPD()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/vsf/recognition/cmds/SendCmd;->isBufferBeforeEPD:Z

    return v0
.end method

.method public setBuffer([B)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/vsf/recognition/cmds/SendCmd;->mBuffer:[B

    return-void
.end method

.method public setDuration(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/vsf/recognition/cmds/SendCmd;->duration:I

    return-void
.end method

.method public setIsBufferBeforeEPD(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/vsf/recognition/cmds/SendCmd;->isBufferBeforeEPD:Z

    return-void
.end method

.method public setRMSValue(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/vsf/recognition/cmds/SendCmd;->mRMSValue:I

    return-void
.end method

.method public setSpeechDetectionResult(Lcom/samsung/vsf/recognition/cmds/SendCmd$SpeechDetectionResult;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/vsf/recognition/cmds/SendCmd;->mEPDResult:Lcom/samsung/vsf/recognition/cmds/SendCmd$SpeechDetectionResult;

    return-void
.end method
