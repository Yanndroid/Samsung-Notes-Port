.class Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$SaveTaskSubmitListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$TaskSubmitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SaveTaskSubmitListener"
.end annotation


# instance fields
.field private final mSaveTaskCallback:Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$BaseSaveTaskCallback;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$BaseSaveTaskCallback;)V
    .locals 0
    .param p1    # Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$BaseSaveTaskCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$SaveTaskSubmitListener;->mSaveTaskCallback:Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$BaseSaveTaskCallback;

    return-void
.end method


# virtual methods
.method public onFailed(Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;)V
    .locals 3

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;->callback()Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$SaveTaskSubmitListener;->mSaveTaskCallback:Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$BaseSaveTaskCallback;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$BaseSaveTaskCallback;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "$enqueue, already closed, listener exists : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NotesDocumentInteractor"

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$SaveTaskSubmitListener;->mSaveTaskCallback:Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$BaseSaveTaskCallback;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$BaseSaveTaskCallback;->onEnd(Ljava/lang/String;)V

    if-eqz v0, :cond_1

    new-instance v1, Lcom/samsung/android/support/senl/nt/model/service/DocumentServiceConstants$DocumentServiceAlreadyClosedException;

    const-string v2, "Document service is already closed"

    invoke-direct {v1, v2}, Lcom/samsung/android/support/senl/nt/model/service/DocumentServiceConstants$DocumentServiceAlreadyClosedException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;->getUuid()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;->failed(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
