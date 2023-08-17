.class public Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/IToolbarManager;
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/ToolbarContract$IView;
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AbsToolbarContainerLayout$OnAnimationListener;
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/util/NavigationBarUtil$OnChangedListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "ToolbarManager"


# instance fields
.field private mConsumeTouchOutside:Z

.field private mDirectWriteMenu:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/directwrite/DirectWriteMenu;

.field private mFloatingArea:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterContainer;

.field private mFloatingContainer:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AbsToolbarContainerLayout;

.field private mHwSettingPenMiniMenu:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;

.field private mHwToolbarMenu:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/HwToolbarMenu;

.field private mIsReadySingleTapUp:Z

.field private mPreTouchListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenPreTouchListenerImpl$PreTouchListener;

.field private mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/ToolbarPresenter;

.field private mRtMenu:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/RtToolbarMenu;

.field private mSettingAreaTouchListener:Landroid/view/View$OnTouchListener;

.field private mSpenColorThemeUtil:Lcom/samsung/android/sdk/pen/setting/color/SpenColorThemeUtil;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;->mConsumeTouchOutside:Z

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;->mIsReadySingleTapUp:Z

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;->mConsumeTouchOutside:Z

    return p0
.end method

.method private addPreTouchListeners()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/ToolbarPresenter;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;->mPreTouchListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenPreTouchListenerImpl$PreTouchListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/ToolbarPresenter;->addPreTouchListener(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenPreTouchListenerImpl$PreTouchListener;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;->mFloatingContainer:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AbsToolbarContainerLayout;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/ToolbarPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AbsToolbarContainerLayout;->getPreTouchListener()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenPreTouchListenerImpl$PreTouchListener;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/ToolbarPresenter;->addPreTouchListener(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenPreTouchListenerImpl$PreTouchListener;)V

    :cond_0
    return-void
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AbsToolbarContainerLayout;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;->mFloatingContainer:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AbsToolbarContainerLayout;

    return-object p0
.end method

.method private blockadeBottomDock(Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;->mFloatingContainer:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AbsToolbarContainerLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->blockadeDock(IZ)V

    return-void
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;->mHwSettingPenMiniMenu:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/HwToolbarMenu;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;->mHwToolbarMenu:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/HwToolbarMenu;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;->mIsReadySingleTapUp:Z

    return p0
.end method

.method public static bridge synthetic f(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/ToolbarPresenter;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/ToolbarPresenter;

    return-object p0
.end method

.method public static bridge synthetic g(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/RtToolbarMenu;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;->mRtMenu:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/RtToolbarMenu;

    return-object p0
.end method

.method public static bridge synthetic h(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;->mConsumeTouchOutside:Z

    return-void
.end method

.method public static bridge synthetic i(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;->mIsReadySingleTapUp:Z

    return-void
.end method

.method public static bridge synthetic j(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;->onDockingMode(Z)V

    return-void
.end method

.method public static bridge synthetic k(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;->sendSAStatusLog(II)V

    return-void
.end method

.method private makePreTouchListener()V
    .locals 3

    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;->mHwToolbarMenu:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/HwToolbarMenu;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/HwToolbarMenu;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager$5;

    invoke-direct {v2, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager$5;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager$6;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager$6;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;Landroid/view/GestureDetector;)V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;->mPreTouchListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenPreTouchListenerImpl$PreTouchListener;

    return-void
.end method

.method private onDockingMode(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;->mHwToolbarMenu:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/HwToolbarMenu;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/HwToolbarMenu;->enableDockingMode(Z)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;->mRtMenu:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/RtToolbarMenu;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/RtToolbarMenu;->enableDockingMode(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/ToolbarPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/ToolbarPresenter;->isTabletLayout()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;->mRtMenu:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/RtToolbarMenu;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/RtToolbarMenu;->enablePaddingMode(Z)V

    :cond_1
    return-void
.end method

.method private releasePreTouchListeners()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/ToolbarPresenter;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;->mPreTouchListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenPreTouchListenerImpl$PreTouchListener;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/ToolbarPresenter;->removePreTouchListener(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenPreTouchListenerImpl$PreTouchListener;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/ToolbarPresenter;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;->mFloatingContainer:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AbsToolbarContainerLayout;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AbsToolbarContainerLayout;->getPreTouchListener()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenPreTouchListenerImpl$PreTouchListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/ToolbarPresenter;->removePreTouchListener(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenPreTouchListenerImpl$PreTouchListener;)V

    :cond_1
    return-void
.end method

.method private sendSAStatusLog(II)V
    .locals 2

    const/4 v0, 0x1

    const-string v1, "0150"

    if-nez p2, :cond_2

    if-eq p1, v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "f"

    goto :goto_1

    :cond_1
    :goto_0
    const-string p1, "b"

    goto :goto_1

    :cond_2
    if-ne p1, v0, :cond_3

    const-string p1, "c"

    :goto_1
    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics;->insertStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    if-nez p1, :cond_4

    const-string p1, "a"

    goto :goto_1

    :cond_4
    const/4 p2, 0x2

    if-ne p1, p2, :cond_5

    const-string p1, "d"

    goto :goto_1

    :cond_5
    const/4 p2, 0x3

    if-ne p1, p2, :cond_6

    const-string p1, "e"

    goto :goto_1

    :cond_6
    :goto_2
    return-void
.end method

.method private setTouchListener(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;->mFloatingArea:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterContainer;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;->mSettingAreaTouchListener:Landroid/view/View$OnTouchListener;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private setVerticalHalfOpened(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;->mFloatingContainer:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AbsToolbarContainerLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AbsToolbarContainerLayout;->setVerticalHalfOpened(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public attachDirectWriteMenu(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/directwrite/DwToolbarPresenter;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;->mDirectWriteMenu:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/directwrite/DirectWriteMenu;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/directwrite/DirectWriteMenu;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-direct {v0, p1, v1, p0, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/directwrite/DirectWriteMenu;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/IToolbarManager;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/directwrite/DwToolbarPresenter;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;->mDirectWriteMenu:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/directwrite/DirectWriteMenu;

    :cond_0
    return-void
.end method

.method public attachHwToolbarMenu(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/HwToolbarPresenter;Z)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;->initSpenColorThemeUtil(Landroid/app/Activity;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;->mHwToolbarMenu:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/HwToolbarMenu;

    if-nez v1, :cond_0

    new-instance p3, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/HwToolbarMenu;

    invoke-direct {p3, p1, v0, p0, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/HwToolbarMenu;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/IToolbarManager;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/HwToolbarPresenterImpl;)V

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;->mHwToolbarMenu:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/HwToolbarMenu;

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/HwToolbarMenu;->init()V

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/HwToolbarMenu;->reloadToolbarMenu()V

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;->mHwSettingPenMiniMenu:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;

    if-nez p1, :cond_2

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/HwToolbarPresenter;->isTabletLayout()Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;

    invoke-direct {p1, v0, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;-><init>(Landroid/view/ViewGroup;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/HwToolbarPresenter;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;->mHwSettingPenMiniMenu:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;

    :cond_2
    return-void
.end method

.method public attachRichTextMenu(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/richtext/RtToolbarPresenter;Z)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;->initSpenColorThemeUtil(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;->mRtMenu:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/RtToolbarMenu;

    if-nez v0, :cond_0

    new-instance p3, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/RtToolbarMenu;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p3, p1, v0, p0, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/RtToolbarMenu;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/IToolbarManager;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/richtext/RtToolbarPresenter;)V

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;->mRtMenu:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/RtToolbarMenu;

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/RtToolbarMenu;->reloadToolbarMenu()V

    :cond_1
    :goto_0
    return-void
.end method

.method public attachToolbar(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/ToolbarPresenter;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;->mFloatingContainer:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AbsToolbarContainerLayout;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/ToolbarPresenter;

    invoke-virtual {p2, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/ToolbarPresenter;->setView(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/ToolbarContract$IView;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p2

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$id;->floating_layout_container:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterContainer;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;->mFloatingArea:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterContainer;

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$id;->floating_layout:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AbsToolbarContainerLayout;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;->mFloatingContainer:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AbsToolbarContainerLayout;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;->mFloatingArea:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterContainer;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterContainer;->addFloater(Lcom/samsung/android/support/senl/nt/base/winset/view/floater/IFloater;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;->mFloatingContainer:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AbsToolbarContainerLayout;

    invoke-virtual {v0, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AbsToolbarContainerLayout;->setOnAnimationListener(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AbsToolbarContainerLayout$OnAnimationListener;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;->mFloatingContainer:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AbsToolbarContainerLayout;

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;->isMultiWindowMode(Landroid/app/Activity;)Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AbsToolbarContainerLayout;->setMultiWindowMode(Z)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;->mFloatingContainer:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AbsToolbarContainerLayout;

    const/4 v0, 0x0

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$id;->top_docker:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/IDock;

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->addDock(ILcom/samsung/android/support/senl/nt/base/winset/view/floater/IDock;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;->mFloatingContainer:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AbsToolbarContainerLayout;

    const/4 v0, 0x1

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$id;->bottom_docker:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/IDock;

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->addDock(ILcom/samsung/android/support/senl/nt/base/winset/view/floater/IDock;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/ToolbarPresenter;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/ToolbarPresenter;->isTabletLayout()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;->mFloatingContainer:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AbsToolbarContainerLayout;

    const/4 v0, 0x2

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$id;->start_docker:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/IDock;

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->addDock(ILcom/samsung/android/support/senl/nt/base/winset/view/floater/IDock;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;->mFloatingContainer:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AbsToolbarContainerLayout;

    const/4 v0, 0x3

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$id;->end_docker:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/IDock;

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->addDock(ILcom/samsung/android/support/senl/nt/base/winset/view/floater/IDock;)V

    :cond_1
    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/NavigationBarUtil;->addNavigationHideModeChangeListener(Lcom/samsung/android/support/senl/nt/composer/main/base/util/NavigationBarUtil$OnChangedListener;)V

    sget p1, Lcom/samsung/android/support/senl/nt/composer/R$id;->toolbar:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;->mFloatingContainer:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AbsToolbarContainerLayout;

    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AbsToolbarContainerLayout;->setToolbar(Landroid/view/View;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;->mFloatingContainer:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AbsToolbarContainerLayout;

    new-instance p2, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;)V

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AbsToolbarContainerLayout;->setOnToolbarPositionListener(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AbsToolbarContainerLayout$OnToolbarPositionListener;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;->mFloatingContainer:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AbsToolbarContainerLayout;

    new-instance p2, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager$2;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;)V

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->addModeChangeListener(Lcom/samsung/android/support/senl/nt/base/winset/view/floater/IFloater$ModeChangeListener;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;->mFloatingContainer:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AbsToolbarContainerLayout;

    new-instance p2, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager$3;

    invoke-direct {p2, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager$3;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;)V

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->setContract(Lcom/samsung/android/support/senl/nt/base/winset/view/floater/IFloater$IContract;)V

    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager$4;

    invoke-direct {p1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager$4;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;->mSettingAreaTouchListener:Landroid/view/View$OnTouchListener;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;->makePreTouchListener()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/ToolbarPresenter;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/ToolbarPresenter;->showCanNotUseSpenDialog()V

    return-void
.end method

.method public canNotChangeMode()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/ToolbarPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/ToolbarPresenter;->canNotChangeMode()Z

    move-result v0

    return v0
.end method

.method public changeDeviceState(Landroid/app/Activity;Landroidx/window/layout/FoldingFeature;)V
    .locals 2

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;->mHwToolbarMenu:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/HwToolbarMenu;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/FoldStateCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/FoldStateCompat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/view/FoldStateCompat;->isFoldableDevice()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/FoldStateCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/FoldStateCompat;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/view/FoldStateCompat;->getFoldDirection(Landroid/content/Context;)I

    move-result p1

    invoke-interface {p2}, Landroidx/window/layout/FoldingFeature;->getState()Landroidx/window/layout/FoldingFeature$State;

    move-result-object v0

    sget-object v1, Landroidx/window/layout/FoldingFeature$State;->HALF_OPENED:Landroidx/window/layout/FoldingFeature$State;

    if-ne v0, v1, :cond_2

    const/16 p2, 0x8

    if-ne p1, p2, :cond_3

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {p2}, Landroidx/window/layout/FoldingFeature;->getState()Landroidx/window/layout/FoldingFeature$State;

    move-result-object p1

    sget-object p2, Landroidx/window/layout/FoldingFeature$State;->FLAT:Landroidx/window/layout/FoldingFeature$State;

    if-ne p1, p2, :cond_3

    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;->setVerticalHalfOpened(Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method public clearSelectedButtonsOfHandWritingToolbarItem()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;->mHwToolbarMenu:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/HwToolbarMenu;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/HwToolbarMenu;->clearSelectedButtonsToolbarItem()V

    :cond_0
    return-void
.end method

.method public close()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;->mFloatingContainer:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AbsToolbarContainerLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;->mFloatingArea:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterContainer;

    if-eqz v0, :cond_1

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;->mHwToolbarMenu:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/HwToolbarMenu;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/HwToolbarMenu;->close()V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;->mRtMenu:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/RtToolbarMenu;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/RtToolbarMenu;->close()V

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;->mDirectWriteMenu:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/directwrite/DirectWriteMenu;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/directwrite/DirectWriteMenu;->close()V

    :cond_4
    const-string v0, "ToolbarManager"

    const-string v1, "close Toolbar"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getColorTheme(I)I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;->mSpenColorThemeUtil:Lcom/samsung/android/sdk/pen/setting/color/SpenColorThemeUtil;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/util/color/SpenColorThemeUtil;->getColor(I)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public hide(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;->mFloatingContainer:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AbsToolbarContainerLayout;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AbsToolbarContainerLayout;->startHideAnimation()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AbsToolbarContainerLayout;->hideWithDocker()V

    :goto_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;->mHwToolbarMenu:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/HwToolbarMenu;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/HwToolbarMenu;->hidePopupsWithSpoid()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;->mHwToolbarMenu:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/HwToolbarMenu;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/HwToolbarMenu;->offEasyWritingPad()V

    :cond_1
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;->setTouchListener(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;->hideSettingPenMini()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/ToolbarPresenter;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;->mFloatingContainer:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AbsToolbarContainerLayout;

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/ToolbarPresenter;->removeOnSipListener(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SoftInputManager$OnSipListener;)V

    const-string p1, "ToolbarManager"

    const-string v0, "hide Toolbar"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;->releasePreTouchListeners()V

    return-void
.end method

.method public hideDirectWrite()V
    .locals 2

    const-string v0, "ToolbarManager"

    const-string v1, "hideDirectWrite"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;->mDirectWriteMenu:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/directwrite/DirectWriteMenu;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/directwrite/DirectWriteMenu;->close()V

    :cond_0
    return-void
.end method

.method public hideSettingPenMini()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;->mHwSettingPenMiniMenu:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;->hide()V

    :cond_0
    return-void
.end method

.method public initSpenColorThemeUtil(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;->mSpenColorThemeUtil:Lcom/samsung/android/sdk/pen/setting/color/SpenColorThemeUtil;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/color/SpenColorThemeUtil;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/pen/setting/color/SpenColorThemeUtil;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;->mSpenColorThemeUtil:Lcom/samsung/android/sdk/pen/setting/color/SpenColorThemeUtil;

    :cond_0
    return-void
.end method

.method public isAttachedToolbar()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/ToolbarPresenter;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDirectWriteRecognizing()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;->mDirectWriteMenu:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/directwrite/DirectWriteMenu;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/directwrite/DirectWriteMenu;->isDirectWriteRecognizing()Z

    move-result v0

    return v0
.end method

.method public isDirectWriteUsing()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;->mDirectWriteMenu:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/directwrite/DirectWriteMenu;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/directwrite/DirectWriteMenu;->isUsing()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isSupportDirectWrite(Landroid/app/Activity;)Z
    .locals 1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerSpenUtils;->canUseSpen(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/model/collector/util/RecognitionUtil;->isSupported(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isToolbarShowing()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;->mFloatingContainer:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AbsToolbarContainerLayout;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AbsToolbarContainerLayout;->isShowing()Z

    move-result v0

    return v0
.end method

.method public onBackPressed(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;->mHwToolbarMenu:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/HwToolbarMenu;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/HwToolbarMenu;->onBackPressed(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    return v1

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;->mRtMenu:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/RtToolbarMenu;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/RtToolbarMenu;->onBackPressed()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public onConfigurationChanged(Landroid/app/Activity;Landroid/content/res/Configuration;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;->mHwToolbarMenu:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/HwToolbarMenu;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/HwToolbarMenu;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;->mRtMenu:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/RtToolbarMenu;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/RtToolbarMenu;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_1
    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;->mDirectWriteMenu:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/directwrite/DirectWriteMenu;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/directwrite/DirectWriteMenu;->onConfigurationChanged()V

    :cond_2
    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;->mFloatingContainer:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AbsToolbarContainerLayout;

    if-eqz p2, :cond_3

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;->isMultiWindowMode(Landroid/app/Activity;)Z

    move-result p1

    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AbsToolbarContainerLayout;->setMultiWindowMode(Z)V

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/ToolbarPresenter;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/ToolbarPresenter;->showCanNotUseSpenDialog()V

    return-void
.end method

.method public onEnd()V
    .locals 0

    return-void
.end method

.method public onHidedNavigation(Z)V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;->mHwToolbarMenu:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/HwToolbarMenu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;->mFloatingContainer:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AbsToolbarContainerLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->getIsMoving()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;->mHwToolbarMenu:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/HwToolbarMenu;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/HwToolbarMenu;->hidePopups()Z

    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Landroid/app/Activity;)V
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;->mHwToolbarMenu:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/HwToolbarMenu;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/HwToolbarMenu;->onWindowFocusChanged()V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;->mRtMenu:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/RtToolbarMenu;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/RtToolbarMenu;->onWindowFocusChanged()V

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;->mDirectWriteMenu:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/directwrite/DirectWriteMenu;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/directwrite/DirectWriteMenu;->onWindowFocusChanged()V

    :cond_2
    return-void
.end method

.method public reboundSettingPenMiniVI()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;->mHwSettingPenMiniMenu:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;->runReboundVI()V

    :cond_0
    return-void
.end method

.method public release()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;->mSpenColorThemeUtil:Lcom/samsung/android/sdk/pen/setting/color/SpenColorThemeUtil;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/color/SpenColorThemeUtil;->close()V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;->mSpenColorThemeUtil:Lcom/samsung/android/sdk/pen/setting/color/SpenColorThemeUtil;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;->mRtMenu:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/RtToolbarMenu;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/RtToolbarMenu;->release()V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;->mRtMenu:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/RtToolbarMenu;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;->mHwToolbarMenu:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/HwToolbarMenu;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/HwToolbarMenu;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;->mHwToolbarMenu:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/HwToolbarMenu;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/HwToolbarMenu;->release()V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;->mHwToolbarMenu:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/HwToolbarMenu;

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;->mFloatingContainer:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AbsToolbarContainerLayout;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AbsToolbarContainerLayout;->release()V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;->mFloatingContainer:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AbsToolbarContainerLayout;

    :cond_3
    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/NavigationBarUtil;->removeNavigationHideModeChangeListener(Lcom/samsung/android/support/senl/nt/composer/main/base/util/NavigationBarUtil$OnChangedListener;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;->releasePreTouchListeners()V

    return-void
.end method

.method public setDirectWrite(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;->mDirectWriteMenu:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/directwrite/DirectWriteMenu;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/directwrite/DirectWriteMenu;->setDirectWrite(Z)V

    :cond_0
    return-void
.end method

.method public setDirectWriteColor(II)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDirectWriteColor "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ToolbarManager"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;->mDirectWriteMenu:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/directwrite/DirectWriteMenu;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/directwrite/DirectWriteMenu;->setDirectWriteColor(II)V

    :cond_0
    return-void
.end method

.method public setSpenColorThemeUtil(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;->mSpenColorThemeUtil:Lcom/samsung/android/sdk/pen/setting/color/SpenColorThemeUtil;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/util/color/SpenColorThemeUtil;->setColorTheme(I)V

    :cond_0
    return-void
.end method

.method public show(Z)V
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;->isAttachedToolbar()Z

    move-result v0

    const-string v1, "ToolbarManager"

    if-nez v0, :cond_0

    const-string p1, "can\'t show cause toolbarContainer is not attached yet"

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;->mFloatingArea:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterContainer;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;->mFloatingArea:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterContainer;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;->mFloatingContainer:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AbsToolbarContainerLayout;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AbsToolbarContainerLayout;->startShowAnimation()V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AbsToolbarContainerLayout;->showWithDocker()V

    :goto_0
    invoke-direct {p0, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;->setTouchListener(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;->showSettingPenMini()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;->mFloatingContainer:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AbsToolbarContainerLayout;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AbsToolbarContainerLayout;->updateRelayoutPosition()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/ToolbarPresenter;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;->mFloatingContainer:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AbsToolbarContainerLayout;

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/ToolbarPresenter;->addOnSipListener(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SoftInputManager$OnSipListener;)V

    const-string p1, "show Toolbar"

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;->addPreTouchListeners()V

    return-void
.end method

.method public showDirectWrite()V
    .locals 2

    const-string v0, "ToolbarManager"

    const-string v1, "showDirectWrite"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;->mDirectWriteMenu:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/directwrite/DirectWriteMenu;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/directwrite/DirectWriteMenu;->show()V

    return-void
.end method

.method public showSettingPenMini()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;->mHwSettingPenMiniMenu:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;->isPenMiniMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;->mHwToolbarMenu:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/HwToolbarMenu;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/HwToolbarMenu;->isTextMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;->mHwSettingPenMiniMenu:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniMenu;->show()V

    :cond_0
    return-void
.end method
