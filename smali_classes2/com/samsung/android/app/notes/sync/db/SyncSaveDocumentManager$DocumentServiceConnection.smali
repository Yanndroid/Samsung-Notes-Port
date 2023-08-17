.class Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager$DocumentServiceConnection;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DocumentServiceConnection"
.end annotation


# instance fields
.field private mRequestDisconnect:Z

.field public final synthetic this$0:Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager$DocumentServiceConnection;->this$0:Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager$DocumentServiceConnection;->mRequestDisconnect:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager;Lcom/samsung/android/app/notes/sync/db/r;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager$DocumentServiceConnection;-><init>(Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager;)V

    return-void
.end method


# virtual methods
.method public isRequestDisconnect()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager$DocumentServiceConnection;->mRequestDisconnect:Z

    return v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    const-string p1, "SyncSaveDocumentManager"

    const-string v0, "onServiceConnected"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager$DocumentServiceConnection;->this$0:Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager;

    invoke-static {p1}, Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager;->b(Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager$DocumentServiceConnection;->isRequestDisconnect()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object p2, p0, Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager$DocumentServiceConnection;->this$0:Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager;

    invoke-static {p2}, Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager;->a(Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    monitor-exit p1

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager$DocumentServiceConnection;->this$0:Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager;

    check-cast p2, Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceBinder;

    sget-object v2, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;->SYNC_SERVICE_ID:Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;->getUser()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager$DocumentServiceConnection;->this$0:Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager;

    invoke-static {v3}, Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager;->d(Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager;)Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;

    move-result-object v3

    invoke-interface {p2, v2, v3}, Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceBinder;->subscribe(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;)Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager;->e(Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager;Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper;)V

    iget-object p2, p0, Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager$DocumentServiceConnection;->this$0:Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager;

    invoke-static {p2}, Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager;->c(Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager;)Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper;->getUser()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager;->f(Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;)V

    iget-object p2, p0, Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager$DocumentServiceConnection;->this$0:Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager;

    invoke-static {p2}, Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager;->c(Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager;)Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper;

    move-result-object p2

    new-instance v0, Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager$DocumentServiceConnection$a;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager$DocumentServiceConnection$a;-><init>(Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager$DocumentServiceConnection;)V

    invoke-virtual {p2, v0}, Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper;->registerDocumentServiceListener(Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper$DocumentServiceListener;)V

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager$DocumentServiceConnection;->this$0:Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager;

    invoke-static {p1}, Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager;->a(Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :catchall_0
    move-exception p2

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "SyncSaveDocumentManager"

    const-string v0, "onServiceDisconnected"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setRequestDisconnect(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager$DocumentServiceConnection;->mRequestDisconnect:Z

    return-void
.end method
