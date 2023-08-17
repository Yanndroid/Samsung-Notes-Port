.class public Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager$c;,
        Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager$d;,
        Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager$DocumentServiceConnection;
    }
.end annotation


# instance fields
.field public a:Landroid/content/Context;

.field public b:Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager$DocumentServiceConnection;

.field public c:I

.field public d:Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;

.field public e:Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper;

.field public f:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final g:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager$DocumentServiceConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager$DocumentServiceConnection;-><init>(Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager;Lcom/samsung/android/app/notes/sync/db/r;)V

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager;->b:Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager$DocumentServiceConnection;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager;->g:Ljava/lang/Object;

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager;->a:Landroid/content/Context;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager;->g:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager;)Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager;->e:Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager;)Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager;->d:Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager;Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager;->e:Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper;

    return-void
.end method

.method public static bridge synthetic f(Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager;->d:Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;

    return-void
.end method


# virtual methods
.method public g()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v0, "SyncSaveDocumentManager"

    const-string v1, "null context!"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager;->b:Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager$DocumentServiceConnection;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager$DocumentServiceConnection;->setRequestDisconnect(Z)V

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager;->c:I

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager;->a:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager;->a:Landroid/content/Context;

    const-class v3, Lcom/samsung/android/support/senl/nt/model/service/NotesWordDocumentService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager;->b:Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager$DocumentServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method public h()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager;->g:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager;->e:Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper;

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager;->g()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0xa

    if-ge v1, v2, :cond_2

    const-wide/16 v2, 0x64

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    iget-object v2, p0, Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v2
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SyncSaveDocumentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_2
    :goto_1
    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public final i(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository<",
            "Lcom/samsung/android/support/senl/nt/model/documents/spen/SpenWordDocument;",
            "Lcom/samsung/android/support/senl/nt/model/repository/data/sdoc/entity/WordDocumentEntityContainer;",
            ">;"
        }
    .end annotation

    iget-object v5, p0, Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager;->d:Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;

    const/4 v1, 0x0

    const-string v3, ""

    const-string v4, "SyncSaveDocumentManager"

    move-object v0, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/support/senl/nt/model/repository/data/sdoc/SpenDocumentRepositoryFactory;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;)Lcom/samsung/android/support/senl/nt/model/repository/data/sdoc/SpenDocumentRepositoryFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/repository/data/sdoc/SpenDocumentRepositoryFactory;->createWordDocRepository()Lcom/samsung/android/support/senl/nt/model/repository/data/sdoc/SpenWordDocRepository;

    move-result-object p1

    iget p2, p0, Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager;->c:I

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/model/repository/data/sdoc/SpenWordDocRepository;->setPageWidth(I)Lcom/samsung/android/support/senl/nt/model/repository/data/sdoc/SpenWordDocRepository;

    move-result-object p1

    const/16 p2, 0x802

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->setSaveStrategy(I)Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    move-result-object p1

    return-object p1
.end method

