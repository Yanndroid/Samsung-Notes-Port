.class Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/model/executor/task/CloseDocumentTask$CloseTaskCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;->close(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;

.field public final synthetic val$documentDataSource:Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;

.field public final synthetic val$user:Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$4;->this$0:Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$4;->val$documentDataSource:Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$4;->val$user:Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public countDownDocReference(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    const-string v0, "NotesDocumentInteractor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "countDownDocReference, uuid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", user : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$4;->this$0:Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;->getSpenSDocDataSource(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/model/documents/SpenSDocDataSource;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/model/repository/cache/DocumentCacheRepository;->unsubscribe(Lcom/samsung/android/support/senl/nt/model/documents/SpenSDocDataSource;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$4;->this$0:Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;->c(Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;)Lcom/samsung/android/support/senl/nt/model/executor/DocumentUserManager;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$4;->this$0:Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;->c(Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;)Lcom/samsung/android/support/senl/nt/model/executor/DocumentUserManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$4;->val$documentDataSource:Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;

    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/samsung/android/support/senl/nt/model/executor/DocumentUserManager;->disuse(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;)V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public deleteEmptyDoc(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$4;->this$0:Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;->d(Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$4$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$4$2;-><init>(Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$4;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public existUsingDocReference(Ljava/lang/String;)Z
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$4;->this$0:Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;->c(Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;)Lcom/samsung/android/support/senl/nt/model/executor/DocumentUserManager;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$4;->this$0:Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;->c(Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;)Lcom/samsung/android/support/senl/nt/model/executor/DocumentUserManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$4;->val$documentDataSource:Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;

    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/model/executor/DocumentUserManager;->exist(Ljava/lang/String;)Z

    move-result v0

    monitor-exit p1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getDocReferenceCount(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;)I
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "NotesDocumentInteractor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDocReferenceCount, uuid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", user : "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$4;->this$0:Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;->c(Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;)Lcom/samsung/android/support/senl/nt/model/executor/DocumentUserManager;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$4;->this$0:Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;->c(Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;)Lcom/samsung/android/support/senl/nt/model/executor/DocumentUserManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$4;->val$documentDataSource:Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;

    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/samsung/android/support/senl/nt/model/executor/DocumentUserManager;->getUsingCount(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;)I

    move-result p2

    monitor-exit p1

    return p2

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public onClosed(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onClosed, uuid : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", spenSDoc : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "NotesDocumentInteractor"

    invoke-static {v0, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$4;->this$0:Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;->j(Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;Ljava/lang/String;)V

    return-void
.end method

.method public successForceSave()V
    .locals 2
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$4;->this$0:Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;->d(Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$4$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$4$1;-><init>(Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$4;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    return-void
.end method
