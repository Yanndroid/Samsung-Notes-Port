.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;
.super Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScrollerListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager$OnScrollListenerImpl;
    }
.end annotation


# instance fields
.field private mComposerView:Lcom/samsung/android/sdk/composer/SpenComposer;

.field private final mComposerViewState:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewState;

.field private mFlagToShowScrollBar:Z

.field private final mIsPageInfoSupport:Z

.field private final mMainScrollbar:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;

.field private mSubScrollbar:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;

.field private mTwoPageView:Z


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;ZLcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewState;)V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScrollerListener;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;->mFlagToShowScrollBar:Z

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;->mTwoPageView:Z

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;

    invoke-direct {v1, p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;-><init>(Landroid/view/ViewGroup;Z)V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;->mMainScrollbar:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;

    iput-boolean p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;->mIsPageInfoSupport:Z

    if-eqz p2, :cond_0

    new-instance p2, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;

    const/4 v0, 0x1

    invoke-direct {p2, p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;-><init>(Landroid/view/ViewGroup;Z)V

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;->mSubScrollbar:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;

    :cond_0
    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;->mComposerViewState:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewState;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;)Lcom/samsung/android/sdk/composer/SpenComposer;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;->mComposerView:Lcom/samsung/android/sdk/composer/SpenComposer;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewState;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;->mComposerViewState:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewState;

    return-object p0
.end method

.method private canUpdateViewRelatedScroll(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;FF)Z
    .locals 2

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;->isVertical()Z

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;->mComposerViewState:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewState;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewState;->getPanY()F

    move-result p1

    cmpl-float p1, p1, p3

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;->mComposerViewState:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewState;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewState;->getPanX()F

    move-result p1

    cmpl-float p1, p1, p2

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    return v0
.end method

.method private postShowAfterInit(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;F)V
    .locals 1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;->isVertical()Z

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;->getNoteSizeInView(ZF)F

    move-result p2

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;->isVertical()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;->mComposerView:Lcom/samsung/android/sdk/composer/SpenComposer;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;->mComposerView:Lcom/samsung/android/sdk/composer/SpenComposer;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    :goto_0
    int-to-float v0, v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;->updateScrollBar(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;FF)V

    return-void
.end method


# virtual methods
.method public canUpdateViewRelatedScroll(FF)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;->mMainScrollbar:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;->canUpdateViewRelatedScroll(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;FF)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;->mSubScrollbar:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;

    if-eqz v1, :cond_0

    invoke-direct {p0, v1, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;->canUpdateViewRelatedScroll(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;FF)Z

    move-result v0

    :cond_0
    return v0
.end method

.method public checkStateToShowScrollBar(II)V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;->mIsPageInfoSupport:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;->mFlagToShowScrollBar:Z

    return-void

    :cond_0
    if-eq p1, p2, :cond_5

    if-ltz p2, :cond_5

    if-gez p1, :cond_1

    goto :goto_1

    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;->mTwoPageView:Z

    if-eqz v0, :cond_4

    sub-int v0, p2, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-le v0, v1, :cond_2

    goto :goto_0

    :cond_2
    rem-int/lit8 p2, p2, 0x2

    if-ne p2, v1, :cond_4

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :cond_4
    :goto_0
    iput-boolean v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;->mFlagToShowScrollBar:Z

    :cond_5
    :goto_1
    return-void
.end method

.method public convertZoomFromNoteToView(F)F
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;->mComposerView:Lcom/samsung/android/sdk/composer/SpenComposer;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/SpenComposer;->getNoteZoomScroller()Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;->getContentScale()F

    move-result v0

    mul-float/2addr p1, v0

    return p1
.end method

.method public getMainScrollbar()Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;->mMainScrollbar:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;

    return-object v0
.end method

.method public getNoteSizeInView(ZF)F
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;->mComposerView:Lcom/samsung/android/sdk/composer/SpenComposer;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/SpenComposer;->getNoteZoomScroller()Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;->getContentHeight()F

    move-result p1

    :goto_0
    mul-float/2addr p1, p2

    return p1

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;->mComposerView:Lcom/samsung/android/sdk/composer/SpenComposer;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/SpenComposer;->getNoteZoomScroller()Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;->getContentWidth()F

    move-result p1

    goto :goto_0
.end method

.method public hide()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;->mMainScrollbar:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;->hide()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;->mSubScrollbar:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;->hide()V

    :cond_0
    return-void
.end method

.method public init(Lcom/samsung/android/sdk/composer/SpenComposer;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V
    .locals 3

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;->mComposerView:Lcom/samsung/android/sdk/composer/SpenComposer;

    invoke-virtual {p2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageMode()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;

    move-result-object p1

    sget-object p2, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;->LIST:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;->mMainScrollbar:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager$OnScrollListenerImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager$OnScrollListenerImpl;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/a;)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;->mComposerViewState:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewState;

    invoke-virtual {p2, v0, p1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;->init(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar$OnScrollListener;ZLcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewState;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;->mSubScrollbar:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;

    if-eqz p2, :cond_1

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager$OnScrollListenerImpl;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager$OnScrollListenerImpl;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/a;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;->mComposerViewState:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewState;

    invoke-virtual {p2, v0, p1, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;->init(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar$OnScrollListener;ZLcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewState;)V

    :cond_1
    return-void
.end method

.method public isNotInitialized()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;->mComposerView:Lcom/samsung/android/sdk/composer/SpenComposer;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onChangedNoteType(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;->mMainScrollbar:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;->onChangedNoteType(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;->mSubScrollbar:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;->onChangedNoteType(Z)V

    :cond_0
    return-void
.end method

.method public onChangedPageLayout(ZZ)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;->mMainScrollbar:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;->setDirection(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;->mMainScrollbar:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;->isFadingEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;->mMainScrollbar:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;->show(Z)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;->mSubScrollbar:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;

    if-eqz v0, :cond_1

    xor-int/2addr p1, v1

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;->setDirection(Z)V

    :cond_1
    iput-boolean p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;->mTwoPageView:Z

    return-void
.end method

.method public onScrollLockChanged(Z)V
    .locals 0

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;->setScrollingEnabled(Z)V

    return-void
.end method

.method public onZoomLockChanged(Z)V
    .locals 0

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;->setScrollingEnabled(Z)V

    return-void
.end method

.method public postShowAfterInit(F)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;->convertZoomFromNoteToView(F)F

    move-result p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;->mMainScrollbar:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;->postShowAfterInit(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;F)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;->mSubScrollbar:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;

    if-eqz v0, :cond_0

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;->postShowAfterInit(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;F)V

    :cond_0
    return-void
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;->mComposerView:Lcom/samsung/android/sdk/composer/SpenComposer;

    return-void
.end method

.method public setFadingEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;->mMainScrollbar:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;->setFadingEnabled(Z)V

    return-void
.end method

.method public setScrollingEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;->mMainScrollbar:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;->setEnable(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;->mSubScrollbar:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;->setEnable(Z)V

    :cond_0
    return-void
.end method

.method public show()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;->mMainScrollbar:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;->show(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;->mSubScrollbar:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;->show(Z)V

    :cond_0
    return-void
.end method

.method public updateScrollBar(FFF)V
    .locals 1

    invoke-virtual {p0, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;->convertZoomFromNoteToView(F)F

    move-result p3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;->mMainScrollbar:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;->updateScrollBar(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;FFF)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;->mSubScrollbar:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;->updateScrollBar(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;FFF)V

    :cond_0
    return-void
.end method

.method public updateScrollBar(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;FF)V
    .locals 0

    cmpl-float p2, p2, p3

    if-lez p2, :cond_0

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;->show(Z)V

    :cond_0
    return-void
.end method

.method public updateScrollBar(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;FFF)V
    .locals 7

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;->isVertical()Z

    move-result v0

    invoke-virtual {p0, v0, p4}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;->getNoteSizeInView(ZF)F

    move-result v3

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;->isVertical()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;->mComposerView:Lcom/samsung/android/sdk/composer/SpenComposer;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p2

    int-to-float v4, p2

    move-object v1, p0

    move-object v2, p1

    move v5, p3

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;->mComposerView:Lcom/samsung/android/sdk/composer/SpenComposer;

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p3

    int-to-float v4, p3

    move-object v1, p0

    move-object v2, p1

    move v5, p2

    :goto_0
    move v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;->updateScrollBar(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;FFFF)V

    return-void
.end method

.method public updateScrollBar(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;FFFF)V
    .locals 2

    const/4 v0, 0x0

    cmpl-float v1, p3, v0

    if-eqz v1, :cond_0

    const v1, 0x3f866666    # 1.05f

    mul-float/2addr v1, p3

    cmpl-float v1, p2, v1

    if-lez v1, :cond_0

    cmpl-float v0, p4, v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;->mComposerViewState:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewState;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewState;->getLastPageIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;->setPageIndex(I)V

    mul-float/2addr p4, p5

    sub-float/2addr p2, p3

    div-float/2addr p4, p2

    invoke-virtual {p1, p4}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;->updatePosition(F)V

    iget-boolean p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;->mFlagToShowScrollBar:Z

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;->show(Z)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;->mFlagToShowScrollBar:Z

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;->hide()V

    :goto_0
    return-void
.end method
