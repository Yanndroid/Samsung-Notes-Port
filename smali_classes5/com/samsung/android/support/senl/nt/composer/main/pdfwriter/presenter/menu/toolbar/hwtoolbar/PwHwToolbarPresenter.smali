.class public Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/menu/toolbar/hwtoolbar/PwHwToolbarPresenter;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/HwToolbarPresenter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/menu/toolbar/hwtoolbar/PwHwToolbarPresenter$SettingInfoManagerPdfWriter;,
        Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/menu/toolbar/hwtoolbar/PwHwToolbarPresenter$HwSettingPresenterPdfWriter;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;)V
    .locals 0
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

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/HwToolbarPresenter;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;)V

    return-void
.end method


# virtual methods
.method public changeTextMode()V
    .locals 0

    return-void
.end method

.method public createHwSettingPresenter(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/HwToolbarPresenterImpl;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/setting/HwSettingPresenter;
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/menu/toolbar/hwtoolbar/PwHwToolbarPresenter$HwSettingPresenterPdfWriter;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/menu/toolbar/hwtoolbar/PwHwToolbarPresenter$HwSettingPresenterPdfWriter;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IPresenter;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/HwToolbarPresenterImpl;)V

    return-object v0
.end method

.method public isTextButtonEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
