.class public Lcom/samsung/android/support/senl/nt/model/executor/task/DiscardCacheDocumentTask;
.super Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/model/executor/task/DiscardCacheDocumentTask$Builder;,
        Lcom/samsung/android/support/senl/nt/model/executor/task/DiscardCacheDocumentTask$DiscardTaskCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DiscardCacheDocumentTask"


# instance fields
.field private mDiscardTaskCallback:Lcom/samsung/android/support/senl/nt/model/executor/task/DiscardCacheDocumentTask$DiscardTaskCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    return-void
.end method

.method private getUsingDocReferenceCount(Ljava/lang/String;)I
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/executor/task/DiscardCacheDocumentTask;->mDiscardTaskCallback:Lcom/samsung/android/support/senl/nt/model/executor/task/DiscardCacheDocumentTask$DiscardTaskCallback;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/model/executor/task/DiscardCacheDocumentTask$DiscardTaskCallback;->getUsingDocReferenceCount(Ljava/lang/String;)I

    move-result v0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUsingDocReferenceCount, uuid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", count : "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "DiscardCacheDocumentTask"

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method


# virtual methods
.method public getType()Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask$Type;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask$Type;->DISCARD_CACHE:Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask$Type;

    return-object v0
.end method

.method public run()V
    .locals 6

    const-string v0, "DiscardCacheDocumentTask"

    :try_start_0
    const-string v1, "DiscardCacheDocumentTask$run"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;->mTarget:Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;

    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;->getDoc()Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v1, "DiscardCacheDocumentTask$run, can not found in doc map."

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "can not found in doc map."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;->fail(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;->getDoc()Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v1, "DiscardCacheDocumentTask$run, the doc was already closed."

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "the doc was already closed."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;->fail(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/support/senl/nt/model/executor/task/DiscardCacheDocumentTask;->getUsingDocReferenceCount(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_2

    const-string v1, "DiscardCacheDocumentTask$run, other users were using document."

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DiscardCacheDocumentTask$run, hasUnsavedData: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;->mContext:Landroid/content/Context;

    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDocFile;->hasUnsavedData(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;->reserveDiscard(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;->success(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "runTask failed, e : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;->fail(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public taskListener(Lcom/samsung/android/support/senl/nt/model/executor/task/DiscardCacheDocumentTask$DiscardTaskCallback;)Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;
    .locals 0
    .param p1    # Lcom/samsung/android/support/senl/nt/model/executor/task/DiscardCacheDocumentTask$DiscardTaskCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/model/executor/task/DiscardCacheDocumentTask;->mDiscardTaskCallback:Lcom/samsung/android/support/senl/nt/model/executor/task/DiscardCacheDocumentTask$DiscardTaskCallback;

    return-object p0
.end method