.method public j()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager;->g:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager;->b:Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager$DocumentServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager$DocumentServiceConnection;->setRequestDisconnect(Z)V

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager;->e:Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper;->unsubscribe()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager;->e:Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper;

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager;->a:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager;->b:Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager$DocumentServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public k(Ljava/lang/String;)Z
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager;->g:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager;->e:Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper;

    if-nez v1, :cond_0

    const-string p1, "SyncSaveDocumentManager"

    const-string v1, "isReadyToDownloadDocument, mService is not connected yet"

    invoke-static {p1, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    monitor-exit v0

    return p1

    :cond_0
    invoke-virtual {v1, p1}, Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper;->askForReadyToDownloadDocument(Ljava/lang/String;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public l(Ljava/lang/String;)Z
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager;->g:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager;->e:Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper;

    if-nez v1, :cond_0

    const-string p1, "SyncSaveDocumentManager"

    const-string v1, "isReadyToReplaceOriginalDocument, mService is not connected yet"

    invoke-static {p1, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    monitor-exit v0

    return p1

    :cond_0
    invoke-virtual {v1, p1}, Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper;->askForReadyToReplaceOriginalDocument(Ljava/lang/String;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public m(Ljava/lang/String;)Z
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager;->g:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager;->e:Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string p1, "SyncSaveDocumentManager"

    const-string v1, "notifyInvalidVersionDocumentState, mService is not connected yet"

    invoke-static {p1, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->w(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    :cond_0
    :try_start_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v3, "state_type"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "sdocx_uuid"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager;->e:Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper;->getUser()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;

    move-result-object v3

    invoke-interface {p1, v3, v1}, Lcom/samsung/android/support/senl/nt/model/service/IDocumentService;->sendBroadcastMessage(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    :catch_0
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final n(Ljava/lang/String;Z)Lcom/samsung/android/support/senl/nt/model/documents/spen/SpenWordDocument;
    .locals 8

    const-string v0, "SyncSaveDocumentManager"

    const-string v1, "openSdocxFile start"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x151

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager;->a:Landroid/content/Context;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 v4, 0xbb8

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v2, p1

    move v7, p2

    invoke-static/range {v1 .. v7}, Lcom/samsung/android/support/senl/nt/model/documents/spen/SpenWordDocument;->create(Landroid/content/Context;Ljava/lang/String;IIZZZ)Lcom/samsung/android/support/senl/nt/model/documents/spen/SpenWordDocument;

    move-result-object p1
    :try_end_0
    .catch Lcom/samsung/android/sdk/pen/document/SpenUnsupportedTypeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/samsung/android/sdk/pen/document/SpenUnsupportedVersionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/samsung/android/sdk/pen/document/SpenBoundFileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const-string p1, "Failed to openSdocxFile"

    new-instance p2, Ls0/c;

    const/16 v0, 0x148

    invoke-direct {p2, v0, p1}, Ls0/c;-><init>(ILjava/lang/String;)V

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    const-string p1, "Failed to openSdocxFile due to SpenBoundFileNotFoundException"

    new-instance p2, Ls0/c;

    invoke-direct {p2, v0, p1}, Ls0/c;-><init>(ILjava/lang/String;)V

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_2
    move-exception p1

    iget-object p2, p0, Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager;->a:Landroid/content/Context;

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/base/common/sync/SyncState;->isAppUpdateNeeded(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager;->a:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {p2, v1}, Lcom/samsung/android/support/senl/nt/base/common/sync/SyncState;->setAppUpdateNeeded(Landroid/content/Context;Z)V

    :cond_0
    const-string p2, "Failed to openSdocxFile due to SpenUnsupportedVersionException"

    new-instance v1, Ls0/c;

    invoke-direct {v1, v0, p2}, Ls0/c;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, p1}, Ls0/c;->f(Lcom/samsung/android/sdk/pen/document/SpenUnsupportedVersionException;)V

    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, p2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_3
    move-exception p1

    const-string p2, "Failed to openSdocxFile due to SpenUnsupportedTypeException"

    new-instance v1, Ls0/c;

    invoke-direct {v1, v0, p2}, Ls0/c;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, p1}, Ls0/c;->e(Lcom/samsung/android/sdk/pen/document/SpenUnsupportedTypeException;)V

    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, p2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public o(Ljava/lang/String;ZLcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager$d;)Z
    .locals 11

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager;->i(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    move-result-object v0

    new-instance v7, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager;->a:Landroid/content/Context;

    const/4 v8, 0x0

    invoke-direct {v7, v1, v0, v8}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;-><init>(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;Z)V

    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->setDirty(Z)V

    invoke-virtual {v7, p2}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->setNewDocument(Z)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->getDocumentEntity()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/support/senl/nt/model/repository/data/sdoc/entity/WordDocumentEntityContainer;

    invoke-virtual {p2, p3}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;->setEntity(Landroid/os/Parcelable;)V

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getLockAccountGuid()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->setLockAccountGuid(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getUuid()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/base/common/util/UUIDUtils;->isCoeditUuid(Ljava/lang/String;)Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager;->n(Ljava/lang/String;Z)Lcom/samsung/android/support/senl/nt/model/documents/spen/SpenWordDocument;

    move-result-object p2

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager;->a:Landroid/content/Context;

    invoke-static {v1, p2}, Lcom/samsung/android/support/senl/cm/base/common/util/LockFileUtils;->getLockTypeFromSdocx(Landroid/content/Context;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    :goto_0
    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->getDocumentEntity()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/model/repository/data/sdoc/entity/WordDocumentEntityContainer;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;->getEntity()Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setIsLock(I)V

    goto :goto_1

    :cond_0
    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {v7, p2}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->setDoc(Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;)V

    const/high16 p2, 0x80000

    invoke-virtual {v0, p2}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->addSaveStrategy(I)Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    iget-object p2, p0, Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager;->g:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager;->e:Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper;

    if-nez v0, :cond_2

    const-string p1, "SyncSaveDocumentManager"

    const-string p3, "save, mService is not connected yet"

    invoke-static {p1, p3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->w(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit p2

    return v8

    :cond_2
    new-instance v10, Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager$a;

    move-object v1, v10

    move-object v2, p0

    move-object v3, v7

    move-object v4, p1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager$a;-><init>(Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager;Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager$d;)V

    invoke-interface {v0, v7, v8, v9, v10}, Lcom/samsung/android/support/senl/nt/model/service/IDocumentService;->save(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;ZZLcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;)V

    monitor-exit p2

    return v9

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public p(Ljava/lang/String;ZLcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;)Z
    .locals 5

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-array v2, v1, [I

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput v3, v2, v4

    new-instance v3, Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager$b;

    invoke-direct {v3, p0, v2, v0}, Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager$b;-><init>(Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager;[ILjava/util/concurrent/CountDownLatch;)V

    invoke-virtual {p0, p1, p2, p3, v3}, Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager;->o(Ljava/lang/String;ZLcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager$d;)Z

    move-result p1

    if-eqz p1, :cond_2

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SyncSaveDocumentManager"

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    aget p1, v2, v4

    if-nez p1, :cond_0

    return v1

    :cond_0
    aget p1, v2, v4

    if-eq p1, v1, :cond_1

    return v4

    :cond_1
    const-string p1, "ERROR_DOCUMENT_SERVICE_ALREADY_CLOSED"

    new-instance p2, Ls0/c;

    const/16 p3, 0x1fa

    invoke-direct {p2, p3, p1}, Ls0/c;-><init>(ILjava/lang/String;)V

    new-instance p3, Ljava/io/IOException;

    invoke-direct {p3, p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3

    :cond_2
    return v4
.end method
