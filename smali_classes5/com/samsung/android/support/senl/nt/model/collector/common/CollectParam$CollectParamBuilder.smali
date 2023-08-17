.class public Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CollectParamBuilder"
.end annotation


# static fields
.field private static final TRANSACTION_MAX_BYTE_SIZE:I = 0xf4240


# instance fields
.field private final mCollectParam:Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;-><init>(Lcom/samsung/android/support/senl/nt/model/collector/common/c;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;->mCollectParam:Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;

    return-void
.end method

.method private adjustTransactionSize()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;->mCollectParam:Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;->getChangedPageIdList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    array-length v1, v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    mul-int/2addr v1, v0

    const v0, 0xf4240

    if-le v1, v0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adjustTransactionSize# "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;->mCollectParam:Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;->setChangedPageIdList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;->mCollectParam:Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;

    sget-object v1, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$SourceType;->OTHERS:Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$SourceType;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$SourceType;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;->setSourceType(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public build()Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;->adjustTransactionSize()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;->mCollectParam:Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;

    return-object v0
.end method

.method public setActionType(I)Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;->mCollectParam:Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;->setActionType(I)V

    return-object p0
.end method

.method public setCancelType(I)Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;->mCollectParam:Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;->setCancelType(I)V

    return-object p0
.end method

.method public setChangedPageIdList(Ljava/util/List;)Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;->mCollectParam:Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;->setChangedPageIdList(Ljava/util/List;)V

    return-object p0
.end method

.method public setInReadyState(Z)Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;->mCollectParam:Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;->setInReadyState(Z)V

    return-object p0
.end method

.method public setIsNewNote(Z)Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;->mCollectParam:Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;->setIsNewNote(Z)V

    return-object p0
.end method

.method public setLastModifiedAt(J)Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;->mCollectParam:Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;->setLastModifiedAt(J)V

    return-object p0
.end method

.method public setLinkWith(I)Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;->mCollectParam:Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;->setLinkWith(I)V

    return-object p0
.end method

.method public setNoteJobFinishCallback(Lcom/samsung/android/support/senl/nt/base/common/jobscheduler/INoteJob$INoteJobFinishCallback;)Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;->mCollectParam:Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;->setNoteJobFinishCallback(Lcom/samsung/android/support/senl/nt/base/common/jobscheduler/INoteJob$INoteJobFinishCallback;)V

    return-object p0
.end method

.method public setPdfActionCaller(Ljava/lang/Class;)Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;->mCollectParam:Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;->setPdfActionCaller(Ljava/lang/Class;)V

    return-object p0
.end method

.method public setPdfActionKey(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;->mCollectParam:Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;->setPdfActionKey(Ljava/lang/String;)V

    return-object p0
.end method

.method public setPriority(I)Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;->mCollectParam:Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;->setPriority(I)V

    return-object p0
.end method

.method public setSourceType(I)Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;->mCollectParam:Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;->setSourceType(I)V

    return-object p0
.end method

.method public setTriggerType(I)Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;->mCollectParam:Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;->setTriggerType(I)V

    return-object p0
.end method

.method public setUuid(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;->mCollectParam:Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;->setUuid(Ljava/lang/String;)V

    return-object p0
.end method
