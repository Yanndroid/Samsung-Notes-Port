.class public Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/item/HwToolbarLockCanvas;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/item/HwToolbarItem;
.source "SourceFile"


# static fields
.field private static final MAX_LOCK_CANVAS_CLICK_COUNT:I = 0x3

.field private static final PREF_KEY_CLICK_COUNT:Ljava/lang/String; = "hw_lock_canvas_clicked"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field public mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/HwToolbarPresenterImpl;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "HwToolbarLockCanvas"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/item/HwToolbarLockCanvas;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/item/HwToolbarItemContract;)V
    .locals 5

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/item/HwToolbarItem;-><init>(Landroid/view/View;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/item/HwToolbarItemContract;)V

    invoke-interface {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/item/HwToolbarItemContract;->getHwToolbarPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/HwToolbarPresenterImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/item/HwToolbarLockCanvas;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/HwToolbarPresenterImpl;

    new-instance p2, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/item/HwToolbarLockCanvas$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/item/HwToolbarLockCanvas$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/item/HwToolbarLockCanvas;)V

    invoke-interface {p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/HwToolbarPresenterImpl;->setSpenGestureControllerListener(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenGestureControllerImpl;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/item/HwToolbarItem;->mView:Landroid/view/View;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$string;->composer_lock:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/item/HwToolbarItem;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/samsung/android/support/senl/nt/composer/R$string;->composer_zoom:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p2, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/item/HwToolbarItem;->mView:Landroid/view/View;

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;->setTooltipText(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public static bridge synthetic c()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/item/HwToolbarLockCanvas;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private isValidClickCount()Z
    .locals 5

    const-string v0, "Composer"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    const-string v1, "hw_lock_canvas_clicked"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInt(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    return v2

    :cond_0
    const/4 v2, 0x1

    add-int/2addr v3, v2

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->putInt(Ljava/lang/String;I)V

    return v2
.end method

.method private toggleSelected()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/item/HwToolbarItem;->mHwSettingViewManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingViewManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingViewManager;->hide()Z

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/item/HwToolbarItem;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/item/HwToolbarItem;->mHwToolbarItemManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/item/HwToolbarItemContract;

    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/item/HwToolbarItemContract;->getSettingInstance()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/setting/HwSettingPresenter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/setting/HwSettingPresenter;->setZoomState(Z)V

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/item/HwToolbarItem;->mHwToolbarItemManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/item/HwToolbarItemContract;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/item/HwToolbarItem;->getViewId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/item/HwToolbarItemContract;->onSelected(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/item/HwToolbarLockCanvas;->setSelected(Z)Z

    :goto_0
    return-void
.end method

.method private updateIcon(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/item/HwToolbarItem;->mView:Landroid/view/View;

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$id;->hw_toolbar_lock_canvas_type:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$drawable;->comp_hw_toolbar_ic_lock_canvas:I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/item/HwToolbarItem;->mView:Landroid/view/View;

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$id;->hw_toolbar_lock_canvas_type:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$drawable;->comp_hw_toolbar_ic_unlock_canvas:I

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method


# virtual methods
.method public functionEnable(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/item/HwToolbarItem;->mHwToolbarItemManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/item/HwToolbarItemContract;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/item/HwToolbarItemContract;->getSettingInstance()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/setting/HwSettingPresenter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/setting/HwSettingPresenter;->setZoomLock(Z)V

    return-void
.end method

.method public onClick()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/item/HwToolbarLockCanvas;->TAG:Ljava/lang/String;

    const-string v1, "onClick# "

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/item/HwToolbarLockCanvas;->toggleSelected()V

    return-void
.end method

.method public setEnable(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/item/HwToolbarItem;->setEnable(Z)V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/item/HwToolbarLockCanvas;->functionEnable(Z)V

    :cond_0
    return-void
.end method

.method public setSelected(Z)Z
    .locals 2

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/item/HwToolbarItem;->setSelected(Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/item/HwToolbarLockCanvas;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/HwToolbarPresenterImpl;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/HwToolbarPresenterImpl;->isZoomLocked()Z

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/item/HwToolbarLockCanvas;->isValidClickCount()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/item/HwToolbarLockCanvas;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/HwToolbarPresenterImpl;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/HwToolbarPresenterImpl;->showLockCanvasToolTip()V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/item/HwToolbarItem;->mHwToolbarItemManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/item/HwToolbarItemContract;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/item/HwToolbarItemContract;->getSettingInstance()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/setting/HwSettingPresenter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/setting/HwSettingPresenter;->setZoomLock(Z)V

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/item/HwToolbarLockCanvas;->updateIcon(Z)V

    if-eqz p1, :cond_2

    const-string p1, "1"

    goto :goto_0

    :cond_2
    const-string p1, "0"

    :goto_0
    const-string v0, "411"

    const-string v1, "3432"

    invoke-static {v0, v1, p1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public toggleLockCanvas()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/item/HwToolbarItem;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/item/HwToolbarItem;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/item/HwToolbarLockCanvas;->TAG:Ljava/lang/String;

    const-string v1, "toggleLockCanvas# "

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/item/HwToolbarLockCanvas;->toggleSelected()V

    :cond_1
    :goto_0
    return-void
.end method

.method public updateLockCanvas()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/item/HwToolbarLockCanvas;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/HwToolbarPresenterImpl;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/HwToolbarPresenterImpl;->isLastStateLockCanvas()Z

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/item/HwToolbarLockCanvas;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/HwToolbarPresenterImpl;

    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/HwToolbarPresenterImpl;->isZoomLocked()Z

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/item/HwToolbarLockCanvas;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/HwToolbarPresenterImpl;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/HwToolbarPresenterImpl;->isLastStateLockCanvas()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/item/HwToolbarLockCanvas;->setSelected(Z)Z

    :cond_0
    return-void
.end method
