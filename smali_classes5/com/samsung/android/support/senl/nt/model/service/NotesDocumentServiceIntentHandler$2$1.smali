.class Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentServiceIntentHandler$2$1;
.super Lcom/samsung/android/support/senl/nt/model/service/callback/NotesDocumentCompletionListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentServiceIntentHandler$2;->completed(Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;Ljava/lang/String;)V
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
.field private final mCloseListener:Lcom/samsung/android/support/senl/nt/model/service/callback/NotesDocumentCompletionListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/support/senl/nt/model/service/callback/NotesDocumentCompletionListener<",
            "Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic this$1:Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentServiceIntentHandler$2;

.field public final synthetic val$result:Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentServiceIntentHandler$2;Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentServiceIntentHandler$2$1;->this$1:Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentServiceIntentHandler$2;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentServiceIntentHandler$2$1;->val$result:Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/model/service/callback/NotesDocumentCompletionListener;-><init>()V

    new-instance p1, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentServiceIntentHandler$2$1$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentServiceIntentHandler$2$1$1;-><init>(Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentServiceIntentHandler$2$1;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentServiceIntentHandler$2$1;->mCloseListener:Lcom/samsung/android/support/senl/nt/model/service/callback/NotesDocumentCompletionListener;

    return-void
.end method


# virtual methods
.method public completed(Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;Ljava/lang/String;)V
    .locals 2
    .param p1    # Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
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

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resave, save$completed, uuid : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "NotesDocumentServiceIntentHandler"

    invoke-static {v0, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentServiceIntentHandler$2$1;->this$1:Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentServiceIntentHandler$2;

    iget-object p2, p2, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentServiceIntentHandler$2;->this$0:Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentServiceIntentHandler;

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentServiceIntentHandler;->a(Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentServiceIntentHandler;)Lcom/samsung/android/support/senl/nt/model/executor/DocumentUsecaseExecutor;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentServiceIntentHandler$2$1;->mCloseListener:Lcom/samsung/android/support/senl/nt/model/service/callback/NotesDocumentCompletionListener;

    invoke-interface {p2, p1, v0}, Lcom/samsung/android/support/senl/nt/model/executor/DocumentUsecaseExecutor;->close(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;)V

    return-void
.end method

.method public failed(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resave, save$failed, uuid : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", exc : "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "NotesDocumentServiceIntentHandler"

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentServiceIntentHandler$2$1;->this$1:Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentServiceIntentHandler$2;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentServiceIntentHandler$2;->this$0:Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentServiceIntentHandler;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentServiceIntentHandler;->a(Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentServiceIntentHandler;)Lcom/samsung/android/support/senl/nt/model/executor/DocumentUsecaseExecutor;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentServiceIntentHandler$2$1;->val$result:Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentServiceIntentHandler$2$1;->mCloseListener:Lcom/samsung/android/support/senl/nt/model/service/callback/NotesDocumentCompletionListener;

    invoke-interface {p1, p2, v0}, Lcom/samsung/android/support/senl/nt/model/executor/DocumentUsecaseExecutor;->close(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;)V

    return-void
.end method
