.class public interface abstract Lcom/samsung/android/support/senl/nt/base/common/access/sync/importer/ImportDocumentManagerContractFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract create(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/base/common/access/sync/importer/ImportDocumentManagerContract;
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/base/common/access/sync/importer/data/ImportDocument;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/samsung/android/support/senl/nt/base/common/access/sync/importer/ImportDocumentManagerContract;"
        }
    .end annotation
.end method
