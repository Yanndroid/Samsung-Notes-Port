.class Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService$3;
.super Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService$DelayedRunnable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService;->close(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;JLcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService;

.field public final synthetic val$delay:J

.field public final synthetic val$documentDataSource:Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;

.field public final synthetic val$listener:Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;Ljava/lang/String;Ljava/util/concurrent/BlockingQueue;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;JLcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService$3;->this$0:Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService;

    iput-object p5, p0, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService$3;->val$documentDataSource:Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;

    iput-wide p6, p0, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService$3;->val$delay:J

    iput-object p8, p0, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService$3;->val$listener:Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;

    invoke-direct {p0, p2, p3, p4}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService$DelayedRunnable;-><init>(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;Ljava/lang/String;Ljava/util/concurrent/BlockingQueue;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ModelRefactoring$delayed - close, uuid : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService$3;->val$documentDataSource:Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;

    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", user : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService$DelayedRunnable;->user:Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", delay : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService$3;->val$delay:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotesDocumentService"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p0}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService$DelayedRunnable;->removeDelayedRunnable(Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService$DelayedRunnable;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService$3;->this$0:Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService;->getNotesDocumentHandler()Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService$DelayedRunnable;->user:Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService$3;->val$documentDataSource:Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService$3;->val$listener:Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentHandler;->close(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;)V

    return-void
.end method
