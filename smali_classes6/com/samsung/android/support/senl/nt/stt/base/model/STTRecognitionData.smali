.class public Lcom/samsung/android/support/senl/nt/stt/base/model/STTRecognitionData;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "STTRecognitionData"


# instance fields
.field private mDisplayedSttData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/support/senl/nt/stt/base/model/TextData;",
            ">;"
        }
    .end annotation
.end field

.field private mStringRecognition:Landroid/text/SpannableStringBuilder;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/stt/base/model/STTRecognitionData;->initData()V

    return-void
.end method

.method private initData()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/base/model/STTRecognitionData;->mDisplayedSttData:Ljava/util/ArrayList;

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/base/model/STTRecognitionData;->mStringRecognition:Landroid/text/SpannableStringBuilder;

    return-void
.end method

.method private isReleased()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/base/model/STTRecognitionData;->mDisplayedSttData:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/base/model/STTRecognitionData;->mStringRecognition:Landroid/text/SpannableStringBuilder;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    const-string v1, "STTRecognitionData"

    const-string v2, "Already released"

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/stt/common/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return v0
.end method

.method private isWordAvailable(Lcom/samsung/android/support/senl/nt/stt/base/model/TextData;)Z
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/stt/base/model/TextData;->getText()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private makeCloneOfSttData(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/support/senl/nt/stt/base/model/TextData;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/support/senl/nt/stt/base/model/TextData;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    :cond_1
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/stt/base/model/TextData;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/stt/base/model/TextDataCreator;->getInstance()Lcom/samsung/android/support/senl/nt/stt/base/model/TextDataCreator;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/nt/stt/base/model/TextDataCreator;->cloneTextData(Lcom/samsung/android/support/senl/nt/stt/base/model/TextData;)Lcom/samsung/android/support/senl/nt/stt/base/model/TextData;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    return-void
.end method

.method private updateData(Ljava/lang/String;[IZ)V
    .locals 1

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/stt/base/model/STTDataHelper;->getProcessingString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/base/model/STTRecognitionData;->mStringRecognition:Landroid/text/SpannableStringBuilder;

    if-eqz p3, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    const/4 v0, 0x1

    if-ge p3, v0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/stt/base/model/STTDataHelper;->getEmptyWord()Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {p1, p2, v0}, Lcom/samsung/android/support/senl/nt/stt/base/model/STTDataHelper;->getTextData(Ljava/lang/String;[IZ)Ljava/util/ArrayList;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/stt/base/model/STTRecognitionData;->mDisplayedSttData:Ljava/util/ArrayList;

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_2

    array-length p3, p2

    if-lez p3, :cond_2

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Lcom/samsung/android/support/senl/nt/stt/base/model/STTDataHelper;->getTextData(Ljava/lang/String;[IZ)Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public declared-synchronized getDisplayText()Landroid/text/SpannableStringBuilder;
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/stt/base/model/STTRecognitionData;->isReleased()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/base/model/STTRecognitionData;->mStringRecognition:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/stt/base/model/STTRecognitionData;->mDisplayedSttData:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/senl/nt/stt/base/model/TextData;

    invoke-direct {p0, v2}, Lcom/samsung/android/support/senl/nt/stt/base/model/STTRecognitionData;->isWordAvailable(Lcom/samsung/android/support/senl/nt/stt/base/model/TextData;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/stt/base/model/TextData;->getTextLength()I

    move-result v3

    add-int/2addr v0, v3

    const-string v3, "STTRecognitionData"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "display : <"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/stt/base/model/TextData;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x3e

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v5, " startTime : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/stt/base/model/TextData;->getStartTime()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " endTime : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/stt/base/model/TextData;->getEndTime()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " Length : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/support/senl/nt/stt/common/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/stt/base/model/STTRecognitionData;->mStringRecognition:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/stt/base/model/TextData;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    :cond_2
    const-string v0, "STTRecognitionData"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disPlayText = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/stt/base/model/STTRecognitionData;->mStringRecognition:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/stt/base/model/STTRecognitionData;->mStringRecognition:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/stt/common/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/base/model/STTRecognitionData;->mStringRecognition:Landroid/text/SpannableStringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getListText()[Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/base/model/STTRecognitionData;->mDisplayedSttData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/stt/base/model/STTRecognitionData;->mDisplayedSttData:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/senl/nt/stt/base/model/TextData;

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/stt/base/model/TextData;->getText()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    move v2, v4

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public release(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/base/model/STTRecognitionData;->mStringRecognition:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/base/model/STTRecognitionData;->mDisplayedSttData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/stt/base/model/STTRecognitionData;->mStringRecognition:Landroid/text/SpannableStringBuilder;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/stt/base/model/STTRecognitionData;->mDisplayedSttData:Ljava/util/ArrayList;

    :cond_0
    return-void
.end method

.method public updateRecognitionData(Ljava/lang/String;[IZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/stt/base/model/STTRecognitionData;->updateData(Ljava/lang/String;[IZ)V

    return-void
.end method
