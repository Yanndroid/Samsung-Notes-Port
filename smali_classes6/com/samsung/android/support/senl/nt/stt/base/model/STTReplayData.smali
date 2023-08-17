.class public Lcom/samsung/android/support/senl/nt/stt/base/model/STTReplayData;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEFAULT_VALUE:I = -0x1

.field private static final EMPTY_STR:Ljava/lang/String; = ""

.field private static final TAG:Ljava/lang/String; = "STTReplayData"


# instance fields
.field private mProgress:I

.field private mReplayStartIndex:I

.field private mSTTData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/support/senl/nt/stt/base/model/TextData;",
            ">;"
        }
    .end annotation
.end field

.field private mTouchedWordCharStart:I

.field private mTouchedWordIndex:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private initData([Ljava/lang/String;[I)V
    .locals 0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/stt/base/model/STTDataHelper;->getTextData([Ljava/lang/String;[I)Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/stt/base/model/STTReplayData;->mSTTData:Ljava/util/ArrayList;

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/stt/base/model/STTReplayData;->mReplayStartIndex:I

    iput p1, p0, Lcom/samsung/android/support/senl/nt/stt/base/model/STTReplayData;->mProgress:I

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/stt/base/model/STTReplayData;->resetTouchedArea()V

    return-void
.end method


# virtual methods
.method public getProgress()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/stt/base/model/STTReplayData;->mProgress:I

    return v0
.end method

.method public getReplayResult()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/stt/base/model/STTReplayData;->mSTTData:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/senl/nt/stt/base/model/TextData;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/stt/base/model/TextData;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReplayStartCharIndex()I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lcom/samsung/android/support/senl/nt/stt/base/model/STTReplayData;->mReplayStartIndex:I

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/stt/base/model/STTReplayData;->mSTTData:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/senl/nt/stt/base/model/TextData;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/stt/base/model/TextData;->getTextLength()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public getTouchWordTimestamp()J
    .locals 2

    iget v0, p0, Lcom/samsung/android/support/senl/nt/stt/base/model/STTReplayData;->mTouchedWordIndex:I

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/stt/base/model/STTReplayData;->mSTTData:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/base/model/STTReplayData;->mSTTData:Ljava/util/ArrayList;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/stt/base/model/STTReplayData;->mTouchedWordIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/stt/base/model/TextData;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/stt/base/model/TextData;->getStartTime()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getTouchedWord()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/samsung/android/support/senl/nt/stt/base/model/STTReplayData;->mTouchedWordIndex:I

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/stt/base/model/STTReplayData;->mSTTData:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/base/model/STTReplayData;->mSTTData:Ljava/util/ArrayList;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/stt/base/model/STTReplayData;->mTouchedWordIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/stt/base/model/TextData;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/stt/base/model/TextData;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getTouchedWordCharEnd()I
    .locals 3

    iget v0, p0, Lcom/samsung/android/support/senl/nt/stt/base/model/STTReplayData;->mTouchedWordCharStart:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/base/model/STTReplayData;->mSTTData:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/samsung/android/support/senl/nt/stt/base/model/STTReplayData;->mTouchedWordCharStart:I

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/stt/base/model/STTReplayData;->mSTTData:Ljava/util/ArrayList;

    iget v2, p0, Lcom/samsung/android/support/senl/nt/stt/base/model/STTReplayData;->mTouchedWordIndex:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/stt/base/model/TextData;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/stt/base/model/TextData;->getTextLength()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method public getTouchedWordCharStart()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/stt/base/model/STTReplayData;->mTouchedWordCharStart:I

    return v0
.end method

.method public getTouchedWordIndex()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/stt/base/model/STTReplayData;->mTouchedWordIndex:I

    return v0
.end method

.method public isUpdateReplayResult(I)Z
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateReplayResult - mProgress: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/stt/base/model/STTReplayData;->mProgress:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " - progress: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "STTReplayData"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/stt/common/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-ltz p1, :cond_2

    iget v0, p0, Lcom/samsung/android/support/senl/nt/stt/base/model/STTReplayData;->mProgress:I

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/base/model/STTReplayData;->mSTTData:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iput p1, p0, Lcom/samsung/android/support/senl/nt/stt/base/model/STTReplayData;->mProgress:I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/stt/base/model/STTReplayData;->mSTTData:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/senl/nt/stt/base/model/TextData;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/stt/base/model/TextData;->getStartTime()I

    move-result v3

    if-le v3, p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/stt/base/model/STTReplayData;->mSTTData:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    :cond_1
    iget p1, p0, Lcom/samsung/android/support/senl/nt/stt/base/model/STTReplayData;->mReplayStartIndex:I

    if-eq v0, p1, :cond_2

    iput v0, p0, Lcom/samsung/android/support/senl/nt/stt/base/model/STTReplayData;->mReplayStartIndex:I

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public release(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/base/model/STTReplayData;->mSTTData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/stt/base/model/STTReplayData;->mSTTData:Ljava/util/ArrayList;

    :cond_0
    return-void
.end method

.method public resetTouchedArea()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/support/senl/nt/stt/base/model/STTReplayData;->mTouchedWordCharStart:I

    iput v0, p0, Lcom/samsung/android/support/senl/nt/stt/base/model/STTReplayData;->mTouchedWordIndex:I

    return-void
.end method

.method public setProgress(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/stt/base/model/STTReplayData;->mProgress:I

    return-void
.end method

.method public updateReplayData([Ljava/lang/String;[I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/stt/base/model/STTReplayData;->initData([Ljava/lang/String;[I)V

    return-void
.end method

.method public updateTouchedWordIndex(I)Z
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateTouchedWordIndex : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "STTReplayData"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/stt/common/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/base/model/STTReplayData;->mSTTData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/senl/nt/stt/base/model/TextData;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/stt/base/model/TextData;->getTextLength()I

    move-result v4

    add-int/2addr v2, v4

    if-le v2, p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/stt/base/model/STTReplayData;->mSTTData:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/support/senl/nt/stt/base/model/STTReplayData;->mTouchedWordIndex:I

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/stt/base/model/TextData;->getTextLength()I

    move-result p1

    sub-int/2addr v2, p1

    iput v2, p0, Lcom/samsung/android/support/senl/nt/stt/base/model/STTReplayData;->mTouchedWordCharStart:I

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method
