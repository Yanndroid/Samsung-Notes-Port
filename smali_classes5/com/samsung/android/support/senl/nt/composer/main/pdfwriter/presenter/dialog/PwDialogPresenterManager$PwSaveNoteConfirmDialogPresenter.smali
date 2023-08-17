.class Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/dialog/PwDialogPresenterManager$PwSaveNoteConfirmDialogPresenter;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SaveNoteConfirmDialogPresenter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/dialog/PwDialogPresenterManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PwSaveNoteConfirmDialogPresenter"
.end annotation


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IParent;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IDialogCreator;Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SaveNoteConfirmDialogPresenter;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IParent;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IDialogCreator;Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;)V

    return-void
.end method


# virtual methods
.method public discard()V
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SaveNoteConfirmDialogPresenter;->discard()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SaveNoteConfirmDialogPresenter;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    check-cast v0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PwComposerModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PwComposerModel;->trimCacheInfo()V

    return-void
.end method

.method public save()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SaveNoteConfirmDialogPresenter;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    check-cast v0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PwComposerModel;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SaveNoteConfirmDialogPresenter;->mSavePostAction:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PwComposerModel;->save(Ljava/lang/Runnable;)Z

    return-void
.end method
