.class public Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/menu/MenuPresenterManagerSOff;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/MenuPresenterManager;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/common/MenuPresenterContract$IMenuParent;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/MenuPresenterManager;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/common/MenuPresenterContract$IMenuParent;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/MenuPresenterManager;->mQuickNotePresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->setDisabled(Z)V

    return-void
.end method


# virtual methods
.method public createInAppCollaborationPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/inapp/BaseInAppPresenter;
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/inapp/BaseInAppPresenter;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/inapp/BaseInAppPresenter;-><init>()V

    return-object v0
.end method
