.class Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/menu/toolbar/hwtoolbar/PwHwToolbarPresenter$HwSettingPresenterPdfWriter;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/setting/HwSettingPresenter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/menu/toolbar/hwtoolbar/PwHwToolbarPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HwSettingPresenterPdfWriter"
.end annotation


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IPresenter;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/HwToolbarPresenterImpl;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/setting/HwSettingPresenter;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IPresenter;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/HwToolbarPresenterImpl;)V

    return-void
.end method


# virtual methods
.method public createSettingInfoManager(Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/setting/SettingInfoManager;
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/menu/toolbar/hwtoolbar/PwHwToolbarPresenter$SettingInfoManagerPdfWriter;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/setting/HwSettingPresenter;->mViewPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IPresenter;

    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IPresenter;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/menu/toolbar/hwtoolbar/PwHwToolbarPresenter$SettingInfoManagerPdfWriter;-><init>(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;)V

    return-object v0
.end method
