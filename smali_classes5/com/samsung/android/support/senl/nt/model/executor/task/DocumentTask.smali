.class public abstract Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask$TaskCallback;,
        Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask$Type;,
        Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask$CacheStrategy;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DocumentTask"


# instance fields
.field public mCacheStrategy:Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask$CacheStrategy;

.field public mCallback:Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;

.field public mContext:Landroid/content/Context;

.field public mHandler:Landroid/os/Handler;

.field public mTarget:Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;

.field public mUser:Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;

.field public mUuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask$CacheStrategy;->CACHE_MEMORY:Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask$CacheStrategy;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;->mCacheStrategy:Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask$CacheStrategy;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;->mHandler:Landroid/os/Handler;

    if-nez p2, :cond_0

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;->mHandler:Landroid/os/Handler;

    :cond_0
    return-void
.end method


# virtual methods
.method public cacheStrategy(Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask$CacheStrategy;)Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;->mCacheStrategy:Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask$CacheStrategy;

    return-object p0
.end method

.method public callback()Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;->mCallback:Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;

    return-object v0
.end method

.method public fail(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DocumentTask"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fail, uuid : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;->mCallback:Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;

    if-eqz p1, :cond_0

    invoke-interface {p1, p2, p3}, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;->failed(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getCacheStrategy()Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask$CacheStrategy;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;->mCacheStrategy:Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask$CacheStrategy;

    return-object v0
.end method

.method public abstract getType()Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask$Type;
.end method

.method public getUser()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getUser : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;->mUser:Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DocumentTask"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;->mUser:Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;

    return-object v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getUuid : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;->mUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DocumentTask"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;->mUuid:Ljava/lang/String;

    return-object v0
.end method

.method public listener(Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;)Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;
    .locals 0
    .param p1    # Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;->mCallback:Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;

    return-object p0
.end method

.method public success(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;Ljava/lang/String;)V
    .locals 2
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DocumentTask"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "success, uuid : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;->mCallback:Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;

    if-eqz p1, :cond_0

    invoke-interface {p1, p2, p3}, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;->completed(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public target(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;)Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;
    .locals 0
    .param p1    # Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;->mTarget:Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{mUser="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;->mUser:Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mCacheStrategy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;->mCacheStrategy:Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask$CacheStrategy;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mUuid=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;->mUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mTarget="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;->mTarget:Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public user(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;)Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;
    .locals 0
    .param p1    # Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;->mUser:Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;

    return-object p0
.end method

.method public uuid(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;->mUuid:Ljava/lang/String;

    return-object p0
.end method

.method public verifyLockAccountGuid(Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;Ljava/lang/String;)Z
    .locals 4
    .param p1    # Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;->getOwnerId()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/common/util/HashUtils;->getEmptyHashedString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "verifyLockAccountGuid, isLocked : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;->isLocked()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", documentAccountGuid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_0

    const-string v3, ""

    goto :goto_0

    :cond_0
    move-object v3, v0

    :goto_0
    invoke-static {v3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->pii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", requestAccountGuid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->pii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DocumentTask"

    invoke-static {v3, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;->isLocked()Z

    move-result p1

    const/4 v2, 0x1

    if-nez p1, :cond_1

    return v2

    :cond_1
    const-string p1, "FROM_SHARED_NOTES_GUID"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v2

    :cond_2
    if-nez v1, :cond_4

    invoke-static {v0, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Lcom/samsung/android/support/senl/nt/model/executor/task/exceptions/AccountGuidNotMatchedException;

    invoke-direct {p1, v0, p2}, Lcom/samsung/android/support/senl/nt/model/executor/task/exceptions/AccountGuidNotMatchedException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_1
    return v2
.end method
