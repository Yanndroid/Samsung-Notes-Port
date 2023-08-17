.class public Lcom/samsung/android/support/senl/nt/composer/main/simple/view/SimpleComposerView;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerViewContract$IView;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mComposerViewState:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewState;

.field private mDVFSHelperForSpenFling:Lcom/samsung/android/support/senl/cm/base/framework/os/DVFSHelperCompat;

.field private mFragment:Landroidx/fragment/app/Fragment;

.field private mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerViewPresenter;

.field private mScrollZoomManagerAdapter:Lcom/samsung/android/support/senl/nt/composer/main/simple/view/ScrollZoomManagerAdapter;

.field private mView:Lcom/samsung/android/sdk/composer/SpenComposer;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "SimpleComposerView"

    const-string v1, "SCV"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/simple/view/SimpleComposerView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/Fragment;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/view/SimpleComposerView;->mFragment:Landroidx/fragment/app/Fragment;

    new-instance v0, Lcom/samsung/android/sdk/composer/SpenComposer;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/sdk/composer/SpenComposer;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/view/SimpleComposerView;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewState;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewState;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/view/SimpleComposerView;->mComposerViewState:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewState;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewState;->setComposerMode(I)V

    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/simple/view/ScrollZoomManagerAdapter;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/view/SimpleComposerView;->mComposerViewState:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewState;

    invoke-direct {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/simple/view/ScrollZoomManagerAdapter;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewState;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/view/SimpleComposerView;->mScrollZoomManagerAdapter:Lcom/samsung/android/support/senl/nt/composer/main/simple/view/ScrollZoomManagerAdapter;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/composer/main/simple/view/SimpleComposerView;)Lcom/samsung/android/support/senl/cm/base/framework/os/DVFSHelperCompat;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/view/SimpleComposerView;->mDVFSHelperForSpenFling:Lcom/samsung/android/support/senl/cm/base/framework/os/DVFSHelperCompat;

    return-object p0
.end method

