.class public interface abstract Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/presenter/mode/ImportDocumentModeContract$IPresenter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/presenter/mode/ImportDocumentModeContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IPresenter"
.end annotation


# virtual methods
.method public abstract dismissProgressDialog()V
.end method

.method public abstract getActivity()Landroid/app/Activity;
.end method

.method public abstract getCheckedItems()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ld1/d;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getIsCancelDownloadingEnded()Z
.end method

.method public abstract handleError(Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;ILjava/lang/String;Ljava/lang/Exception;)V
.end method

.method public abstract registerImportListRequest()V
.end method

.method public abstract showCancelDownloadingDialog()V
.end method

.method public abstract showMemoDataWarningDialog(ID)V
.end method
