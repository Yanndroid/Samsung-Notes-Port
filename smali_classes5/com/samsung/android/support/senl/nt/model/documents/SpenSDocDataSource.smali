.class public interface abstract Lcom/samsung/android/support/senl/nt/model/documents/SpenSDocDataSource;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getDocument()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract getPath()Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract getSpenSDoc()Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract getUuid()Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract isUsed(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;)Z
    .param p1    # Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method
