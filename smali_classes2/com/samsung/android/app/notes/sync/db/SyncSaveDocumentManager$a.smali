.class public Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager$a;
.super Lcom/samsung/android/support/senl/nt/model/service/callback/NotesDocumentCompletionListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager;->o(Ljava/lang/String;ZLcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager$d;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/support/senl/nt/model/service/callback/NotesDocumentCompletionListener<",
        "Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

.field public final synthetic d:Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager$d;

.field public final synthetic e:Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager;Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager$d;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager$a;->e:Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager;

    iput-object p2, p0, Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager$a;->a:Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    iput-object p3, p0, Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager$a;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager$a;->c:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    iput-object p5, p0, Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager$a;->d:Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager$d;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/model/service/callback/NotesDocumentCompletionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public completed(Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument<",
            "Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iget-object p1, p0, Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager$a;->e:Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager;

    invoke-static {p1}, Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager;->b(Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager$a;->e:Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager;

    invoke-static {v0}, Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager;->c(Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager;)Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager$a;->e:Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager;

    invoke-static {v0}, Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager;->c(Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager;)Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager$a;->a:Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    new-instance v2, Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager$c;

    iget-object v3, p0, Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager$a;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager$a;->c:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getFilePath()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager$c;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/app/notes/sync/db/q;)V

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/model/service/IDocumentService;->close(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;)V

    :cond_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager$a;->d:Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager$d;

    if-eqz p1, :cond_1

    invoke-interface {p1, p2}, Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager$d;->b(Ljava/lang/String;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p2

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2
.end method

.method public failed(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 7

    const-string v0, "SyncSaveDocumentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is not saved : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->ef(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager$a;->e:Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager;

    invoke-static {v0}, Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager;->b(Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager$a;->e:Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager;

    invoke-static {v1}, Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager;->c(Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager;)Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper;

    move-result-object v1

    if-eqz v1, :cond_0

    instance-of v1, p1, Lcom/samsung/android/support/senl/nt/model/service/DocumentServiceConstants$DocumentServiceAlreadyClosedException;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager$a;->e:Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager;

    invoke-static {v1}, Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager;->c(Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager;)Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager$a;->a:Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    new-instance v3, Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager$c;

    iget-object v4, p0, Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager$a;->b:Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager$a;->c:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    invoke-virtual {v5}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getFilePath()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager$c;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/app/notes/sync/db/q;)V

    invoke-interface {v1, v2, v3}, Lcom/samsung/android/support/senl/nt/model/service/IDocumentService;->close(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;)V

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager$a;->d:Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager$d;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager$d;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
