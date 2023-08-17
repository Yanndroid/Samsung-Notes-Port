.class public Lcom/samsung/android/support/senl/nt/data/resolver/operation/NotesDocumentOperationProcessor;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createSaveOperation(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/data/resolver/operation/constants/DocumentType;)Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/SaveOperation;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/samsung/android/support/senl/nt/data/resolver/operation/constants/DocumentType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/samsung/android/support/senl/nt/data/resolver/operation/constants/DocumentType;",
            ")",
            "Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/SaveOperation<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/constants/DocumentType;->SDOC:Lcom/samsung/android/support/senl/nt/data/resolver/operation/constants/DocumentType;

    if-ne p1, v0, :cond_0

    new-instance p1, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/SDocSaveOperation;

    invoke-direct {p1, p0}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/SDocSaveOperation;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/WDocSaveOperation;

    invoke-direct {p1, p0}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/WDocSaveOperation;-><init>(Landroid/content/Context;)V

    :goto_0
    return-object p1
.end method
