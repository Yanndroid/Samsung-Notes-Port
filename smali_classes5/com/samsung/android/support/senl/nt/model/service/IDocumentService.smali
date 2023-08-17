.class public interface abstract Lcom/samsung/android/support/senl/nt/model/service/IDocumentService;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract askForReadyToDownloadDocument(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;Ljava/lang/String;)Z
    .param p1    # Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract askForReadyToReplaceOriginalDocument(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;Ljava/lang/String;)Z
    .param p1    # Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract close(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;JLcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;)V
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
            ">;J",
            "Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener<",
            "+",
            "Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract close(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;)V
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
            ">;",
            "Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener<",
            "+",
            "Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract discardQuickSave(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;)V
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
            ">;",
            "Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener<",
            "+",
            "Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract existUsingDocument(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;Ljava/lang/String;)Z
    .param p1    # Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract open(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;)V
    .param p1    # Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository<",
            "+",
            "Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;",
            "+",
            "Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;",
            ">;",
            "Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener<",
            "+",
            "Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract openCache(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;)V
    .param p1    # Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository<",
            "+",
            "Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;",
            "+",
            "Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;",
            ">;",
            "Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener<",
            "+",
            "Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract release(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;JLcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;)V
    .param p1    # Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;",
            "J",
            "Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener<",
            "+",
            "Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract reload(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;)V
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
            ">;",
            "Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener<",
            "+",
            "Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract save(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;ZZLcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;)V
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
            ">;ZZ",
            "Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener<",
            "+",
            "Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract saveCache(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;ZLcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;)V
    .param p1    # Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;
        .annotation build Landroidx/annotation/Nullable;
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

.method public abstract sendBroadcastMessage(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;Landroid/content/Intent;)V
    .param p1    # Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract snapSave(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;ZLcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;)V
    .param p1    # Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;
        .annotation build Landroidx/annotation/Nullable;
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
