.class public final Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData$VoiceProperty;
    }
.end annotation


# instance fields
.field private mHandle:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;->mHandle:I

    return-void
.end method

.method private native VoiceData_attachFile(ILjava/lang/String;)Z
.end method

.method private native VoiceData_finalize(I)Z
.end method

.method private native VoiceData_getAttachedFile(I)Ljava/lang/String;
.end method

.method private native VoiceData_getCreationTime(I)J
.end method

.method private native VoiceData_getName(I)Ljava/lang/String;
.end method

.method private native VoiceData_getPlayTime(I)Ljava/lang/String;
.end method

.method private native VoiceData_getRecordingTime(I)J
.end method

.method private native VoiceData_getVoicePropertyList(I)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData$VoiceProperty;",
            ">;"
        }
    .end annotation
.end method

.method private native VoiceData_setAction(II)Z
.end method

.method private native VoiceData_setCreationTime(IJ)Z
.end method

.method private native VoiceData_setName(ILjava/lang/String;)Z
.end method

.method private native VoiceData_setPlayTime(ILjava/lang/String;)Z
.end method

.method private native VoiceData_setRecordingTime(IJ)Z
.end method

.method private throwUncheckedException(I)V
    .locals 2

    const/16 v0, 0x13

    if-eq p1, v0, :cond_0

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(I)V

    return-void

    :cond_0
    new-instance p1, Lcom/samsung/android/sdk/pen/document/SpenAlreadyClosedException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SpenVoiceData("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ") is already closed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/samsung/android/sdk/pen/document/SpenAlreadyClosedException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public attachFile(Ljava/lang/String;)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;->VoiceData_attachFile(ILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    const/16 v0, 0xb

    if-eq p1, v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;->throwUncheckedException(I)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "E_FILE_CAN_NOT_OPEN"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;->mHandle:I

    check-cast p1, Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;

    iget p1, p1, Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;->mHandle:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public finalize()V
    .locals 1

    :try_start_0
    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;->VoiceData_finalize(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;->mHandle:I

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getAttachedFile()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;->VoiceData_getAttachedFile(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCreationTime()J
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;->VoiceData_getCreationTime(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;->VoiceData_getName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPlayTime()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;->VoiceData_getPlayTime(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRecordingTime()J
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;->VoiceData_getRecordingTime(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getRuntimeHandle()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;->mHandle:I

    return v0
.end method

.method public getVoicePropertyList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData$VoiceProperty;",
            ">;"
        }
    .end annotation

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;->VoiceData_getVoicePropertyList(I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public pause()V
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;->mHandle:I

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;->VoiceData_setAction(II)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public resume()V
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;->mHandle:I

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;->VoiceData_setAction(II)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setCreationTime(J)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;->mHandle:I

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;->VoiceData_setCreationTime(IJ)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;->VoiceData_setName(ILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setPlayTime(Ljava/lang/String;)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;->VoiceData_setPlayTime(ILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setRecordingTime(J)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;->mHandle:I

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;->VoiceData_setRecordingTime(IJ)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public start()V
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;->mHandle:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;->VoiceData_setAction(II)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;->mHandle:I

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;->VoiceData_setAction(II)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method
