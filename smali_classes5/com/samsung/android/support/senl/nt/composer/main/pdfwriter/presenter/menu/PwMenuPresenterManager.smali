.class public Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/menu/PwMenuPresenterManager;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/MenuPresenterManager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/menu/PwMenuPresenterManager$PwContextMenuManager;,
        Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/menu/PwMenuPresenterManager$PwPageListPresenter;,
        Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/menu/PwMenuPresenterManager$PwCompListPresenter;,
        Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/menu/PwMenuPresenterManager$PwTitleEditorPresenter;
    }
.end annotation


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
.method public createContextMenuManager()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuManager;
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/menu/PwMenuPresenterManager$PwContextMenuManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/menu/PwMenuPresenterManager$PwContextMenuManager;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/menu/a;)V

    return-object v0
.end method

.method public createHwToolbarPresenter(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/HwToolbarPresenter;
    .locals 1
    .param p1    # Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/menu/toolbar/hwtoolbar/PwHwToolbarPresenter;

    invoke-direct {v0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/menu/toolbar/hwtoolbar/PwHwToolbarPresenter;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;)V

    return-object v0
.end method

.method public createInAppCollaborationPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/inapp/BaseInAppPresenter;
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/inapp/BaseInAppPresenter;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/inapp/BaseInAppPresenter;-><init>()V

    return-object v0
.end method

.method public createListMenuPresenter(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/common/MenuPresenterContract$IMenuManager;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/CompListPresenter;
    .locals 7

    new-instance v6, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/menu/PwMenuPresenterManager$PwCompListPresenter;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/menu/PwMenuPresenterManager$PwCompListPresenter;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/common/MenuPresenterContract$IMenuManager;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;)V

    return-object v6
.end method

.method public createOptionMenuPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/menu/option/PwOptionMenuPresenter;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/menu/option/PwOptionMenuPresenter;-><init>()V

    return-object v0
.end method

.method public createTitleEditorPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/title/TitleEditorPresenter;
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/menu/PwMenuPresenterManager$PwTitleEditorPresenter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/menu/PwMenuPresenterManager$PwTitleEditorPresenter;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/menu/b;)V

    return-object v0
.end method
