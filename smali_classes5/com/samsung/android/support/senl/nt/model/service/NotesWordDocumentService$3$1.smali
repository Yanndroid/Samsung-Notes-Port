.class Lcom/samsung/android/support/senl/nt/model/service/NotesWordDocumentService$3$1;
.super Lcom/samsung/android/support/senl/nt/model/service/callback/NotesDocumentCompletionListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/model/service/NotesWordDocumentService$3;->saveDocument(Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;)V
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
.field public final synthetic this$1:Lcom/samsung/android/support/senl/nt/model/service/NotesWordDocumentService$3;

.field public final synthetic val$result:Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/model/service/NotesWordDocumentService$3;Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/model/service/NotesWordDocumentService$3$1;->this$1:Lcom/samsung/android/support/senl/nt/model/service/NotesWordDocumentService$3;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/model/service/NotesWordDocumentService$3$1;->val$result:Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/model/service/callback/NotesDocumentCompletionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public completed(Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;Ljava/lang/String;)V
    .locals 1
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

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/model/service/NotesWordDocumentService$3$1;->this$1:Lcom/samsung/android/support/senl/nt/model/service/NotesWordDocumentService$3;

    iget-object p2, p2, Lcom/samsung/android/support/senl/nt/model/service/NotesWordDocumentService$3;->this$0:Lcom/samsung/android/support/senl/nt/model/service/NotesWordDocumentService;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService;->close(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;)V

    return-void
.end method

.method public failed(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/model/service/NotesWordDocumentService$3$1;->this$1:Lcom/samsung/android/support/senl/nt/model/service/NotesWordDocumentService$3;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/model/service/NotesWordDocumentService$3;->this$0:Lcom/samsung/android/support/senl/nt/model/service/NotesWordDocumentService;

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/model/service/NotesWordDocumentService$3$1;->val$result:Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService;->close(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;)V

    return-void
.end method
