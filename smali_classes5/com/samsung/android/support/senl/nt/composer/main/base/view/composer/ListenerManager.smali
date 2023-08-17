.class public Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ListenerManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IViewListenerManager;


# instance fields
.field private final mAnimationViewManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/AnimationViewManager;

.field public mView:Lcom/samsung/android/sdk/composer/SpenComposer;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/composer/SpenComposer;Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/AnimationViewManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ListenerManager;->mAnimationViewManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/AnimationViewManager;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ListenerManager;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    return-void
.end method


# virtual methods
.method public release()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ListenerManager;->setSoftInputListener(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SoftInputListenerImpl;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ListenerManager;->setCursorChangedListener(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/CursorChangedListenerImpl;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ListenerManager;->setPageActionListener(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/PageActionListenerImpl;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ListenerManager;->setThumbnailChangedListener(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ThumbnailChangeListenerImpl;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ListenerManager;->setContextMenuListener(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ContextMenuListenerImpl;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ListenerManager;->setActionListener(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ActionListenerImpl;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ListenerManager;->setPreTouchListener(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenPreTouchListenerImpl;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ListenerManager;->setZoomListener(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenZoomListenerImpl;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ListenerManager;->setDialogActionListener(Lcom/samsung/android/sdk/composer/listener/SpenDialogActionListener;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ListenerManager;->setObjectSelectListener(Lcom/samsung/android/sdk/composer/listener/SpenObjectSelectListener;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ListenerManager;->setSpenTextManagerActionListener(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenTextManagerActionListenerImpl;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ListenerManager;->setControlObjectListener(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ControlObjectListenerImpl;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ListenerManager;->setObjectSpanControlObjectListener(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ControlObjectSpanListenerImpl;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ListenerManager;->setSpenConvertToTextListener(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenConvertToTextListenerImpl;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ListenerManager;->setSpenMathListener(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenMathListenerImpl;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ListenerManager;->setSpenAnalyticsListener(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenAnalyticsListenerImpl;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ListenerManager;->setSpenAlignmentListener(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenAlignmentListenerImpl;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ListenerManager;->setSpenSTTListener(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenSTTListenerImpl;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ListenerManager;->setOnDragListener(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ListenerManager;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ListenerManager;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ListenerManager;->setNoteZoomScrollerListener(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenNoteDeltaZoomAdapterImpl;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ListenerManager;->setSpenGestureControllerListener(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenGestureControllerImpl;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ListenerManager;->setPageLayoutListener(Lcom/samsung/android/sdk/composer/listener/SpenPageLayoutListener;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ListenerManager;->setStrokeShapeListener(Lcom/samsung/android/sdk/composer/listener/SpenStrokeShapeListener;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ListenerManager;->setTextEventListener(Lcom/samsung/android/sdk/pen/text/SpenTextLimitListener;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ListenerManager;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ListenerManager;->mAnimationViewManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/AnimationViewManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/AnimationViewManager;->release()V

    return-void
.end method

.method public setActionListener(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ActionListenerImpl;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ListenerManager;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/SpenComposerActionListenerMiddle;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ListenerManager;->mAnimationViewManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/AnimationViewManager;

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/SpenComposerActionListenerMiddle;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/AnimationViewManager;)V

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/SpenComposerActionListenerMiddle;->setListenerImpl(Lcom/samsung/android/sdk/composer/listener/SpenComposerActionListener;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ListenerManager;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/SpenComposer;->getListenerManager()Lcom/samsung/android/sdk/composer/listener/SpenComposerListenerManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/composer/listener/SpenComposerListenerManager;->setComposerActionListener(Lcom/samsung/android/sdk/composer/listener/SpenComposerActionListener;)V

    :cond_0
    return-void
.end method

.method public setContextMenuListener(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ContextMenuListenerImpl;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ListenerManager;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/SpenComposer;->getListenerManager()Lcom/samsung/android/sdk/composer/listener/SpenComposerListenerManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/composer/listener/SpenComposerListenerManager;->setContextMenuListener(Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenuListener;)V

    :cond_0
    return-void
.end method

.method public setControlObjectListener(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ControlObjectListenerImpl;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ListenerManager;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/SpenComposer;->getControlObjectManager()Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;->setObjectListener(Lcom/samsung/android/sdk/pen/control/SpenControlObjectListener;)V

    :cond_0
    return-void
.end method

.method public setCursorChangedListener(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/CursorChangedListenerImpl;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ListenerManager;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/SpenComposer;->getTextManager()Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->setCursorChangedListener(Lcom/samsung/android/sdk/pen/text/SpenCursorChangedListener;)V

    :cond_0
    return-void
.end method

.method public setDialogActionListener(Lcom/samsung/android/sdk/composer/listener/SpenDialogActionListener;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ListenerManager;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/SpenComposer;->getListenerManager()Lcom/samsung/android/sdk/composer/listener/SpenComposerListenerManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/composer/listener/SpenComposerListenerManager;->setDialogActionListener(Lcom/samsung/android/sdk/composer/listener/SpenDialogActionListener;)V

    :cond_0
    return-void
.end method

.method public setNoteWritingToastListener(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenToastActionListenerImpl;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ListenerManager;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/SpenComposer;->getNoteWritingViewManager()Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->setToastActionListener(Lcom/samsung/android/sdk/pen/engine/SpenToastActionListener;)V

    :cond_0
    return-void
.end method

.method public setNoteZoomScrollerListener(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenNoteDeltaZoomAdapterImpl;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ListenerManager;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/SpenComposer;->getNoteZoomScroller()Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;->setNoteZoomScrollerListener(Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScrollerListener;)V

    :cond_0
    return-void
.end method

.method public setObjectSelectListener(Lcom/samsung/android/sdk/composer/listener/SpenObjectSelectListener;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ListenerManager;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/SpenComposer;->getListenerManager()Lcom/samsung/android/sdk/composer/listener/SpenComposerListenerManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/composer/listener/SpenComposerListenerManager;->setObjectSelectListener(Lcom/samsung/android/sdk/composer/listener/SpenObjectSelectListener;)V

    :cond_0
    return-void
.end method

.method public setObjectSpanControlObjectListener(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ControlObjectSpanListenerImpl;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ListenerManager;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/SpenComposer;->getTextManager()Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->setControlObjectListener(Lcom/samsung/android/sdk/pen/control/SpenControlObjectListener;)V

    :cond_0
    return-void
.end method

.method public setOnDragListener(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ListenerManager;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    :cond_0
    return-void
.end method

.method public setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ListenerManager;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    :cond_0
    return-void
.end method

.method public setOnKeyListener(Landroid/view/View$OnKeyListener;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ListenerManager;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    :cond_0
    return-void
.end method

.method public setPageActionListener(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/PageActionListenerImpl;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ListenerManager;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/SpenComposer;->getListenerManager()Lcom/samsung/android/sdk/composer/listener/SpenComposerListenerManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/composer/listener/SpenComposerListenerManager;->setPageActionListener(Lcom/samsung/android/sdk/composer/listener/SpenPageActionListener;)V

    :cond_0
    return-void
.end method

.method public setPageLayoutListener(Lcom/samsung/android/sdk/composer/listener/SpenPageLayoutListener;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ListenerManager;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/SpenComposer;->getListenerManager()Lcom/samsung/android/sdk/composer/listener/SpenComposerListenerManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/composer/listener/SpenComposerListenerManager;->setPageLayoutListener(Lcom/samsung/android/sdk/composer/listener/SpenPageLayoutListener;)V

    :cond_0
    return-void
.end method

.method public setPreTouchListener(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenPreTouchListenerImpl;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ListenerManager;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/SpenComposer;->getListenerManager()Lcom/samsung/android/sdk/composer/listener/SpenComposerListenerManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/composer/listener/SpenComposerListenerManager;->setPreTouchListener(Lcom/samsung/android/sdk/pen/engine/SpenTouchListener;)V

    :cond_0
    return-void
.end method

.method public setSoftInputListener(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SoftInputListenerImpl;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ListenerManager;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/SpenComposer;->getTextManager()Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->setSoftInputListener(Lcom/samsung/android/sdk/pen/text/SpenSoftInputListener;)V

    :cond_0
    return-void
.end method

.method public setSpenAlignmentListener(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenAlignmentListenerImpl;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ListenerManager;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/SpenComposer;->getAlignmentManager()Lcom/samsung/android/sdk/pen/recoguifeature/alignment/SPenAlignmentManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/recoguifeature/alignment/SPenAlignmentManager;->setListener(Lcom/samsung/android/sdk/pen/recoguifeature/alignment/SPenAlignmentListener;)V

    :cond_0
    return-void
.end method

.method public setSpenAnalyticsListener(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenAnalyticsListenerImpl;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ListenerManager;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/SpenComposer;->getListenerManager()Lcom/samsung/android/sdk/composer/listener/SpenComposerListenerManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/composer/listener/SpenComposerListenerManager;->setLoggingListener(Lcom/samsung/android/sdk/composer/listener/SpenAnalyticsListener;)V

    :cond_0
    return-void
.end method

.method public setSpenConvertToTextListener(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenConvertToTextListenerImpl;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ListenerManager;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/SpenComposer;->getConvertToTextManager()Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;->setRecognitionListener(Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextListener;)V

    :cond_0
    return-void
.end method

.method public setSpenGestureControllerListener(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenGestureControllerImpl;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ListenerManager;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/SpenComposer;->getGestureController()Lcom/samsung/android/sdk/pen/engine/SpenIGestureController;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/pen/engine/SpenIGestureController;->setListener(Lcom/samsung/android/sdk/pen/engine/SpenIGestureController$Listener;)V

    :cond_0
    return-void
.end method

.method public setSpenMathListener(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenMathListenerImpl;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ListenerManager;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/SpenComposer;->isMathEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ListenerManager;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/SpenComposer;->getMathManager()Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathManager;->setListener(Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathListener;)V

    :cond_0
    return-void
.end method

.method public setSpenSTTListener(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenSTTListenerImpl;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ListenerManager;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/SpenComposer;->getSTTManager()Lcom/samsung/android/sdk/pen/recoguifeature/spentotext/SPenSTTManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/recoguifeature/spentotext/SPenSTTManager;->setListener(Lcom/samsung/android/sdk/pen/recoguifeature/spentotext/SPenSTTListener;)V

    :cond_0
    return-void
.end method

.method public setSpenTextManagerActionListener(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenTextManagerActionListenerImpl;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ListenerManager;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/SpenComposer;->getTextManager()Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->setActionListener(Lcom/samsung/android/sdk/pen/widget/listener/SpenTextManagerActionListener;)V

    :cond_0
    return-void
.end method

.method public setStrokeShapeListener(Lcom/samsung/android/sdk/composer/listener/SpenStrokeShapeListener;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ListenerManager;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/SpenComposer;->getListenerManager()Lcom/samsung/android/sdk/composer/listener/SpenComposerListenerManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/composer/listener/SpenComposerListenerManager;->setStrokeShapeListener(Lcom/samsung/android/sdk/composer/listener/SpenStrokeShapeListener;)V

    :cond_0
    return-void
.end method

.method public setTextEventListener(Lcom/samsung/android/sdk/pen/text/SpenTextLimitListener;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ListenerManager;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/SpenComposer;->getTextManager()Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->setTextLimitListener(Lcom/samsung/android/sdk/pen/text/SpenTextLimitListener;)V

    :cond_0
    return-void
.end method

.method public setThumbnailChangedListener(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ThumbnailChangeListenerImpl;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ListenerManager;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/SpenComposer;->getListenerManager()Lcom/samsung/android/sdk/composer/listener/SpenComposerListenerManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/composer/listener/SpenComposerListenerManager;->setThumbnailChangeListener(Lcom/samsung/android/sdk/composer/listener/SpenThumbnailChangeListener;)V

    :cond_0
    return-void
.end method

.method public setZoomListener(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenZoomListenerImpl;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ListenerManager;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/SpenComposer;->getNoteZoomScroller()Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;->setZoomListener(Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenZoomListener;)V

    :cond_0
    return-void
.end method
