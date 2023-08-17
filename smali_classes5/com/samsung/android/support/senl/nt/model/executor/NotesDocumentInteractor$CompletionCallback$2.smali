.class Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$CompletionCallback$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$CompletionCallback;->fail(Ljava/lang/Throwable;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$CompletionCallback;

.field public final synthetic val$callback:Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;

.field public final synthetic val$exc:Ljava/lang/Throwable;

.field public final synthetic val$postRunnable:Ljava/lang/Runnable;

.field public final synthetic val$uuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$CompletionCallback;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;Ljava/lang/Throwable;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$CompletionCallback$2;->this$1:Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$CompletionCallback;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$CompletionCallback$2;->val$uuid:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$CompletionCallback$2;->val$callback:Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;

    iput-object p4, p0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$CompletionCallback$2;->val$exc:Ljava/lang/Throwable;

    iput-object p5, p0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$CompletionCallback$2;->val$postRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "post$fail, uuid : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$CompletionCallback$2;->val$uuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotesDocumentInteractor"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$CompletionCallback$2;->val$callback:Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$CompletionCallback$2;->val$exc:Ljava/lang/Throwable;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$CompletionCallback$2;->val$uuid:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;->failed(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$CompletionCallback$2;->val$postRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$CompletionCallback$2;->this$1:Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$CompletionCallback;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$CompletionCallback;->this$0:Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;->g(Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$CompletionCallback$2;->this$1:Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$CompletionCallback;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$CompletionCallback;->this$0:Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;->notifyTaskEndedListener()V

    return-void
.end method
