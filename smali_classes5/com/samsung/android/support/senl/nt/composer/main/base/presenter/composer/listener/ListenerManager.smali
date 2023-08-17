.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager$ViewGetter;
    }
.end annotation


# instance fields
.field private mActionListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ActionListenerImpl;

.field private mContextMenuListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ContextMenuListenerImpl;

.field private mControlObjectListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ControlObjectListenerImpl;

.field private mControlObjectSpanListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ControlObjectSpanListenerImpl;

.field private mCursorChangedListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/CursorChangedListenerImpl;

.field private mDefaultPreTouchListenerImpl:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/DefaultPreTouchListenerImpl;

.field private mDialogActionListener:Lcom/samsung/android/sdk/composer/listener/SpenDialogActionListener;

.field private mHistoryEventListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/HistoryEventListenerImpl;

.field private mInitialized:Z

.field private mNoteZoomScrollerListenerManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenNoteDeltaZoomAdapterImpl;

.field private mObjectSelectListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenObjectSelectListenerImpl;

.field private mOnDragListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;

.field private mOnFocusChangeListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnFocusChangeListenerImpl;

.field private mOnKeyListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnKeyListenerImpl;

.field private mPageActionListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/PageActionListenerImpl;

.field private final mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;

.field private mSoftInputListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SoftInputListenerImpl;

.field private mSpenAlignmentListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenAlignmentListenerImpl;

.field private mSpenAnalyticsListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenAnalyticsListenerImpl;

.field private mSpenConvertToTextListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenConvertToTextListenerImpl;

.field private mSpenMathListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenMathListenerImpl;

.field private mSpenObjectEventListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenObjectEventListenerImpl;

.field private mSpenPageEventListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenPageEventListener;

.field private mSpenPageLayoutListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenPageLayoutListenerImpl;

.field private mSpenPreTouchListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenPreTouchListenerImpl;

.field private mSpenSTTListenerImpl:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenSTTListenerImpl;

.field private mSpenStrokeShapeListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenStrokeShapeListenerImpl;

.field private mSpenTextManagerActionListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenTextManagerActionListenerImpl;

.field private mSpenToastActionListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenToastActionListenerImpl;

.field private mSpenVoiceDataEventListenerImpl:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenVoiceDataEventListenerImpl;

.field private mSpenZoomListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenZoomListenerImpl;

.field private mTextEventListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/TextEventListenerImpl;

.field private mThumbnailChangeListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ThumbnailChangeListenerImpl;

.field private final mViewGetter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager$ViewGetter;

.field private mVoiceRecordingListenerManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/VoiceRecordingListenerManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager$ViewGetter;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mInitialized:Z

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mViewGetter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager$ViewGetter;

    return-void
.end method

.method private isInvalidWithView()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mInitialized:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mViewGetter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager$ViewGetter;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager$ViewGetter;->getView()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IView;

    move-result-object v0

    if-nez v0, :cond_0

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


# virtual methods
.method public addFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mInitialized:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mOnFocusChangeListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnFocusChangeListenerImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnFocusChangeListenerImpl;->addListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method public addHistoryEventBridgeListener(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/HistoryEventListenerImpl$HistoryEventBridgeListener;)V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mInitialized:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mHistoryEventListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/HistoryEventListenerImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/HistoryEventListenerImpl;->addBridgeListener(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/HistoryEventListenerImpl$HistoryEventBridgeListener;)V

    return-void
.end method

.method public addKeyListener(Landroid/view/View$OnKeyListener;)V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mInitialized:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mOnKeyListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnKeyListenerImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnKeyListenerImpl;->addListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method

