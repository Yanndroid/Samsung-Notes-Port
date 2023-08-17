.class public abstract Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/ContentProviderLiveData;
.super Landroidx/lifecycle/MutableLiveData;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/lifecycle/MutableLiveData<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroid/net/Uri;

.field public final c:Z

.field public d:Landroid/database/ContentObserver;

.field public final e:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Z)V
    .locals 2

    invoke-direct {p0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/ContentProviderLiveData;->d:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;

    const-string v1, "ContentProviderLiveData"

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/ContentProviderLiveData;->e:Ljava/util/concurrent/Executor;

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/ContentProviderLiveData;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/ContentProviderLiveData;->b:Landroid/net/Uri;

    iput-boolean p3, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/ContentProviderLiveData;->c:Z

    return-void
.end method


# virtual methods
.method public abstract a()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public onActive()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/ContentProviderLiveData;->d:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/ContentProviderLiveData$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/ContentProviderLiveData$1;-><init>(Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/ContentProviderLiveData;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/ContentProviderLiveData;->d:Landroid/database/ContentObserver;

    iget-boolean v0, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/ContentProviderLiveData;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/ContentProviderLiveData;->e:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/ContentProviderLiveData$a;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/ContentProviderLiveData$a;-><init>(Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/ContentProviderLiveData;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    :try_start_0
    invoke-static {}, Ln/a;->n()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/ContentProviderLiveData;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/ContentProviderLiveData;->b:Landroid/net/Uri;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/ContentProviderLiveData;->d:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActive() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ContentProviderLiveData"

    invoke-static {v2, v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x1

    invoke-static {v0}, Ln/a;->x(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onInactive()V
    .locals 3

    :try_start_0
    invoke-static {}, Ln/a;->n()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/ContentProviderLiveData;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/ContentProviderLiveData;->d:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInactive() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ContentProviderLiveData"

    invoke-static {v2, v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method
