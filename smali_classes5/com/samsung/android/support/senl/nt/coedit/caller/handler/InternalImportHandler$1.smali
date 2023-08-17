.class Lcom/samsung/android/support/senl/nt/coedit/caller/handler/InternalImportHandler$1;
.super Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/CoeditServiceConnection;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/coedit/caller/handler/InternalImportHandler;->connectServiceToUploadNote(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/ExternalCoeditUploadItem;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/InternalImportHandler;

.field public final synthetic val$appContext:Landroid/content/Context;

.field public final synthetic val$future:Ljava/util/concurrent/CompletableFuture;

.field public final synthetic val$item:Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/ExternalCoeditUploadItem;

.field public final synthetic val$userId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/coedit/caller/handler/InternalImportHandler;Ljava/lang/String;Ljava/util/concurrent/CompletableFuture;Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/ExternalCoeditUploadItem;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/InternalImportHandler$1;->this$0:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/InternalImportHandler;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/InternalImportHandler$1;->val$userId:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/InternalImportHandler$1;->val$future:Ljava/util/concurrent/CompletableFuture;

    iput-object p4, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/InternalImportHandler$1;->val$item:Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/ExternalCoeditUploadItem;

    iput-object p5, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/InternalImportHandler$1;->val$appContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/CoeditServiceConnection;-><init>()V

    return-void
.end method

.method private uploadCoeditNote()V
    .locals 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[CS5] uploadCoeditNote() uuid : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/InternalImportHandler$1;->val$item:Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/ExternalCoeditUploadItem;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/ExternalCoeditUploadItem;->getEntry()Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/ShareSyncEntry;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/DocSyncEntry;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InternalImportHandler"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/InternalImportHandler$1;->val$item:Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/ExternalCoeditUploadItem;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/ExternalCoeditUploadItem;->getEntry()Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/ShareSyncEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/DocSyncEntry;->getFilePath()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/InternalImportHandler$1;->val$item:Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/ExternalCoeditUploadItem;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/ExternalCoeditUploadItem;->getEntry()Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/ShareSyncEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/DocSyncEntry;->getUuid()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/InternalImportHandler$1;->val$item:Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/ExternalCoeditUploadItem;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/ExternalCoeditUploadItem;->getGroupId()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/InternalImportHandler$1;->val$item:Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/ExternalCoeditUploadItem;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/ExternalCoeditUploadItem;->getEntry()Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/ShareSyncEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/ShareSyncEntry;->getSpaceId()Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/CoeditServiceConnection;->mService:Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService;

    new-instance v9, Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalSnapUploadTask;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/InternalImportHandler$1;->val$appContext:Landroid/content/Context;

    new-instance v8, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/InternalImportHandler$1$1;

    invoke-direct {v8, p0, v4}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/InternalImportHandler$1$1;-><init>(Lcom/samsung/android/support/senl/nt/coedit/caller/handler/InternalImportHandler$1;Ljava/lang/String;)V

    const-string v6, ""

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalSnapUploadTask;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalBaseTask$UpDownloadCallback;)V

    invoke-virtual {v0, v9}, Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService;->executeExternalTask(Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalBaseTask;)V

    return-void
.end method


# virtual methods
.method public onNullBinding(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "InternalImportHandler"

    const-string v0, "connectServiceToUploadNote, onNullBinding()"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/InternalImportHandler$1;->val$future:Ljava/util/concurrent/CompletableFuture;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/InternalImportHandler$1;->this$0:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/InternalImportHandler;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/InternalImportHandler;->a(Lcom/samsung/android/support/senl/nt/coedit/caller/handler/InternalImportHandler;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    const-string p1, "InternalImportHandler"

    if-eqz p2, :cond_0

    const-string v0, "connectServiceToUploadNote, onServiceConnected()"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    check-cast p2, Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService$LocalBinder;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService$LocalBinder;->getService()Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/CoeditServiceConnection;->mService:Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService;

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/InternalImportHandler$1;->val$userId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService;->subscribe(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/InternalImportHandler$1;->uploadCoeditNote()V

    goto :goto_0

    :cond_0
    const-string p2, "connectServiceToUploadNote, onServiceConnected() CoeditService is unavailable"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/InternalImportHandler$1;->val$future:Ljava/util/concurrent/CompletableFuture;

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/InternalImportHandler$1;->this$0:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/InternalImportHandler;

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/InternalImportHandler;->a(Lcom/samsung/android/support/senl/nt/coedit/caller/handler/InternalImportHandler;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "InternalImportHandler"

    const-string v0, "connectServiceToUploadNote, onServiceDisconnected()"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/CoeditServiceConnection;->mService:Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService;

    return-void
.end method
