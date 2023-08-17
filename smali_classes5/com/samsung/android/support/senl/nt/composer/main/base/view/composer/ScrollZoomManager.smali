.class public Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenZoomListenerImpl$ZoomListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager$IListenerManager;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager$IGotoTopPresenter;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager$IComposerPresenter;
    }
.end annotation


# static fields
.field public static final SHORT_CUT_MOVE_SCROLL_UNIT:F = 20.0f

.field public static final SHORT_CUT_ZOOM_RATE_FIT_DEFAULT:F = 1.0f

.field public static final SHORT_CUT_ZOOM_RATE_STEP:F = 0.5f

.field private static final TAG:Ljava/lang/String;

.field public static final ZOOM_VALUE_CHANGE_RATE:F = 0.9f


# instance fields
.field private mBlockToShowView:Z

.field private final mComposerViewState:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewState;

.field private mDisabledZoomLock:Z

.field private mGoToTop:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/GoToTop;

.field private mGotoTopPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager$IGotoTopPresenter;

.field private mIsPendingUpdateScroll:Z

.field private mIsPendingUpdateZoom:Z

.field private mLayoutNotDone:Z

.field private mListenerManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager$IListenerManager;

.field private mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

.field private mParent:Landroid/view/ViewGroup;

.field private mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager$IComposerPresenter;

.field private mPrevContentHeight:F

.field private mPrevViewHeight:F

.field private mScrollBarManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;

.field private mSpenWNoteHelper:Lcom/samsung/android/sdk/composer/document/SpenWNoteHelper;

.field public mView:Lcom/samsung/android/sdk/composer/SpenComposer;

.field private mZoomButtonContainer:Landroid/view/ViewGroup;

.field private mZoomButtonsView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView;

.field private mZoomLockTip:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomLockTip;

.field private mZoomRunnable:Ljava/lang/Runnable;

.field private mZoomView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomView;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "cv$ScrollZoomManager"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewState;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mDisabledZoomLock:Z

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mComposerViewState:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewState;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewState;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mComposerViewState:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewState;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/GoToTop;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mGoToTop:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/GoToTop;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager$IComposerPresenter;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager$IComposerPresenter;

    return-object p0
.end method

