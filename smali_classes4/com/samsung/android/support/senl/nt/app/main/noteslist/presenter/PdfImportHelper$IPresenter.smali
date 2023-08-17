.class interface abstract Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/PdfImportHelper$IPresenter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/PdfImportHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IPresenter"
.end annotation


# virtual methods
.method public abstract restoreImportMultiPdfDialog(Lcom/samsung/android/support/senl/nt/app/main/common/dialog/ImportMultiplePdfDialogFragment$Contract;)V
.end method

.method public abstract setImportPDFTaskListenerForTipCard(Lcom/samsung/android/support/senl/nt/app/main/common/task/PdfImportTask;I)V
.end method

.method public abstract setToolType(I)V
.end method

.method public abstract showImportMultiPdfDialog(Ljava/lang/String;ILjava/util/List;Lcom/samsung/android/support/senl/nt/app/main/common/dialog/ImportMultiplePdfDialogFragment$Contract;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;",
            "Lcom/samsung/android/support/senl/nt/app/main/common/dialog/ImportMultiplePdfDialogFragment$Contract;",
            ")V"
        }
    .end annotation
.end method
