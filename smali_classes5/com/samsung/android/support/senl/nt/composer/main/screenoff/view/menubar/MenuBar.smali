.class public Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/MenuBar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/menubar/MenuBarContract$IView;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContainer:Landroid/view/View;

.field private mMenuBarLayout:Landroid/view/View;

.field private mMenuItemManager:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/item/MenuItemManager;

.field private final mMenuItemState:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/item/MenuItemState;

.field private final mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/menubar/MenuBarPresenter;

.field private final mSettingViewState:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/setting/SettingViewState;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "MenuBar"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/util/SOLogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/MenuBar;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/menubar/MenuBarPresenter;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/MenuBar;->TAG:Ljava/lang/String;

    const-string v1, "MenuBar#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/MenuBar;->mContainer:Landroid/view/View;

    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/MenuBar$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/MenuBar$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/MenuBar;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/MenuBar;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/menubar/MenuBarPresenter;

    invoke-virtual {p2, p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/menubar/MenuBarPresenter;->setView(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/menubar/MenuBarContract$IView;)V

    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/item/MenuItemState;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/item/MenuItemState;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/MenuBar;->mMenuItemState:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/item/MenuItemState;

    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/setting/SettingViewState;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/setting/SettingViewState;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/MenuBar;->mSettingViewState:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/setting/SettingViewState;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/MenuBar;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/MenuBar;->mContainer:Landroid/view/View;

    return-object p0
.end method

.method public static bridge synthetic b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/MenuBar;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public init(IZ)V
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/MenuBar;->mContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/MenuBar;->mContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/MenuBar;->mContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    sget-object v3, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/MenuBar;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "init orientation# "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v2, v5, :cond_4

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/ConfigurationModel;->isSupportNavigationRotation()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_2

    :cond_0
    if-eqz p2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/MenuBar;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/menubar/MenuBarPresenter;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/menubar/MenuBarPresenter;->getRotation()I

    move-result v2

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/MenuBar;->mContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v5, "window"

    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v2

    :goto_0
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/common/util/LocaleUtils;->isRTLMode()Z

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "init halfWheelRotation/rotation/isRTLMode # "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget p2, Lcom/samsung/android/support/senl/nt/composer/R$layout;->screenoff_menu_bar_layout_landscape:I

    iget-object v6, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/MenuBar;->mContainer:Landroid/view/View;

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v1, p2, v6, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/MenuBar;->mMenuBarLayout:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v5, :cond_2

    const v1, 0x800005

    goto :goto_1

    :cond_2
    const v1, 0x800003

    :goto_1
    iput v1, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$dimen;->screenoff_menu_bar_layout_width_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/4 v0, 0x3

    if-ne v2, v0, :cond_5

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/InputMethodCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/InputMethodCompat;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/MenuBar;->mContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/view/InputMethodCompat;->getNavigationBarHeightIgnoreHasSoftKey(Landroid/content/Context;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init navigationHeight# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v5, :cond_3

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    goto :goto_3

    :cond_3
    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    goto :goto_3

    :cond_4
    :goto_2
    sget p2, Lcom/samsung/android/support/senl/nt/composer/R$layout;->screenoff_menu_bar_layout_portrait:I

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/MenuBar;->mContainer:Landroid/view/View;

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v1, p2, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/MenuBar;->mMenuBarLayout:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout$LayoutParams;

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$dimen;->screenoff_menu_bar_layout_width_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 v0, 0x30

    iput v0, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    :cond_5
    :goto_3
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/MenuBar;->mMenuBarLayout:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/MenuBar;->mContainer:Landroid/view/View;

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/MenuBar;->mMenuBarLayout:Landroid/view/View;

    invoke-virtual {p1, v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/item/MenuItemManager;

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/MenuBar;->mContainer:Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/MenuBar;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/menubar/MenuBarPresenter;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/MenuBar;->mMenuItemState:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/item/MenuItemState;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/MenuBar;->mSettingViewState:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/setting/SettingViewState;

    invoke-direct {p1, p2, v0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/item/MenuItemManager;-><init>(Landroid/view/View;Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/menubar/MenuBarPresenter;Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/item/MenuItemState;Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/setting/SettingViewState;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/MenuBar;->mMenuItemManager:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/item/MenuItemManager;

    return-void
.end method

.method public onConfigurationChanged(IZ)V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/MenuBar;->TAG:Ljava/lang/String;

    const-string v1, "onConfigurationChanged#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/MenuBar;->onDestroy()V

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/MenuBar;->init(IZ)V

    if-eqz p2, :cond_0

    const/16 p1, 0x10

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/MenuBar;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/menubar/MenuBarPresenter;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/menubar/MenuBarPresenter;->getPinVisibility()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/MenuBar;->updateVisibility(II)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/MenuBar;->mContainer:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/MenuBar;->mMenuBarLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/MenuBar;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDestroy# isInLayout/indexOfChild "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/MenuBar;->mContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->isInLayout()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/MenuBar;->mContainer:Landroid/view/View;

    check-cast v2, Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/MenuBar;->mMenuBarLayout:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/MenuBar;->mMenuBarLayout:Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/MenuBar;->mMenuItemManager:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/item/MenuItemManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/item/MenuItemManager;->onDestroy()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/MenuBar;->TAG:Ljava/lang/String;

    const-string v1, "onWindowFocusChanged#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/MenuBar;->mMenuItemManager:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/item/MenuItemManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/item/MenuItemManager;->onWindowFocusChanged(Z)V

    :cond_0
    return-void
.end method

.method public updateVisibility(II)V
    .locals 3
    .param p1    # I
        .annotation build Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/menubar/MenuBarItemType;
        .end annotation
    .end param

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/MenuBar;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateVisibility#, type/visibility = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/MenuBar;->mMenuBarLayout:Landroid/view/View;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/MenuBar;->mMenuItemManager:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/item/MenuItemManager;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/item/MenuItemManager;->update(II)V

    :cond_1
    :goto_0
    return-void
.end method
