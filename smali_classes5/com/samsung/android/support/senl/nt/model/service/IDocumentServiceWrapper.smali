.class public abstract Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/model/service/IDocumentService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper$DocumentSubscriptionListener;,
        Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper$DocumentServiceListener;,
        Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper$SyncListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract askForReadyToDownloadDocument(Ljava/lang/String;)Z
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract askForReadyToReplaceOriginalDocument(Ljava/lang/String;)Z
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract existUsingDocument(Ljava/lang/String;)Z
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract getUser()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;
.end method

.method public abstract notifyDocumentOpenedListener(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;Ljava/lang/String;)V
    .param p1    # Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract notifyForceClosedDocument()V
.end method

.method public abstract notifyOnChangedDocumentListener(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;Ljava/lang/String;)V
    .param p1    # Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract notifyOnChangedWorkingState(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/model/executor/scheduler/SchedulerDataSource$WorkingState;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/support/senl/nt/model/executor/scheduler/SchedulerDataSource$WorkingState;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract notifyOnReadyToDownloadDocument(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;Ljava/lang/String;)Z
    .param p1    # Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract notifyOnReadyToReplaceDocument(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;Ljava/lang/String;)Z
    .param p1    # Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract notifyOnReceiveBroadcastMessage(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;Landroid/content/Intent;)V
    .param p1    # Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract registerDocumentServiceListener(Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper$DocumentServiceListener;)V
.end method

.method public abstract registerSyncListener(Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper$SyncListener;)V
.end method

.method public abstract save(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;ZLcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;)V
    .param p1    # Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource<",
            "+",
            "Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;",
            "+",
            "Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;",
            ">;Z",
            "Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener<",
            "+",
            "Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract unregisterDocumentServiceListener(Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper$DocumentServiceListener;)V
.end method

.method public abstract unregisterSyncListener(Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper$SyncListener;)V
.end method

.method public abstract unsubscribe()V
.end method
