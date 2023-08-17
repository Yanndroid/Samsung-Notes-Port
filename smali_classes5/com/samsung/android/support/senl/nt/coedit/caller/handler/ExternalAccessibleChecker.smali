.class public Lcom/samsung/android/support/senl/nt/coedit/caller/handler/ExternalAccessibleChecker;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "ExternalAccessibleChecker"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestExternalAccessibleNotes(Landroid/content/Context;Ljava/util/ArrayList;Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/ExternalAccessCallback;)Z
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/ExternalAccessCallback;",
            ")Z"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    new-instance v6, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v6}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/android/support/senl/nt/coedit/common/CoeditConstants$User;->UpDownloader:Lcom/samsung/android/support/senl/nt/coedit/common/CoeditConstants$User;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_Access"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/ExternalAccessibleChecker$1;

    move-object v0, v8

    move-object v1, p0

    move-object v2, v7

    move-object v3, p2

    move-object v4, p3

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/ExternalAccessibleChecker$1;-><init>(Lcom/samsung/android/support/senl/nt/coedit/caller/handler/ExternalAccessibleChecker;Ljava/lang/String;Ljava/util/ArrayList;Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/ExternalAccessCallback;Ljava/util/concurrent/CompletableFuture;)V

    new-instance p2, Landroid/content/Intent;

    const-class p3, Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService;

    invoke-direct {p2, p1, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 p3, 0x1

    invoke-virtual {p1, p2, v8, p3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p2

    const-string p3, "ExternalAccessibleChecker"

    if-nez p2, :cond_1

    const-string p2, "requestExternalAccessibleNotes, fail to bind!"

    invoke-static {p3, p2}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v6, p2}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    :cond_1
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-wide/32 v0, 0x927c0

    :try_start_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, v0, v1, v2}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v8, v7}, Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/CoeditServiceConnection;->unsubscribe(Ljava/lang/String;)V

    invoke-static {p1, v8}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/CoeditConnectionUtils;->unbindService(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    move-object p2, v0

    goto :goto_1

    :catchall_0
    move-exception p2

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    :goto_0
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestExternalAccessibleNotes, e: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v8, v7}, Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/CoeditServiceConnection;->unsubscribe(Ljava/lang/String;)V

    invoke-static {p1, v8}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/CoeditConnectionUtils;->unbindService(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    :goto_1
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :goto_2
    invoke-virtual {v8, v7}, Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/CoeditServiceConnection;->unsubscribe(Ljava/lang/String;)V

    invoke-static {p1, v8}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/CoeditConnectionUtils;->unbindService(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    throw p2
.end method
