.class Lcom/samsung/android/support/senl/nt/composer/main/screenon/presenter/menu/option/OptionMenuPresenterSOn$SOnOptionMenuBackPresenter;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuBackPresenter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/screenon/presenter/menu/option/OptionMenuPresenterSOn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SOnOptionMenuBackPresenter"
.end annotation


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/common/MenuPresenterContract$IMenuManager;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuBackPresenter;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/common/MenuPresenterContract$IMenuManager;)V

    return-void
.end method


# virtual methods
.method public startMainActivity(Landroid/app/Activity;Landroid/content/Intent;Z)V
    .locals 1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/util/DeviceUtils;->isSupportedScreenOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;->isFreeFormWindow(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 p3, 0x18080000

    invoke-virtual {p2, p3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/MultiTaskManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/MultiTaskManager;

    move-result-object p3

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenon/util/ScreenOnUtils;->getActivityOptions(Landroid/app/Activity;)Landroid/app/ActivityOptions;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p3, p1, p2, v0}, Lcom/samsung/android/support/senl/nt/base/common/MultiTaskManager;->startActivity(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuBackPresenter;->startMainActivity(Landroid/app/Activity;Landroid/content/Intent;Z)V

    return-void
.end method