.method public addNoteZoomScrollerListener(Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScrollerListener;)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->isInvalidWithView()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mNoteZoomScrollerListenerManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenNoteDeltaZoomAdapterImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenNoteDeltaZoomAdapterImpl;->addZoomScrollerListener(Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScrollerListener;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mNoteZoomScrollerListenerManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenNoteDeltaZoomAdapterImpl;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenNoteDeltaZoomAdapterImpl;->isEnable()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mViewGetter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager$ViewGetter;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager$ViewGetter;->getView()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IView;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mViewGetter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager$ViewGetter;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager$ViewGetter;->getView()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IView;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IView;->getListenerManager()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IViewListenerManager;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mNoteZoomScrollerListenerManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenNoteDeltaZoomAdapterImpl;

    invoke-interface {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IViewListenerManager;->setNoteZoomScrollerListener(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenNoteDeltaZoomAdapterImpl;)V

    :cond_1
    return-void
.end method

.method public addPreTouchListener(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenPreTouchListenerImpl$PreTouchListener;)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->isInvalidWithView()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mSpenPreTouchListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenPreTouchListenerImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenPreTouchListenerImpl;->addPreTouchListener(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenPreTouchListenerImpl$PreTouchListener;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mSpenPreTouchListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenPreTouchListenerImpl;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenPreTouchListenerImpl;->isEnable()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mViewGetter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager$ViewGetter;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager$ViewGetter;->getView()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IView;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mViewGetter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager$ViewGetter;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager$ViewGetter;->getView()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IView;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IView;->getListenerManager()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IViewListenerManager;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mSpenPreTouchListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenPreTouchListenerImpl;

    invoke-interface {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IViewListenerManager;->setPreTouchListener(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenPreTouchListenerImpl;)V

    :cond_1
    return-void
.end method

.method public addSpenObjectEventListener(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$ObjectEventListener;)V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mInitialized:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mSpenObjectEventListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenObjectEventListenerImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenObjectEventListenerImpl;->addSpenObjectEventListener(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$ObjectEventListener;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mSpenObjectEventListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenObjectEventListenerImpl;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenObjectEventListenerImpl;->isEnable()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;->getDoc()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mSpenObjectEventListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenObjectEventListenerImpl;

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->registerObjectEventListener(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$ObjectEventListener;)V

    :cond_1
    return-void
.end method

.method public addSpenObjectSelectListener(Lcom/samsung/android/sdk/composer/listener/SpenObjectSelectListener;)V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mInitialized:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mObjectSelectListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenObjectSelectListenerImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenObjectSelectListenerImpl;->addBridgeListener(Lcom/samsung/android/sdk/composer/listener/SpenObjectSelectListener;)V

    return-void
.end method

.method public addSpenSTTListener(Lcom/samsung/android/sdk/pen/recoguifeature/spentotext/SPenSTTListener;)V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mInitialized:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mSpenSTTListenerImpl:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenSTTListenerImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenSTTListenerImpl;->addBridgeListener(Lcom/samsung/android/sdk/pen/recoguifeature/spentotext/SPenSTTListener;)V

    return-void
.end method

.method public addVoiceDataEventListener(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$VoiceDataEventListener;)V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mInitialized:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mSpenVoiceDataEventListenerImpl:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenVoiceDataEventListenerImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenVoiceDataEventListenerImpl;->addVoiceDataListener(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$VoiceDataEventListener;)V

    return-void
.end method

.method public addZoomListener(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenZoomListenerImpl$ZoomListener;)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->isInvalidWithView()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mSpenZoomListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenZoomListenerImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenZoomListenerImpl;->addZoomListener(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenZoomListenerImpl$ZoomListener;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mSpenZoomListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenZoomListenerImpl;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenZoomListenerImpl;->isEnable()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mViewGetter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager$ViewGetter;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager$ViewGetter;->getView()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IView;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mViewGetter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager$ViewGetter;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager$ViewGetter;->getView()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IView;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IView;->getListenerManager()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IViewListenerManager;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mSpenZoomListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenZoomListenerImpl;

    invoke-interface {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IViewListenerManager;->setZoomListener(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenZoomListenerImpl;)V

    :cond_1
    return-void
.end method

.method public consumeDelayedCursorChangeEvent()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mCursorChangedListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/CursorChangedListenerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/CursorChangedListenerImpl;->consumeAllMessages()V

    return-void
.end method

.method public createActionListener(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IView;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ContextMenuListenerImpl;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ActionListenerImpl;
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ActionListenerImpl;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ActionListenerImpl;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IView;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ContextMenuListenerImpl;)V

    return-object v0
.end method

.method public createControlObjectListenerImpl(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/DragAndDropController;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ControlObjectListenerImpl;
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ControlObjectListenerImpl;

    invoke-direct {v0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ControlObjectListenerImpl;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/DragAndDropController;)V

    return-object v0
.end method

.method public createObjectSelectListener(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SoftInputManager;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/TextStateHandler;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenObjectSelectListenerImpl;
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenObjectSelectListenerImpl;

    invoke-direct {v0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenObjectSelectListenerImpl;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SoftInputManager;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/TextStateHandler;)V

    return-object v0
.end method

.method public createOnDragListenerImpl(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;)V

    return-object v0
.end method

.method public createSpenConvertToTextListener(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ProgressController;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SoftInputManager;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenConvertToTextListenerImpl;
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenConvertToTextListenerImpl;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenConvertToTextListenerImpl;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ProgressController;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SoftInputManager;)V

    return-object v0
.end method

.method public getContextMenuListener()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ContextMenuListenerImpl;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mContextMenuListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ContextMenuListenerImpl;

    return-object v0
.end method

.method public getPageActionListener()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/PageActionListenerImpl;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mPageActionListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/PageActionListenerImpl;

    return-object v0
.end method

.method public init(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;)V
    .locals 10

    new-instance v9, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/DragAndDropController;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;->getView()Landroid/view/View;

    move-result-object v2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;->getObjectManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    move-result-object v3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;->getPageManager()Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;

    move-result-object v4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;->getComposerModel()Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getModeManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;

    move-result-object v5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;->getComposerControllerManager()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerManager;->getScrollController()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ScrollController;

    move-result-object v6

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v8

    move-object v0, v9

    move-object v7, p1

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/DragAndDropController;-><init>(Landroid/app/Activity;Landroid/view/View;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ScrollController;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mViewGetter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager$ViewGetter;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager$ViewGetter;->getView()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/TextStateHandler;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;

    invoke-interface {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;->getTextManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;->getQuickSaveTimer()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/QuickSaveTimerController;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;

    invoke-interface {v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;->getHandoffManager()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/handoff/HandoffManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/handoff/HandoffManager;->getHandler()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/handoff/HandoffHandler;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/TextStateHandler;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/QuickSaveTimerController;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/handoff/HandoffHandler;)V

    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/CursorChangedListenerImpl;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;->getQuickSaveTimer()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/QuickSaveTimerController;

    move-result-object v4

    invoke-direct {v2, v3, v4, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/CursorChangedListenerImpl;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/QuickSaveTimerController;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/TextStateHandler;)V

    iput-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mCursorChangedListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/CursorChangedListenerImpl;

    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/PageActionListenerImpl;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;->getProgressController()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ProgressController;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/PageActionListenerImpl;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ProgressController;)V

    iput-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mPageActionListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/PageActionListenerImpl;

    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SoftInputListenerImpl;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;->getSoftInputManager()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SoftInputManager;

    move-result-object v4

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;->getClipboardController()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SoftInputListenerImpl;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SoftInputManager;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController;)V

    iput-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mSoftInputListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SoftInputListenerImpl;

    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ThumbnailChangeListenerImpl;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;

    invoke-direct {v2, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ThumbnailChangeListenerImpl;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;)V

    iput-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mThumbnailChangeListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ThumbnailChangeListenerImpl;

    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ContextMenuListenerImpl;

    invoke-direct {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ContextMenuListenerImpl;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mContextMenuListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ContextMenuListenerImpl;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;

    invoke-virtual {p0, v0, v3, p1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->createActionListener(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IView;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ContextMenuListenerImpl;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ActionListenerImpl;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mActionListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ActionListenerImpl;

    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenDialogActionListenerImpl;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;

    invoke-direct {v2, v3, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenDialogActionListenerImpl;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;)V

    iput-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mDialogActionListener:Lcom/samsung/android/sdk/composer/listener/SpenDialogActionListener;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;->getSoftInputManager()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SoftInputManager;

    move-result-object v3

    invoke-virtual {p0, v2, v3, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->createObjectSelectListener(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SoftInputManager;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/TextStateHandler;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenObjectSelectListenerImpl;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mObjectSelectListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenObjectSelectListenerImpl;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenTextManagerActionListenerImpl;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;

    invoke-direct {v1, v2, p1, v9}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenTextManagerActionListenerImpl;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/DragAndDropController;)V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mSpenTextManagerActionListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenTextManagerActionListenerImpl;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;

    invoke-virtual {p0, v1, p1, v9}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->createControlObjectListenerImpl(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/DragAndDropController;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ControlObjectListenerImpl;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mControlObjectListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ControlObjectListenerImpl;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ControlObjectSpanListenerImpl;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;

    invoke-direct {v1, v2, p1, v9}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ControlObjectSpanListenerImpl;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/DragAndDropController;)V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mControlObjectSpanListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ControlObjectSpanListenerImpl;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;->getTaskController()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;->getProgressController()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ProgressController;

    move-result-object v3

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;->getSoftInputManager()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SoftInputManager;

    move-result-object v4

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->createSpenConvertToTextListener(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ProgressController;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SoftInputManager;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenConvertToTextListenerImpl;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mSpenConvertToTextListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenConvertToTextListenerImpl;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenMathListenerImpl;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;->getProgressController()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ProgressController;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenMathListenerImpl;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ProgressController;)V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mSpenMathListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenMathListenerImpl;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenAlignmentListenerImpl;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;->getProgressController()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ProgressController;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenAlignmentListenerImpl;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ProgressController;)V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mSpenAlignmentListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenAlignmentListenerImpl;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenSTTListenerImpl;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenSTTListenerImpl;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mSpenSTTListenerImpl:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenSTTListenerImpl;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;

    invoke-virtual {p0, v1, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->createOnDragListenerImpl(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mOnDragListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenPreTouchListenerImpl;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;

    invoke-interface {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;->getComposerModel()Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getCoeditAdapter()Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenPreTouchListenerImpl;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;)V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mSpenPreTouchListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenPreTouchListenerImpl;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenZoomListenerImpl;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenZoomListenerImpl;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mSpenZoomListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenZoomListenerImpl;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/VoiceRecordingListenerManager;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;

    invoke-interface {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;->getDialogPresenterManager()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IDialogPresenter;

    move-result-object v3

    invoke-direct {v1, v2, v3, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/VoiceRecordingListenerManager;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IDialogPresenter;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;)V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mVoiceRecordingListenerManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/VoiceRecordingListenerManager;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenAnalyticsListenerImpl;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenAnalyticsListenerImpl;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mSpenAnalyticsListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenAnalyticsListenerImpl;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnFocusChangeListenerImpl;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnFocusChangeListenerImpl;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mOnFocusChangeListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnFocusChangeListenerImpl;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnKeyListenerImpl;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnKeyListenerImpl;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mOnKeyListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnKeyListenerImpl;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenNoteDeltaZoomAdapterImpl;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenNoteDeltaZoomAdapterImpl;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mNoteZoomScrollerListenerManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenNoteDeltaZoomAdapterImpl;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenPageLayoutListenerImpl;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;

    invoke-interface {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;->getComposerControllerManager()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerManager;->getCvPageSettingController()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/CvPageSettingController;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenPageLayoutListenerImpl;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/CvPageSettingController;)V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mSpenPageLayoutListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenPageLayoutListenerImpl;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenStrokeShapeListenerImpl;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenStrokeShapeListenerImpl;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mSpenStrokeShapeListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenStrokeShapeListenerImpl;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/DefaultPreTouchListenerImpl;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;

    invoke-interface {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;->getComposerModel()Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;

    invoke-interface {v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;->getHandoffManager()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/handoff/HandoffManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/handoff/HandoffManager;->getHandler()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/handoff/HandoffHandler;

    move-result-object v3

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;->getQuickSaveTimer()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/QuickSaveTimerController;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/DefaultPreTouchListenerImpl;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/handoff/HandoffHandler;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/QuickSaveTimerController;)V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mDefaultPreTouchListenerImpl:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/DefaultPreTouchListenerImpl;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/TextEventListenerImpl;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;

    invoke-interface {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/TextEventListenerImpl;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mTextEventListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/TextEventListenerImpl;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenToastActionListenerImpl;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenToastActionListenerImpl;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mSpenToastActionListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenToastActionListenerImpl;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IView;->getListenerManager()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IViewListenerManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mCursorChangedListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/CursorChangedListenerImpl;

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IViewListenerManager;->setCursorChangedListener(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/CursorChangedListenerImpl;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mPageActionListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/PageActionListenerImpl;

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IViewListenerManager;->setPageActionListener(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/PageActionListenerImpl;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mSoftInputListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SoftInputListenerImpl;

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IViewListenerManager;->setSoftInputListener(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SoftInputListenerImpl;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mThumbnailChangeListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ThumbnailChangeListenerImpl;

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IViewListenerManager;->setThumbnailChangedListener(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ThumbnailChangeListenerImpl;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mContextMenuListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ContextMenuListenerImpl;

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IViewListenerManager;->setContextMenuListener(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ContextMenuListenerImpl;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mActionListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ActionListenerImpl;

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IViewListenerManager;->setActionListener(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ActionListenerImpl;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mDialogActionListener:Lcom/samsung/android/sdk/composer/listener/SpenDialogActionListener;

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IViewListenerManager;->setDialogActionListener(Lcom/samsung/android/sdk/composer/listener/SpenDialogActionListener;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mObjectSelectListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenObjectSelectListenerImpl;

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IViewListenerManager;->setObjectSelectListener(Lcom/samsung/android/sdk/composer/listener/SpenObjectSelectListener;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mSpenTextManagerActionListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenTextManagerActionListenerImpl;

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IViewListenerManager;->setSpenTextManagerActionListener(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenTextManagerActionListenerImpl;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mControlObjectListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ControlObjectListenerImpl;

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IViewListenerManager;->setControlObjectListener(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ControlObjectListenerImpl;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mControlObjectSpanListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ControlObjectSpanListenerImpl;

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IViewListenerManager;->setObjectSpanControlObjectListener(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ControlObjectSpanListenerImpl;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mSpenConvertToTextListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenConvertToTextListenerImpl;

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IViewListenerManager;->setSpenConvertToTextListener(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenConvertToTextListenerImpl;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mSpenMathListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenMathListenerImpl;

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IViewListenerManager;->setSpenMathListener(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenMathListenerImpl;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mSpenAlignmentListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenAlignmentListenerImpl;

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IViewListenerManager;->setSpenAlignmentListener(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenAlignmentListenerImpl;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mSpenSTTListenerImpl:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenSTTListenerImpl;

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IViewListenerManager;->setSpenSTTListener(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenSTTListenerImpl;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mOnDragListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IViewListenerManager;->setOnDragListener(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mSpenAnalyticsListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenAnalyticsListenerImpl;

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IViewListenerManager;->setSpenAnalyticsListener(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenAnalyticsListenerImpl;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mOnFocusChangeListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnFocusChangeListenerImpl;

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IViewListenerManager;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mOnKeyListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnKeyListenerImpl;

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IViewListenerManager;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mNoteZoomScrollerListenerManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenNoteDeltaZoomAdapterImpl;

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IViewListenerManager;->setNoteZoomScrollerListener(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenNoteDeltaZoomAdapterImpl;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mSpenPageLayoutListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenPageLayoutListenerImpl;

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IViewListenerManager;->setPageLayoutListener(Lcom/samsung/android/sdk/composer/listener/SpenPageLayoutListener;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mSpenStrokeShapeListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenStrokeShapeListenerImpl;

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IViewListenerManager;->setStrokeShapeListener(Lcom/samsung/android/sdk/composer/listener/SpenStrokeShapeListener;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mTextEventListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/TextEventListenerImpl;

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IViewListenerManager;->setTextEventListener(Lcom/samsung/android/sdk/pen/text/SpenTextLimitListener;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mSpenToastActionListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenToastActionListenerImpl;

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IViewListenerManager;->setNoteWritingToastListener(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenToastActionListenerImpl;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mOnFocusChangeListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnFocusChangeListenerImpl;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;->getClipboardController()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnFocusChangeListenerImpl;->addListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mContextMenuListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ContextMenuListenerImpl;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mOnDragListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->getDragAndDropInfo()Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DragAndDropInfo;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ContextMenuListenerImpl;->setDragAndDropInfo(Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DragAndDropInfo;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mSoftInputListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SoftInputListenerImpl;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mOnDragListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->getDragAndDropInfo()Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DragAndDropInfo;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SoftInputListenerImpl;->setDragAndDropInfo(Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DragAndDropInfo;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mSpenTextManagerActionListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenTextManagerActionListenerImpl;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mOnDragListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->getDragAndDropInfo()Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DragAndDropInfo;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenTextManagerActionListenerImpl;->setDragAndDropInfo(Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DragAndDropInfo;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mControlObjectListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ControlObjectListenerImpl;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mOnDragListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->getDragAndDropInfo()Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DragAndDropInfo;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ControlObjectListenerImpl;->setDragAndDropInfo(Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DragAndDropInfo;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mControlObjectSpanListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ControlObjectSpanListenerImpl;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mOnDragListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->getDragAndDropInfo()Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DragAndDropInfo;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ControlObjectListenerImpl;->setDragAndDropInfo(Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DragAndDropInfo;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mInitialized:Z

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mDefaultPreTouchListenerImpl:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/DefaultPreTouchListenerImpl;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->addPreTouchListener(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenPreTouchListenerImpl$PreTouchListener;)V

    return-void
.end method

.method public initListenerForDoc()V
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/HistoryEventListenerImpl;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;

    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;->getDoc()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/HistoryEventListenerImpl;-><init>(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mHistoryEventListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/HistoryEventListenerImpl;

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenObjectEventListenerImpl;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;

    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;->getHandoffManager()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/handoff/HandoffManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/handoff/HandoffManager;->getHandler()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/handoff/HandoffHandler;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenObjectEventListenerImpl;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/handoff/HandoffHandler;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mSpenObjectEventListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenObjectEventListenerImpl;

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenPageEventListener;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenPageEventListener;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mSpenPageEventListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenPageEventListener;

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenVoiceDataEventListenerImpl;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenVoiceDataEventListenerImpl;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mSpenVoiceDataEventListenerImpl:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenVoiceDataEventListenerImpl;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;->getDoc()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mSpenPageEventListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenPageEventListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->registerPageEventListener(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageEventListener;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;->getDoc()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mSpenVoiceDataEventListenerImpl:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenVoiceDataEventListenerImpl;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->registerVoiceDataEventListener(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$VoiceDataEventListener;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;->getDoc()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mTextEventListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/TextEventListenerImpl;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->registerTextEventListener(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$TextEventListener;)V

    return-void
.end method

.method public isCtrlPressedLast()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mInitialized:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mOnKeyListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnKeyListenerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnKeyListenerImpl;->isCtrlPressedLast()Z

    move-result v0

    return v0
.end method

.method public notifyClearedHistory()V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mInitialized:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mHistoryEventListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/HistoryEventListenerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/HistoryEventListenerImpl;->notifyClearedHistory()V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mInitialized:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mInitialized:Z

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->releaseDocListener()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mSpenPreTouchListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenPreTouchListenerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenPreTouchListenerImpl;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mSpenPreTouchListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenPreTouchListenerImpl;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mCursorChangedListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/CursorChangedListenerImpl;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/CursorChangedListenerImpl;->release()V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mVoiceRecordingListenerManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/VoiceRecordingListenerManager;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/VoiceRecordingListenerManager;->release()V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mOnDragListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->release()V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mSpenConvertToTextListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenConvertToTextListenerImpl;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenConvertToTextListenerImpl;->release()V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mSpenMathListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenMathListenerImpl;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenMathListenerImpl;->release()V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mSpenAlignmentListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenAlignmentListenerImpl;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenAlignmentListenerImpl;->release()V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mSpenSTTListenerImpl:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenSTTListenerImpl;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenSTTListenerImpl;->release()V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mControlObjectListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ControlObjectListenerImpl;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ControlObjectListenerImpl;->release()V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mControlObjectSpanListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ControlObjectSpanListenerImpl;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ControlObjectListenerImpl;->release()V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mSpenTextManagerActionListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenTextManagerActionListenerImpl;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenTextManagerActionListenerImpl;->release()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mSpenAnalyticsListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenAnalyticsListenerImpl;

    return-void
.end method

.method public registerHistoryEventListener(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/HistoryEventListenerImpl$UndoRedoListener;)V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mInitialized:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mHistoryEventListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/HistoryEventListenerImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/HistoryEventListenerImpl;->registerHistoryEventListener(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/HistoryEventListenerImpl$UndoRedoListener;)V

    return-void
.end method

.method public releaseDocListener()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mHistoryEventListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/HistoryEventListenerImpl;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/HistoryEventListenerImpl;->release()V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mHistoryEventListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/HistoryEventListenerImpl;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mSpenPageEventListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenPageEventListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;->getDoc()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mSpenPageEventListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenPageEventListener;

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->deregisterPageEventListener(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageEventListener;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mSpenPageEventListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenPageEventListener;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenPageEventListener;->release()V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mSpenPageEventListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenPageEventListener;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mSpenVoiceDataEventListenerImpl:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenVoiceDataEventListenerImpl;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;->getDoc()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mSpenVoiceDataEventListenerImpl:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenVoiceDataEventListenerImpl;

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->deregisterVoiceDataEventListener(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$VoiceDataEventListener;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mSpenVoiceDataEventListenerImpl:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenVoiceDataEventListenerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenVoiceDataEventListenerImpl;->release()V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mSpenVoiceDataEventListenerImpl:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenVoiceDataEventListenerImpl;

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mTextEventListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/TextEventListenerImpl;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;->getDoc()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mTextEventListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/TextEventListenerImpl;

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->deregisterTextEventListener(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$TextEventListener;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mTextEventListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/TextEventListenerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/TextEventListenerImpl;->release()V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mTextEventListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/TextEventListenerImpl;

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mSpenObjectEventListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenObjectEventListenerImpl;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;->getDoc()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mSpenObjectEventListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenObjectEventListenerImpl;

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->deregisterObjectEventListener(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$ObjectEventListener;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mSpenObjectEventListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenObjectEventListenerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenObjectEventListenerImpl;->release()V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mSpenObjectEventListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenObjectEventListenerImpl;

    :cond_4
    return-void
.end method

.method public releaseHistoryEventListener(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/HistoryEventListenerImpl$UndoRedoListener;)V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mInitialized:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mHistoryEventListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/HistoryEventListenerImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/HistoryEventListenerImpl;->releaseHistoryEventListener(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/HistoryEventListenerImpl$UndoRedoListener;)V

    return-void
.end method

.method public releaseSpenComposerViewListener(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IView;)V
    .locals 2

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IView;->getListenerManager()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IViewListenerManager;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IViewListenerManager;->setCursorChangedListener(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/CursorChangedListenerImpl;)V

    invoke-interface {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IViewListenerManager;->setPageActionListener(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/PageActionListenerImpl;)V

    invoke-interface {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IViewListenerManager;->setSoftInputListener(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SoftInputListenerImpl;)V

    invoke-interface {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IViewListenerManager;->setThumbnailChangedListener(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ThumbnailChangeListenerImpl;)V

    invoke-interface {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IViewListenerManager;->setContextMenuListener(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ContextMenuListenerImpl;)V

    invoke-interface {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IViewListenerManager;->setActionListener(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ActionListenerImpl;)V

    invoke-interface {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IViewListenerManager;->setDialogActionListener(Lcom/samsung/android/sdk/composer/listener/SpenDialogActionListener;)V

    invoke-interface {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IViewListenerManager;->setObjectSelectListener(Lcom/samsung/android/sdk/composer/listener/SpenObjectSelectListener;)V

    invoke-interface {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IViewListenerManager;->setSpenTextManagerActionListener(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenTextManagerActionListenerImpl;)V

    invoke-interface {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IViewListenerManager;->setControlObjectListener(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ControlObjectListenerImpl;)V

    invoke-interface {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IViewListenerManager;->setObjectSpanControlObjectListener(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ControlObjectSpanListenerImpl;)V

    invoke-interface {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IViewListenerManager;->setSpenConvertToTextListener(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenConvertToTextListenerImpl;)V

    invoke-interface {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IViewListenerManager;->setSpenMathListener(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenMathListenerImpl;)V

    invoke-interface {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IViewListenerManager;->setSpenAlignmentListener(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenAlignmentListenerImpl;)V

    invoke-interface {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IViewListenerManager;->setSpenSTTListener(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenSTTListenerImpl;)V

    invoke-interface {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IViewListenerManager;->setOnDragListener(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;)V

    invoke-interface {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IViewListenerManager;->setSpenAnalyticsListener(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenAnalyticsListenerImpl;)V

    invoke-interface {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IViewListenerManager;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    invoke-interface {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IViewListenerManager;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    invoke-interface {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IViewListenerManager;->setNoteZoomScrollerListener(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenNoteDeltaZoomAdapterImpl;)V

    invoke-interface {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IViewListenerManager;->setPageLayoutListener(Lcom/samsung/android/sdk/composer/listener/SpenPageLayoutListener;)V

    invoke-interface {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IViewListenerManager;->setStrokeShapeListener(Lcom/samsung/android/sdk/composer/listener/SpenStrokeShapeListener;)V

    invoke-interface {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IViewListenerManager;->setTextEventListener(Lcom/samsung/android/sdk/pen/text/SpenTextLimitListener;)V

    invoke-interface {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IViewListenerManager;->setNoteWritingToastListener(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenToastActionListenerImpl;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mDefaultPreTouchListenerImpl:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/DefaultPreTouchListenerImpl;

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->removePreTouchListener(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenPreTouchListenerImpl$PreTouchListener;)V

    invoke-interface {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IViewListenerManager;->setPreTouchListener(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenPreTouchListenerImpl;)V

    return-void
.end method

.method public removeFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mInitialized:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mOnFocusChangeListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnFocusChangeListenerImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnFocusChangeListenerImpl;->removeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method public removeHistoryEventBridgeListener(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/HistoryEventListenerImpl$HistoryEventBridgeListener;)V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mInitialized:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mHistoryEventListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/HistoryEventListenerImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/HistoryEventListenerImpl;->removeBridgeListener(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/HistoryEventListenerImpl$HistoryEventBridgeListener;)V

    return-void
.end method

.method public removeKeyListener(Landroid/view/View$OnKeyListener;)V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mInitialized:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mOnKeyListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnKeyListenerImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnKeyListenerImpl;->removeListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method

.method public removeNoteZoomScrollerListener(Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScrollerListener;)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->isInvalidWithView()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mNoteZoomScrollerListenerManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenNoteDeltaZoomAdapterImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenNoteDeltaZoomAdapterImpl;->removeZoomScrollerListener(Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScrollerListener;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mNoteZoomScrollerListenerManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenNoteDeltaZoomAdapterImpl;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenNoteDeltaZoomAdapterImpl;->isEnable()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mViewGetter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager$ViewGetter;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager$ViewGetter;->getView()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IView;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mViewGetter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager$ViewGetter;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager$ViewGetter;->getView()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IView;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IView;->getListenerManager()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IViewListenerManager;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IViewListenerManager;->setNoteZoomScrollerListener(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenNoteDeltaZoomAdapterImpl;)V

    :cond_1
    return-void
.end method

.method public removePreTouchListener(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenPreTouchListenerImpl$PreTouchListener;)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->isInvalidWithView()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mSpenPreTouchListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenPreTouchListenerImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenPreTouchListenerImpl;->removePreTouchListener(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenPreTouchListenerImpl$PreTouchListener;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mSpenPreTouchListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenPreTouchListenerImpl;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenPreTouchListenerImpl;->isEnable()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mViewGetter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager$ViewGetter;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager$ViewGetter;->getView()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IView;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mViewGetter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager$ViewGetter;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager$ViewGetter;->getView()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IView;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IView;->getListenerManager()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IViewListenerManager;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IViewListenerManager;->setPreTouchListener(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenPreTouchListenerImpl;)V

    :cond_1
    return-void
.end method

.method public removeSpenObjectEventListener(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$ObjectEventListener;)V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mInitialized:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mSpenObjectEventListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenObjectEventListenerImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenObjectEventListenerImpl;->removeSpenObjectEventListener(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$ObjectEventListener;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mSpenObjectEventListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenObjectEventListenerImpl;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenObjectEventListenerImpl;->isEnable()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;->getDoc()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mSpenObjectEventListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenObjectEventListenerImpl;

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->deregisterObjectEventListener(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$ObjectEventListener;)V

    :cond_1
    return-void
.end method

.method public removeSpenObjectSelectListener(Lcom/samsung/android/sdk/composer/listener/SpenObjectSelectListener;)V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mInitialized:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mObjectSelectListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenObjectSelectListenerImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenObjectSelectListenerImpl;->removeBridgeListener(Lcom/samsung/android/sdk/composer/listener/SpenObjectSelectListener;)V

    return-void
.end method

.method public removeSpenSTTListener(Lcom/samsung/android/sdk/pen/recoguifeature/spentotext/SPenSTTListener;)V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mInitialized:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mSpenSTTListenerImpl:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenSTTListenerImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenSTTListenerImpl;->removeBridgeListener(Lcom/samsung/android/sdk/pen/recoguifeature/spentotext/SPenSTTListener;)V

    return-void
.end method

.method public removeVoiceDataEventListener(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$VoiceDataEventListener;)V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mInitialized:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mSpenVoiceDataEventListenerImpl:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenVoiceDataEventListenerImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenVoiceDataEventListenerImpl;->removeVoiceDataListener(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$VoiceDataEventListener;)V

    return-void
.end method

.method public removeZoomListener(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenZoomListenerImpl$ZoomListener;)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->isInvalidWithView()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mSpenZoomListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenZoomListenerImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenZoomListenerImpl;->removeZoomListener(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenZoomListenerImpl$ZoomListener;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mSpenZoomListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenZoomListenerImpl;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenZoomListenerImpl;->isEnable()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mViewGetter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager$ViewGetter;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager$ViewGetter;->getView()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IView;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mViewGetter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager$ViewGetter;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager$ViewGetter;->getView()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IView;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IView;->getListenerManager()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IViewListenerManager;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IViewListenerManager;->setZoomListener(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenZoomListenerImpl;)V

    :cond_1
    return-void
.end method

.method public setBlockDefaultPreTouch(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mDefaultPreTouchListenerImpl:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/DefaultPreTouchListenerImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/DefaultPreTouchListenerImpl;->setBlockDefaultPreTouch(Z)V

    :cond_0
    return-void
.end method

.method public setContextMenuManager(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuContract;)V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mInitialized:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mContextMenuListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ContextMenuListenerImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ContextMenuListenerImpl;->setContextMenuManager(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuContract;)V

    return-void
.end method

.method public setShortcutManager(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IShortCutManager;)V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mInitialized:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->removePreTouchListener(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenPreTouchListenerImpl$PreTouchListener;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->addPreTouchListener(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenPreTouchListenerImpl$PreTouchListener;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->removeKeyListener(Landroid/view/View$OnKeyListener;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->addKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mSoftInputListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SoftInputListenerImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SoftInputListenerImpl;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method

.method public setSpenGestureControllerListener(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenGestureControllerImpl;)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->isInvalidWithView()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mViewGetter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager$ViewGetter;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager$ViewGetter;->getView()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->mViewGetter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager$ViewGetter;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager$ViewGetter;->getView()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IView;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IView;->getListenerManager()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IViewListenerManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IViewListenerManager;->setSpenGestureControllerListener(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenGestureControllerImpl;)V

    :cond_1
    return-void
.end method
