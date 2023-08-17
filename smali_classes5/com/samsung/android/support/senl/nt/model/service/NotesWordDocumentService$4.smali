.class Lcom/samsung/android/support/senl/nt/model/service/NotesWordDocumentService$4;
.super Lcom/samsung/android/support/senl/nt/model/service/callback/NotesDocumentCompletionListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/model/service/NotesWordDocumentService;->prepareCache(Landroid/content/Intent;)V
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
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/model/service/NotesWordDocumentService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/model/service/NotesWordDocumentService;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/model/service/NotesWordDocumentService$4;->this$0:Lcom/samsung/android/support/senl/nt/model/service/NotesWordDocumentService;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/model/service/callback/NotesDocumentCompletionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public completed(Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;Ljava/lang/String;)V
    .locals 3
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

    const-string v1, "prepareCache, uuid : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", result : "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "NotesWordDocumentService"

    invoke-static {v0, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/model/service/NotesWordDocumentService$4;->this$0:Lcom/samsung/android/support/senl/nt/model/service/NotesWordDocumentService;

    const-wide/16 v0, 0xbb8

    const/4 v2, 0x0

    invoke-virtual {p2, p1, v0, v1, v2}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService;->close(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;JLcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;)V

    return-void
.end method

.method public failed(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 0

    return-void
.end method
