.class Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentServiceIntentHandler$3;
.super Lcom/samsung/android/support/senl/nt/model/service/callback/NotesDocumentCompletionListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentServiceIntentHandler;->save(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;)V
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
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentServiceIntentHandler;

.field public final synthetic val$backgroundColor:I

.field public final synthetic val$backgroundColorInverted:Z

.field public final synthetic val$body:Ljava/lang/String;

.field public final synthetic val$title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentServiceIntentHandler;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentServiceIntentHandler$3;->this$0:Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentServiceIntentHandler;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentServiceIntentHandler$3;->val$title:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentServiceIntentHandler$3;->val$body:Ljava/lang/String;

    iput p4, p0, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentServiceIntentHandler$3;->val$backgroundColor:I

    iput-boolean p5, p0, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentServiceIntentHandler$3;->val$backgroundColorInverted:Z

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/model/service/callback/NotesDocumentCompletionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public completed(Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;Ljava/lang/String;)V
    .locals 4
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

    const-string v1, "open$completed, uuid : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "NotesDocumentServiceIntentHandler"

    invoke-static {v0, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getDoc()Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentServiceIntentHandler$3;->val$title:Ljava/lang/String;

    invoke-interface {p2, v2}, Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;->insertTitle(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentServiceIntentHandler$3;->val$body:Ljava/lang/String;

    invoke-interface {p2, v2}, Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;->insertBody(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentServiceIntentHandler$3;->val$backgroundColor:I

    invoke-interface {p2, v2, v1}, Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;->setBackgroundColor(IZ)V

    iget-boolean v2, p0, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentServiceIntentHandler$3;->val$backgroundColorInverted:Z

    invoke-interface {p2, v2}, Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;->invertBackgroundColor(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "open, e : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentServiceIntentHandler$3;->this$0:Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentServiceIntentHandler;

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentServiceIntentHandler;->a(Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentServiceIntentHandler;)Lcom/samsung/android/support/senl/nt/model/executor/DocumentUsecaseExecutor;

    move-result-object p2

    const/4 v0, 0x0

    new-instance v2, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentServiceIntentHandler$3$1;

    invoke-direct {v2, p0, p1}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentServiceIntentHandler$3$1;-><init>(Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentServiceIntentHandler$3;Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;)V

    invoke-interface {p2, p1, v0, v1, v2}, Lcom/samsung/android/support/senl/nt/model/executor/DocumentUsecaseExecutor;->save(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;ZZLcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;)V

    return-void
.end method

.method public failed(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "open$failed, uuid : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", exc : "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "NotesDocumentServiceIntentHandler"

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
