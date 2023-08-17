.class Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$DocumentInteractorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService;->setTaskProgressListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService$6;->this$0:Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnd()V
    .locals 2

    const-string v0, "NotesDocumentService"

    const-string v1, "TaskProgressListener$onEnd"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService$6;->this$0:Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService;->stopSelfIfNoLongerUsed()V

    return-void
.end method

.method public onSaved(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;Z)V
    .locals 3
    .param p1    # Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "NotesDocumentService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TaskProgressListener$onSaved, subscriptionId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", doNotShowSavedToast : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService$6;->this$0:Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService;->getServiceWrapperManager()Lcom/samsung/android/support/senl/nt/model/service/DocumentServiceWrapperManager;

    move-result-object v0

    monitor-enter v0

    if-nez p2, :cond_0

    :try_start_0
    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService$6;->this$0:Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService;->getServiceWrapperManager()Lcom/samsung/android/support/senl/nt/model/service/DocumentServiceWrapperManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/nt/model/service/DocumentServiceWrapperManager;->exist(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "NotesDocumentService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showSavedToast, subscriptionId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onStart()V
    .locals 2

    const-string v0, "NotesDocumentService"

    const-string v1, "TaskProgressListener$onStart"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
