.class public Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;->w()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController$b;->a:Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->x()Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->D()Z

    move-result v0

    const-string v1, "SyncOldServiceController"

    if-eqz v0, :cond_0

    const-string v0, "checkAndRequestSyncMsFeed() : call requestSync()"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ly2/b;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ly2/b;-><init>(I)V

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController$b;->a:Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;->e(Ly2/b;)V

    goto :goto_0

    :cond_0
    const-string v0, "checkAndRequestSyncMsFeed() : No note to sync for MS feed!"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