.method private checkFirstLayoutDone()Z
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mLayoutNotDone:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    iput-boolean v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mLayoutNotDone:Z

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method public static bridge synthetic d(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mScrollBarManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;FFFZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->updateGoToTopNScrollBar(FFFZ)V

    return-void
.end method

.method public static bridge synthetic f(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->updateZoomView(F)V

    return-void
.end method

.method public static bridge synthetic g(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;FFF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->zoomComposerView(FFF)V

    return-void
.end method

.method public static bridge synthetic h()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private initPendingUpdate()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mIsPendingUpdateScroll:Z

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mIsPendingUpdateZoom:Z

    return-void
.end method

.method private initZoomButtonView()V
    .locals 7

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mDisabledZoomLock:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->TAG:Ljava/lang/String;

    const-string v1, "initZoomButtonView# mDisabledZoomLock true"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/desktopmode/DesktopModeCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/desktopmode/DesktopModeCompat;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/desktopmode/DesktopModeCompat;->isDexMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$layout;->comp_zoom_buttons_layout:I

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mZoomButtonContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/FeatureInfo;->isVSTModel()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$layout;->comp_zoom_widget_layout:I

    goto :goto_0

    :goto_1
    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager$4;

    invoke-direct {v5, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager$4;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;)V

    new-instance v6, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager$5;

    invoke-direct {v6, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager$5;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;)V

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView;-><init>(Landroid/view/ViewGroup;Landroid/view/View;Landroid/content/Context;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mZoomButtonsView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/FeatureInfo;->isVSTModel()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mZoomButtonsView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView;->setFadingEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mZoomButtonsView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView;

    sget v1, Lcom/samsung/android/support/senl/addons/base/utils/DrawableUtils;->TYPE_CIRCLE:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView;->setRippleSelectedType(I)V

    :cond_2
    return-void
.end method

.method private initZoomLockListener()V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mDisabledZoomLock:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mListenerManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager$IListenerManager;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mScrollBarManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager$IListenerManager;->addNoteZoomScrollerListener(Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScrollerListener;)V

    return-void
.end method

.method private initZoomView()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/FeatureInfo;->isVSTModel()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mParent:Landroid/view/ViewGroup;

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$id;->comp_zoom_widget_zoom_view:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomView;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mZoomView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomView;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/composer/SpenComposer;->getNoteZoomScroller()Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;->getZoomScale()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomView;->init(F)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mZoomView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomView;->setFadingEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mZoomView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomView;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomView;->forceShow()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mParent:Landroid/view/ViewGroup;

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$id;->comp_zoom_view:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomView;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mZoomView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mZoomView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomView;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/composer/SpenComposer;->getNoteZoomScroller()Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;->getZoomScale()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomView;->init(F)V

    :goto_0
    return-void
.end method

.method private isNotAvailableState()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mBlockToShowView:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private notifyScrollToPresenter()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->TAG:Ljava/lang/String;

    const-string v1, "notifyScrollToPresenter # mNote is null"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/SpenComposer;->getNoteZoomScroller()Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;->getContentRectInView()Landroid/graphics/RectF;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->getPageIndex(Landroid/graphics/RectF;)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mScrollBarManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;

    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mComposerViewState:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewState;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewState;->getLastPageIndex()I

    move-result v3

    invoke-virtual {v2, v3, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;->checkStateToShowScrollBar(II)V

    :cond_2
    new-instance v2, Landroid/graphics/PointF;

    iget v3, v0, Landroid/graphics/RectF;->left:F

    iget v4, v0, Landroid/graphics/RectF;->top:F

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mSpenWNoteHelper:Lcom/samsung/android/sdk/composer/document/SpenWNoteHelper;

    invoke-static {v3, v4, v0}, Lcom/samsung/android/sdk/composer/util/SpenPagePan;->convertContentPanToPagePan(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Lcom/samsung/android/sdk/composer/document/SpenWNoteHelper;Landroid/graphics/RectF;)Lcom/samsung/android/sdk/composer/util/SpenPagePan;

    move-result-object v0

    if-nez v0, :cond_3

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PagePanInfo;

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PagePanInfo;-><init>(Landroid/graphics/PointF;ILandroid/graphics/PointF;)V

    goto :goto_0

    :cond_3
    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PagePanInfo;->convertToPagePan(Landroid/graphics/PointF;Lcom/samsung/android/sdk/composer/util/SpenPagePan;)Lcom/samsung/android/support/senl/nt/composer/main/base/page/PagePanInfo;

    move-result-object v0

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager$IComposerPresenter;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mComposerViewState:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewState;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewState;->getZoomRatio()F

    move-result v3

    invoke-interface {v2, v0, v3, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager$IComposerPresenter;->onScroll(Lcom/samsung/android/support/senl/nt/composer/main/base/page/PagePanInfo;FI)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mComposerViewState:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewState;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewState;->setLastPageIndex(I)V

    return-void
.end method

.method private updateGoToTop(F)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mComposerViewState:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewState;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewState;->getComposerMode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mGotoTopPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager$IGotoTopPresenter;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager$IGotoTopPresenter;->canUpdate()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mScrollBarManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;->getMainScrollbar()Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;->isVertical()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mGoToTop:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/GoToTop;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/GoToTop;->hide()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mGoToTop:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/GoToTop;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/GoToTop;->show()V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateGoToTopNScrollBar(FFFZ)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->isNotAvailableState()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mScrollBarManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;->isNotInitialized()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->updateGoToTop(F)V

    if-nez p4, :cond_2

    iget-object p4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mScrollBarManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;

    invoke-virtual {p4}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;->getMainScrollbar()Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;

    move-result-object p4

    invoke-virtual {p4}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;->isScrolling()Z

    move-result p4

    if-eqz p4, :cond_2

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mScrollBarManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;->getMainScrollbar()Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mComposerViewState:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewState;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewState;->getLastPageIndex()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;->setPageIndex(I)V

    return-void

    :cond_2
    iget-object p4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mScrollBarManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;

    invoke-virtual {p4, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;->updateScrollBar(FFF)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->updateZoomButtonsView(Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method private updateViewRelatedScroll(FFZ)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mScrollBarManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;->isNotInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p3, :cond_1

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mScrollBarManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;

    invoke-virtual {p3, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;->canUpdateViewRelatedScroll(FF)Z

    move-result p3

    if-nez p3, :cond_1

    return-void

    :cond_1
    iget-boolean p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mIsPendingUpdateScroll:Z

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mIsPendingUpdateScroll:Z

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p3

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager$8;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager$8;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;FF)V

    invoke-virtual {p3, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    :cond_2
    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mComposerViewState:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewState;

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewState;->getZoomRatio()F

    move-result p3

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->updateGoToTopNScrollBar(FFFZ)V

    :cond_3
    :goto_0
    return-void
.end method

.method private updateZoomView(F)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->isNotAvailableState()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mComposerViewState:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewState;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewState;->isOnTextOnlyMode()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mZoomView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomView;->getZoomValue()F

    move-result v0

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mZoomView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomView;->show(F)V

    :cond_2
    return-void
.end method

.method private zoomComposerView(FFF)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mComposerViewState:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewState;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewState;->getZoomRatio()F

    move-result v0

    cmpl-float v0, v0, p3

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mComposerViewState:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewState;

    invoke-virtual {v2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewState;->setZoomRatio(F)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->notifyScrollToPresenter()V

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->updateViewRelatedScroll(FFZ)V

    if-eqz v0, :cond_3

    iget-boolean p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mIsPendingUpdateZoom:Z

    if-eqz p3, :cond_2

    iput-boolean v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mIsPendingUpdateZoom:Z

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p3

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager$7;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager$7;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;)V

    invoke-virtual {p3, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_1

    :cond_2
    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mComposerViewState:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewState;

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewState;->getZoomRatio()F

    move-result p3

    invoke-direct {p0, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->updateZoomView(F)V

    :goto_1
    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mZoomButtonsView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView;

    if-eqz p3, :cond_3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/SpenComposer;->getNoteZoomScroller()Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;->getZoomScale()F

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/composer/SpenComposer;->getNoteZoomScroller()Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;->getMinZoomScale()F

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/composer/SpenComposer;->getNoteZoomScroller()Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;->getMaxZoomScale()F

    move-result v2

    invoke-virtual {p3, v0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView;->updateButtonEnable(FFF)V

    :cond_3
    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mComposerViewState:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewState;

    invoke-virtual {p3, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewState;->setPanXY(FF)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mPrevViewHeight:F

    return-void
.end method

.method private zoomComposerViewOnUiThread(Ljava/lang/Runnable;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mZoomRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mZoomRunnable:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method


# virtual methods
.method public disableZoomLock()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mDisabledZoomLock:Z

    return-void
.end method

.method public getPageIndex(Landroid/graphics/RectF;)I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mComposerViewState:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewState;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewState;->isVertical()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mSpenWNoteHelper:Lcom/samsung/android/sdk/composer/document/SpenWNoteHelper;

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/composer/document/SpenWNoteHelper;->getPageIndexClosedByY(F)I

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mSpenWNoteHelper:Lcom/samsung/android/sdk/composer/document/SpenWNoteHelper;

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/composer/document/SpenWNoteHelper;->getPageIndexClosedByX(F)I

    move-result p1

    return p1
.end method

.method public hideScrollBar()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mScrollBarManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;->hide()V

    :cond_0
    return-void
.end method

.method public init(Lcom/samsung/android/sdk/composer/SpenComposer;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager$IComposerPresenter;Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager$IListenerManager;Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager$IGotoTopPresenter;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager$IComposerPresenter;

    iput-object p4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mListenerManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager$IListenerManager;

    iput-object p5, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mGotoTopPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager$IGotoTopPresenter;

    new-instance p1, Lcom/samsung/android/sdk/composer/document/SpenWNoteHelper;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Lcom/samsung/android/sdk/composer/document/SpenWNoteHelper;-><init>(Z)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mSpenWNoteHelper:Lcom/samsung/android/sdk/composer/document/SpenWNoteHelper;

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {p1, p3}, Lcom/samsung/android/sdk/composer/document/SpenWNoteHelper;->setDocument(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mListenerManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager$IListenerManager;

    invoke-interface {p1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager$IListenerManager;->addZoomListener(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenZoomListenerImpl$ZoomListener;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mScrollBarManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    iget-object p4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {p1, p3, p4}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;->init(Lcom/samsung/android/sdk/composer/SpenComposer;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mGoToTop:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/GoToTop;

    new-instance p3, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager$1;

    invoke-direct {p3, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;)V

    invoke-virtual {p1, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/GoToTop;->init(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->initZoomLockListener()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    new-instance p3, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager$2;

    invoke-direct {p3, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager$2;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;)V

    invoke-virtual {p1, p3}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->initZoomButtonView()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->initZoomView()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mComposerViewState:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewState;

    new-instance p3, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager$3;

    invoke-direct {p3, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager$3;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;)V

    invoke-virtual {p1, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewState;->addStateChangeListener(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewState$StateChangeListener;)V

    iput-boolean p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mLayoutNotDone:Z

    return-void
.end method

.method public moveScroll(ZZ)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/SpenComposer;->getNoteZoomScroller()Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;->getPan()Landroid/graphics/PointF;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/composer/SpenComposer;->getNoteZoomScroller()Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;->getContentRectInView()Landroid/graphics/RectF;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    sget-object v2, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "moveScroll# isVertical = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " / isUpOrLeft = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v2, 0x41a00000    # 20.0f

    if-eqz p1, :cond_3

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result p1

    div-float/2addr p1, v2

    if-eqz p2, :cond_2

    iget p2, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr p2, p1

    goto :goto_0

    :cond_2
    iget p2, v0, Landroid/graphics/PointF;->y:F

    add-float/2addr p2, p1

    :goto_0
    iput p2, v0, Landroid/graphics/PointF;->y:F

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result p1

    div-float/2addr p1, v2

    if-eqz p2, :cond_4

    iget p2, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr p2, p1

    goto :goto_1

    :cond_4
    iget p2, v0, Landroid/graphics/PointF;->x:F

    add-float/2addr p2, p1

    :goto_1
    iput p2, v0, Landroid/graphics/PointF;->x:F

    :goto_2
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    iget p2, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, p2, v0}, Lcom/samsung/android/sdk/composer/SpenComposer;->setPan(FF)V

    return-void
.end method

.method public onAttachedView(Landroid/view/ViewGroup;)V
    .locals 3

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/desktopmode/DesktopModeCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/desktopmode/DesktopModeCompat;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/desktopmode/DesktopModeCompat;->isDexMode(Landroid/content/Context;)Z

    move-result v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mComposerViewState:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewState;

    invoke-direct {v1, p1, v0, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;-><init>(Landroid/view/ViewGroup;ZLcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewState;)V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mScrollBarManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/FeatureInfo;->isVSTModel()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;->setFadingEnabled(Z)V

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/GoToTop;

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$id;->comp_go_to_top_btn:I

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/GoToTop;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mGoToTop:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/GoToTop;

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomLockTip;

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$id;->comp_zoom_lock_tip:I

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomLockTip;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mZoomLockTip:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomLockTip;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mParent:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mLayoutNotDone:Z

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$id;->zoom_button_container:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mZoomButtonContainer:Landroid/view/ViewGroup;

    return-void
.end method

.method public onChangedNoteType(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mScrollBarManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;->onChangedNoteType(Z)V

    return-void
.end method

.method public onChangedPageLayout()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mGoToTop:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/GoToTop;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mComposerViewState:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewState;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewState;->isVertical()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/GoToTop;->setEnable(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mScrollBarManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mComposerViewState:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewState;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewState;->isVertical()Z

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mComposerViewState:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewState;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewState;->isTwoPageView()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;->onChangedPageLayout(ZZ)V

    return-void
.end method

.method public onClickZoomButton(Z)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/SpenComposer;->getNoteZoomScroller()Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;->getContentRectInView()Landroid/graphics/RectF;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/SpenComposer;->getNoteZoomScroller()Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;->getZoomScale()F

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/composer/SpenComposer;->getNoteZoomScroller()Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;

    move-result-object v1

    const v2, 0x3f666666    # 0.9f

    if-eqz p1, :cond_2

    div-float/2addr v0, v2

    goto :goto_0

    :cond_2
    mul-float/2addr v0, v2

    :goto_0
    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;->setZoomScale(F)V

    return-void
.end method

.method public onOrientationChanged(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->initPendingUpdate()V

    :cond_0
    return-void
.end method

.method public onTextScaleChanged(F)V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTextScaleChanged# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mZoomView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomView;->showTextScale(F)V

    :cond_0
    return-void
.end method

.method public onZoom(FFFFF)V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onZoom# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p3, " : "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mComposerViewState:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewState;

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewState;->getPanX()F

    move-result p3

    cmpl-float p3, p3, p1

    if-nez p3, :cond_1

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mComposerViewState:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewState;

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewState;->getPanY()F

    move-result p3

    cmpl-float p3, p3, p2

    if-nez p3, :cond_1

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mComposerViewState:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewState;

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewState;->getZoomRatio()F

    move-result p3

    cmpl-float p3, p3, p5

    if-nez p3, :cond_1

    iget p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mPrevViewHeight:F

    iget-object p4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    invoke-virtual {p4}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p4

    int-to-float p4, p4

    cmpl-float p3, p3, p4

    if-nez p3, :cond_1

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    invoke-virtual {p3}, Lcom/samsung/android/sdk/composer/SpenComposer;->getNoteZoomScroller()Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;

    move-result-object p3

    invoke-virtual {p3}, Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;->getContentHeight()F

    move-result p3

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->checkFirstLayoutDone()Z

    move-result p4

    if-nez p4, :cond_0

    iget p4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mPrevContentHeight:F

    cmpl-float p4, p4, p3

    if-nez p4, :cond_0

    return-void

    :cond_0
    iput p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mPrevContentHeight:F

    :cond_1
    new-instance p3, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager$6;

    invoke-direct {p3, p0, p1, p2, p5}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager$6;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;FFF)V

    invoke-direct {p0, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->zoomComposerViewOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public pageScroll(Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mComposerViewState:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewState;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewState;->isVertical()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/SpenComposer;->getNoteZoomScroller()Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;->getPan()Landroid/graphics/PointF;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/composer/SpenComposer;->getNoteZoomScroller()Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;->getContentRectInView()Landroid/graphics/RectF;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    if-eqz p1, :cond_2

    iget p1, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, v1

    goto :goto_0

    :cond_2
    iget p1, v0, Landroid/graphics/PointF;->y:F

    add-float/2addr p1, v1

    :goto_0
    iput p1, v0, Landroid/graphics/PointF;->y:F

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v1, v0}, Lcom/samsung/android/sdk/composer/SpenComposer;->setPan(FF)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mComposerViewState:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewState;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewState;->getLastPageIndex()I

    move-result v0

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mComposerViewState:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewState;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewState;->isTwoPageView()Z

    move-result p1

    if-eqz p1, :cond_4

    add-int/lit8 v0, v0, -0x2

    goto :goto_1

    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_5
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mComposerViewState:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewState;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewState;->isTwoPageView()Z

    move-result p1

    if-eqz p1, :cond_6

    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_6
    add-int/lit8 v0, v0, 0x1

    :goto_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/composer/SpenComposer;->goToPage(I)V

    :goto_2
    return-void
.end method

.method public pageZoom(Z)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/SpenComposer;->getGestureController()Lcom/samsung/android/sdk/pen/engine/SpenIGestureController;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/sdk/pen/engine/SpenIGestureController;->isOnFingerScrollAndScaleLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->TAG:Ljava/lang/String;

    const-string v0, "pageZoom# isOnFingerScrollAndScaleLocked true"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/SpenComposer;->getNoteZoomScroller()Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;->getZoomScale()F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz p1, :cond_2

    cmpg-float v3, v0, v2

    if-gez v3, :cond_2

    add-float v3, v0, v1

    cmpl-float v3, v3, v2

    if-lez v3, :cond_2

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    add-float v2, v0, v1

    goto :goto_0

    :cond_3
    sub-float v2, v0, v1

    :goto_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/SpenComposer;->getNoteZoomScroller()Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;->setZoomScale(F)V

    return-void
.end method

.method public release()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mScrollBarManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mListenerManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager$IListenerManager;

    invoke-interface {v1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager$IListenerManager;->removeNoteZoomScrollerListener(Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScrollerListener;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mScrollBarManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;->release()V

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->setBlockToShowDecorView(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mSpenWNoteHelper:Lcom/samsung/android/sdk/composer/document/SpenWNoteHelper;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/document/SpenWNoteHelper;->close()V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mSpenWNoteHelper:Lcom/samsung/android/sdk/composer/document/SpenWNoteHelper;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mZoomButtonsView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView;->release()V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mZoomRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    :cond_3
    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mParent:Landroid/view/ViewGroup;

    return-void
.end method

.method public setBlockShowZoomButtonsView(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mZoomButtonsView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView;->setBlockShow(IZ)V

    :cond_0
    return-void
.end method

.method public setBlockToShowDecorView(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mBlockToShowView:Z

    return-void
.end method

.method public setDelayFlagToUpdateDecorView(Z)V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDelayFlagToUpdateDecorView "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->initPendingUpdate()V

    :cond_0
    return-void
.end method

.method public setOnGenericMotionListener(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/desktopmode/DesktopModeCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/desktopmode/DesktopModeCompat;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/desktopmode/DesktopModeCompat;->isDexMode(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager$9;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager$9;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setOnGenericMotionListener(Landroid/view/View$OnGenericMotionListener;)V

    return-void
.end method

.method public setScrollingEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mScrollBarManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;->setScrollingEnabled(Z)V

    return-void
.end method

.method public setTextOnlyEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mZoomView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomView;->hideTextScaleImage()V

    :cond_1
    return-void
.end method

.method public showLockCanvasToolTip()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mZoomLockTip:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomLockTip;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomLockTip;->show()V

    return-void
.end method

.method public showScrollBar()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mScrollBarManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;->show()V

    :cond_0
    return-void
.end method

.method public showScrollBarForTextOnlyMode()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mScrollBarManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mGoToTop:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/GoToTop;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/GoToTop;->setEnable(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mScrollBarManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;->onChangedPageLayout(ZZ)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mScrollBarManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;->show()V

    :cond_0
    return-void
.end method

.method public updateZoomButtonsView(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mZoomButtonsView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView;->setVisible(Z)V

    :cond_0
    return-void
.end method
