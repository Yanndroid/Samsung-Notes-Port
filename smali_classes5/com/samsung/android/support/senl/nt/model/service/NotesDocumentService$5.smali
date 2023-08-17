.class Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService;->save(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;ZZLcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener<",
        "Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService;

.field public final synthetic val$documentDataSource:Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;

.field public final synthetic val$listener:Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService;Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService$5;->this$0:Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService$5;->val$listener:Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService$5;->val$documentDataSource:Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public completed(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource<",
            "Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;",
            "+",
            "Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService$5;->val$listener:Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;->completed(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;Ljava/lang/String;)V

    :cond_0
    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;->getDocumentRepository()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->checkSaveStrategy(I)Z

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "save#completed, uuid : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService$5;->val$documentDataSource:Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;

    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", modifier : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService$5;->val$documentDataSource:Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;

    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;->getSubscriptionId()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", BROADCAST_RELOAD_AFTER_SAVE : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotesDocumentService"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->w(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService$5;->this$0:Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService$5;->val$documentDataSource:Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;->getSubscriptionId()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService;->notifyOnChangedDocumentListeners(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public failed(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService$5;->val$listener:Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;->failed(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
