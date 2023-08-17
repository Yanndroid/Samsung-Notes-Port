.class public Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/directwrite/item/DwMenuKeyboard;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/directwrite/item/DwMenuItem;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/directwrite/item/DwMenuItem;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public insertSALog()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/util/sa/ComposerSAConstants;->SCREEN_NONE:Ljava/lang/String;

    const-string v1, "4714"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onClicked()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/directwrite/item/DwMenuItem;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/directwrite/DwToolbarPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/directwrite/DwToolbarPresenter;->isShownSoftInput()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/directwrite/item/DwMenuItem;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/directwrite/DwToolbarPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/directwrite/DwToolbarPresenter;->hideSoftInput()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/directwrite/item/DwMenuKeyboard;->prepareToShowSoftInput()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/directwrite/item/DwMenuItem;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/directwrite/DwToolbarPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/directwrite/DwToolbarPresenter;->showSoftInput()V

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/directwrite/item/DwMenuKeyboard;->insertSALog()V

    return-void
.end method

.method public prepareToShowSoftInput()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/directwrite/item/DwMenuItem;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/directwrite/DwToolbarPresenter;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/directwrite/item/DwMenuItem;->getViewCenterPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/directwrite/DwToolbarPresenter;->setFloatingSIP(I)V

    return-void
.end method
