.class public Lcom/samsung/android/support/senl/nt/base/common/access/sync/SyncAccessHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static sImportDocumentManagerContractFactory:Lcom/samsung/android/support/senl/nt/base/common/access/sync/importer/ImportDocumentManagerContractFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createImportDocumentManager(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/base/common/access/sync/importer/ImportDocumentManagerContract;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

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

    sget-object v0, Lcom/samsung/android/support/senl/nt/base/common/access/sync/SyncAccessHandler;->sImportDocumentManagerContractFactory:Lcom/samsung/android/support/senl/nt/base/common/access/sync/importer/ImportDocumentManagerContractFactory;

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/support/senl/nt/base/common/access/sync/importer/ImportDocumentManagerContractFactory;->create(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/base/common/access/sync/importer/ImportDocumentManagerContract;

    move-result-object p0

    return-object p0
.end method

.method public static setImportDocumentManagerFactory(Lcom/samsung/android/support/senl/nt/base/common/access/sync/importer/ImportDocumentManagerContractFactory;)V
    .locals 0
    .param p0    # Lcom/samsung/android/support/senl/nt/base/common/access/sync/importer/ImportDocumentManagerContractFactory;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sput-object p0, Lcom/samsung/android/support/senl/nt/base/common/access/sync/SyncAccessHandler;->sImportDocumentManagerContractFactory:Lcom/samsung/android/support/senl/nt/base/common/access/sync/importer/ImportDocumentManagerContractFactory;

    return-void
.end method