.method private iniSpenDvfsInterface(Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/view/SimpleComposerView;->mDVFSHelperForSpenFling:Lcom/samsung/android/support/senl/cm/base/framework/os/DVFSHelperCompat;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/os/DVFSHelperCompat;->release()Z

    :cond_0
    new-instance v0, Lcom/samsung/android/support/senl/cm/base/framework/os/DVFSHelperCompat;

    invoke-direct {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/os/DVFSHelperCompat;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/view/SimpleComposerView;->mDVFSHelperForSpenFling:Lcom/samsung/android/support/senl/cm/base/framework/os/DVFSHelperCompat;

    const/16 v1, 0x5dc

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/support/senl/cm/base/framework/os/DVFSHelperCompat;->initScenarioType(Landroid/content/Context;I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/view/SimpleComposerView;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/simple/view/SimpleComposerView$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/composer/main/simple/view/SimpleComposerView$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/simple/view/SimpleComposerView;)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/composer/SpenComposer;->setDvfsFling(Lcom/samsung/android/sdk/pen/engine/power/SpenDvfsInterface;)V

    return-void
.end method

.method private initBackgroundColor(Landroid/content/Context;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPage(I)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getBackgroundColor()I

    move-result v0

    invoke-virtual {p2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->isBackgroundColorInverted()Z

    move-result v1

    invoke-virtual {p2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageList()Ljava/util/ArrayList;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/BackgroundColorUtil;->hasBackgroundImage(Ljava/util/List;)Z

    move-result p2

    invoke-static {p1, v0, v1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/BackgroundColorUtil;->isComposerViewDarkTheme(Landroid/content/Context;IZZ)Z

    move-result p2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/view/SimpleComposerView;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/util/ContextUtils;->isNightMode(Landroid/content/Context;)Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/composer/SpenComposer;->setDarkModeEnabled(Z)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/view/SimpleComposerView;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/composer/SpenComposer;->setColorTheme(I)V

    return-void
.end method

.method private initBackgroundState(Landroid/content/Context;)V
    .locals 5

    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$color;->composer_container_background:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/util/ContextUtils;->isNightMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/feature/FloatingFeature;->getAntiGreenishColor()I

    move-result v1

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/desktopmode/DesktopModeCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/desktopmode/DesktopModeCompat;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/desktopmode/DesktopModeCompat;->isDexDualModeOnScreen(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/high16 p1, -0x1000000

    const v2, 0x3e99999a    # 0.3f

    invoke-static {v1, p1, v2}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v1

    :cond_1
    const/4 p1, 0x1

    new-array v2, p1, [I

    const v3, 0x10100d4

    const/4 v4, 0x0

    aput v3, v2, v4

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v2, p1, [I

    const v3, 0x101009c

    aput v3, v2, v4

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array p1, p1, [I

    const v2, -0x101009c

    aput v2, p1, v4

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, p1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/view/SimpleComposerView;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private initFBR()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/view/SimpleComposerView;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/SpenComposer;->getNoteWritingViewManager()Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->setFrontBufferRenderingEnabled(Z)Z

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/view/SimpleComposerView;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/composer/SpenComposer;->setFrontBufferRenderingEnabledInEWP(Z)Z

    return-void
.end method

.method private initFeature()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/view/SimpleComposerView;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/SpenComposer;->getTextManager()Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->setHyperTextEnabled(Z)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->setHashTagEnabled(Z)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/view/SimpleComposerView;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    invoke-virtual {v2, v1}, Lcom/samsung/android/sdk/composer/SpenComposer;->setActionLinkEnabled(Z)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;->isUSAModel()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->setDoubleTapSelectionEnabled(Z)V

    return-void
.end method

.method private initFocusState()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/view/SimpleComposerView;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/view/SimpleComposerView;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/view/SimpleComposerView;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setFocusableInTouchMode(Z)V

    return-void
.end method

.method private initViewState(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/simple/view/SimpleComposerView;->initFBR()V

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/simple/view/SimpleComposerView;->iniSpenDvfsInterface(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/simple/view/SimpleComposerView;->initFocusState()V

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/simple/view/SimpleComposerView;->initBackgroundState(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public attachView(Landroid/view/ViewGroup;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/simple/view/SimpleComposerView;->initViewState(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/view/SimpleComposerView;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/view/SimpleComposerView;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/view/SimpleComposerView;->mScrollZoomManagerAdapter:Lcom/samsung/android/support/senl/nt/composer/main/simple/view/ScrollZoomManagerAdapter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/simple/view/ScrollZoomManagerAdapter;->onAttachedView(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public initScrollManager(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/simple/view/SimpleComposerView;->TAG:Ljava/lang/String;

    const-string v1, "initScrollManager#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/view/SimpleComposerView;->mScrollZoomManagerAdapter:Lcom/samsung/android/support/senl/nt/composer/main/simple/view/ScrollZoomManagerAdapter;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/view/SimpleComposerView;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/view/SimpleComposerView;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerViewPresenter;

    invoke-virtual {v0, v1, p1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/simple/view/ScrollZoomManagerAdapter;->init(Lcom/samsung/android/sdk/composer/SpenComposer;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerViewPresenter;)V

    return-void
.end method

.method public initView(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/simple/view/SimpleComposerView;->initFeature()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/view/SimpleComposerView;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/composer/SpenComposer;->setDocument(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)Z

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/view/SimpleComposerView;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/simple/view/SimpleComposerView;->initBackgroundColor(Landroid/content/Context;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/view/SimpleComposerView;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/view/SimpleComposerView;->mComposerViewState:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewState;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewState;->getComposerMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/composer/SpenComposer;->setMode(I)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/simple/view/SimpleComposerView;->initScrollManager(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V

    return-void
.end method

.method public release()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/simple/view/SimpleComposerView;->TAG:Ljava/lang/String;

    const-string v1, "release#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/view/SimpleComposerView;->mScrollZoomManagerAdapter:Lcom/samsung/android/support/senl/nt/composer/main/simple/view/ScrollZoomManagerAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/simple/view/ScrollZoomManagerAdapter;->release()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/view/SimpleComposerView;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/composer/SpenComposer;->setDocument(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)Z

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/view/SimpleComposerView;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/SpenComposer;->close()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/view/SimpleComposerView;->mDVFSHelperForSpenFling:Lcom/samsung/android/support/senl/cm/base/framework/os/DVFSHelperCompat;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/os/DVFSHelperCompat;->release()Z

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/view/SimpleComposerView;->mDVFSHelperForSpenFling:Lcom/samsung/android/support/senl/cm/base/framework/os/DVFSHelperCompat;

    :cond_0
    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/view/SimpleComposerView;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    return-void
.end method

.method public setActionListener(Lcom/samsung/android/sdk/composer/listener/SpenComposerActionListener;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/view/SimpleComposerView;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/SpenComposer;->getListenerManager()Lcom/samsung/android/sdk/composer/listener/SpenComposerListenerManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/composer/listener/SpenComposerListenerManager;->setComposerActionListener(Lcom/samsung/android/sdk/composer/listener/SpenComposerActionListener;)V

    return-void
.end method

.method public setContentPan(FFFI)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/view/SimpleComposerView;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/SpenComposer;->getNoteZoomScroller()Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;->setZoomScale(FFF)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/view/SimpleComposerView;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/SpenComposer;->getNoteZoomScroller()Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;

    move-result-object p1

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, p2, p3}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;->setPan(Landroid/graphics/PointF;)V

    const/4 p1, -0x1

    if-eq p4, p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/view/SimpleComposerView;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    invoke-virtual {p1, p4}, Lcom/samsung/android/sdk/composer/SpenComposer;->requestAlignmentContent(I)V

    :cond_0
    return-void
.end method

.method public setPan(Landroid/graphics/PointF;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/view/SimpleComposerView;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/SpenComposer;->getNoteZoomScroller()Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;->setPan(Landroid/graphics/PointF;)V

    return-void
.end method

.method public setPresenter(Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerViewPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/view/SimpleComposerView;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerViewPresenter;

    invoke-virtual {p1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerViewPresenter;->setView(Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerViewContract$IView;)V

    return-void
.end method

.method public updateByMultiWindowMode()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/view/SimpleComposerView;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/SpenComposer;->requestResetZoomScaleToDefault()V

    return-void
.end method
