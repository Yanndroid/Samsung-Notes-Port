.class Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$BaseSaveTaskCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/model/executor/task/SaveDocumentTask$SaveTaskCallback;
.implements Lcom/samsung/android/support/senl/nt/model/executor/task/SnapSaveDocumentTask$SnapSaveTaskCallback;
.implements Lcom/samsung/android/support/senl/nt/model/executor/task/SaveCacheDocumentTask$SaveCacheTaskCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BaseSaveTaskCallback"
.end annotation


# instance fields
.field private final mIsSyncTask:Z

.field private final mLockId:Ljava/lang/String;

.field private final mLocker:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mTaskTag:Ljava/lang/String;

.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;Ljava/lang/String;ZLjava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$BaseSaveTaskCallback;->this$0:Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$BaseSaveTaskCallback;->mTaskTag:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$BaseSaveTaskCallback;->mIsSyncTask:Z

    iput-object p4, p0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$BaseSaveTaskCallback;->mLockId:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$BaseSaveTaskCallback;->mLocker:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public getTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$BaseSaveTaskCallback;->mTaskTag:Ljava/lang/String;

    return-object v0
.end method

.method public onEnd(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "NotesDocumentInteractor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$BaseSaveTaskCallback;->mTaskTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "$onEnd, uuid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", isSyncTask : "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$BaseSaveTaskCallback;->mIsSyncTask:Z

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$BaseSaveTaskCallback;->mIsSyncTask:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$BaseSaveTaskCallback;->this$0:Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;->e(Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;)Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$BaseSaveTaskCallback;->mLockId:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$BaseSaveTaskCallback;->this$0:Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;->e(Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$BaseSaveTaskCallback;->mLockId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$BaseSaveTaskCallback;->mLocker:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :goto_0
    return-void
.end method
