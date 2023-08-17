.class Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService$LocalBinder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper$DocumentSubscriptionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService$LocalBinder;->subscribe(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;Z)Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService$LocalBinder;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService$LocalBinder;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService$LocalBinder$1;->this$1:Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService$LocalBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSubscribed(Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper;)V
    .locals 3
    .param p1    # Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "NotesDocumentService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSubscribed, wrapper : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService$LocalBinder$1;->this$1:Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService$LocalBinder;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService$LocalBinder;->this$0:Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService;->getServiceWrapperManager()Lcom/samsung/android/support/senl/nt/model/service/DocumentServiceWrapperManager;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService$LocalBinder$1;->this$1:Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService$LocalBinder;

    iget-object v1, v1, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService$LocalBinder;->this$0:Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService;->getServiceWrapperManager()Lcom/samsung/android/support/senl/nt/model/service/DocumentServiceWrapperManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/android/support/senl/nt/model/service/DocumentServiceWrapperManager;->subscribe(Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService$LocalBinder$1;->this$1:Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService$LocalBinder;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService$LocalBinder;->this$0:Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService;->onSubscribed(Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onUnsubscribed(Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper;)V
    .locals 3
    .param p1    # Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "NotesDocumentService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUnsubscribed, wrapper : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService$LocalBinder$1;->this$1:Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService$LocalBinder;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService$LocalBinder;->this$0:Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService;->getServiceWrapperManager()Lcom/samsung/android/support/senl/nt/model/service/DocumentServiceWrapperManager;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService$LocalBinder$1;->this$1:Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService$LocalBinder;

    iget-object v1, v1, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService$LocalBinder;->this$0:Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService;->getServiceWrapperManager()Lcom/samsung/android/support/senl/nt/model/service/DocumentServiceWrapperManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/android/support/senl/nt/model/service/DocumentServiceWrapperManager;->unsubscribe(Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService$LocalBinder$1;->this$1:Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService$LocalBinder;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService$LocalBinder;->this$0:Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService;->onUnsubscribed(Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
