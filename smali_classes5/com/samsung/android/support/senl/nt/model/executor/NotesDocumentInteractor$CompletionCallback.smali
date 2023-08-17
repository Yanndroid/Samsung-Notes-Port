.class Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$CompletionCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CompletionCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private callback:Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener<",
            "TT;>;"
        }
    .end annotation
.end field

.field private failPost:Ljava/lang/Runnable;

.field private needToCountUpReference:Z

.field private successPost:Ljava/lang/Runnable;

.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;)V
    .locals 1
    .param p1    # Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$CompletionCallback;-><init>(Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;Ljava/lang/Runnable;)V
    .locals 1
    .param p1    # Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener<",
            "TT;>;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$CompletionCallback;-><init>(Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0
    .param p1    # Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener<",
            "TT;>;",
            "Ljava/lang/Runnable;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$CompletionCallback;->this$0:Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$CompletionCallback;->callback:Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$CompletionCallback;->successPost:Ljava/lang/Runnable;

    iput-object p4, p0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$CompletionCallback;->failPost:Ljava/lang/Runnable;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$CompletionCallback;->needToCountUpDocReference(Z)Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$CompletionCallback;

    return-void
.end method

.method private countUpDocReference(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;)V
    .locals 4
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

    const-string v2, "countUpDocReference, uuid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", user : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$CompletionCallback;->this$0:Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;->c(Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;)Lcom/samsung/android/support/senl/nt/model/executor/DocumentUserManager;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$CompletionCallback;->this$0:Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;->c(Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;)Lcom/samsung/android/support/senl/nt/model/executor/DocumentUserManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/samsung/android/support/senl/nt/model/executor/DocumentUserManager;->isSkipped(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$CompletionCallback;->this$0:Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;->c(Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;)Lcom/samsung/android/support/senl/nt/model/executor/DocumentUserManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/support/senl/nt/model/executor/DocumentUserManager;->use(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;)V

    goto :goto_0

    :cond_0
    const-string v1, "NotesDocumentInteractor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "countUpDocReference skipped, uuid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", user : "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public completed(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;Ljava/lang/String;)V
    .locals 2
    .param p1    # Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource<",
            "TT;+",
            "Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "completed, uuid : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", result : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotesDocumentInteractor"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$CompletionCallback;->needToCountUpReference:Z

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;->getSubscriptionId()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$CompletionCallback;->countUpDocReference(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$CompletionCallback;->this$0:Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;

    invoke-static {v0, p2, p1}, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;->f(Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$CompletionCallback;->getCallback()Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$CompletionCallback;->getSuccessPost()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$CompletionCallback;->success(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;Ljava/lang/Runnable;)V

    return-void
.end method

.method public fail(Ljava/lang/Throwable;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;Ljava/lang/Runnable;)V
    .locals 8
    .param p3    # Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/lang/String;",
            "Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener<",
            "TT;>;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fail, uuid : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", callback : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotesDocumentInteractor"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$CompletionCallback;->this$0:Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;

    invoke-virtual {v0, p2}, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;->getSpenSDocDataSource(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/model/documents/SpenSDocDataSource;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$CompletionCallback;->this$0:Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;

    invoke-static {v0, p2}, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;->i(Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$CompletionCallback;->this$0:Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;->d(Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;)Landroid/os/Handler;

    move-result-object v0

    new-instance v7, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$CompletionCallback$2;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p1

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$CompletionCallback$2;-><init>(Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$CompletionCallback;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;Ljava/lang/Throwable;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public failed(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failed, uuid : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", exc : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotesDocumentInteractor"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$CompletionCallback;->getCallback()Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$CompletionCallback;->getFailPost()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$CompletionCallback;->fail(Ljava/lang/Throwable;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;Ljava/lang/Runnable;)V

    return-void
.end method

.method public getCallback()Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$CompletionCallback;->callback:Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;

    return-object v0
.end method

.method public getFailPost()Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$CompletionCallback;->failPost:Ljava/lang/Runnable;

    return-object v0
.end method

.method public getSuccessPost()Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$CompletionCallback;->successPost:Ljava/lang/Runnable;

    return-object v0
.end method

.method public needToCountUpDocReference(Z)Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$CompletionCallback;
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$CompletionCallback;->needToCountUpReference:Z

    return-object p0
.end method

.method public success(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;Ljava/lang/Runnable;)V
    .locals 8
    .param p3    # Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource<",
            "TT;+",
            "Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener<",
            "TT;>;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "success, uuid : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", callback : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", result : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotesDocumentInteractor"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$CompletionCallback;->this$0:Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;->d(Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;)Landroid/os/Handler;

    move-result-object v0

    new-instance v7, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$CompletionCallback$1;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p1

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$CompletionCallback$1;-><init>(Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$CompletionCallback;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    return-void
.end method
