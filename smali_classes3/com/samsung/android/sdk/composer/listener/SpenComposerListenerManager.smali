.class public Lcom/samsung/android/sdk/composer/listener/SpenComposerListenerManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ALERT_REMOVE_DELKEY_CONTENT:I = 0x2

.field private static final ALERT_REMOVE_DELKEY_RECORDING_VOICE:I = 0x3

.field private static final ALERT_REMOVE_RECORDING_VOICE:I = 0x1


# instance fields
.field private mComposerActionListener:Lcom/samsung/android/sdk/composer/listener/SpenComposerActionListener;

.field private mContextMenuListener:Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenuListener;

.field private mDialogActionListener:Lcom/samsung/android/sdk/composer/listener/SpenDialogActionListener;

.field private mObjectSelectListener:Lcom/samsung/android/sdk/composer/listener/SpenObjectSelectListener;

.field private mPageActionLister:Lcom/samsung/android/sdk/composer/listener/SpenPageActionListener;

.field private mPageLayoutLister:Lcom/samsung/android/sdk/composer/listener/SpenPageLayoutListener;

.field private mStrokeShapeListener:Lcom/samsung/android/sdk/composer/listener/SpenStrokeShapeListener;

.field private mThumbnailChangeListener:Lcom/samsung/android/sdk/composer/listener/SpenThumbnailChangeListener;

.field private mTouchListener:Lcom/samsung/android/sdk/pen/engine/SpenTouchListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/composer/listener/SpenComposerListenerManager;->mThumbnailChangeListener:Lcom/samsung/android/sdk/composer/listener/SpenThumbnailChangeListener;

    iput-object v0, p0, Lcom/samsung/android/sdk/composer/listener/SpenComposerListenerManager;->mPageActionLister:Lcom/samsung/android/sdk/composer/listener/SpenPageActionListener;

    iput-object v0, p0, Lcom/samsung/android/sdk/composer/listener/SpenComposerListenerManager;->mPageLayoutLister:Lcom/samsung/android/sdk/composer/listener/SpenPageLayoutListener;

    iput-object v0, p0, Lcom/samsung/android/sdk/composer/listener/SpenComposerListenerManager;->mComposerActionListener:Lcom/samsung/android/sdk/composer/listener/SpenComposerActionListener;

    iput-object v0, p0, Lcom/samsung/android/sdk/composer/listener/SpenComposerListenerManager;->mTouchListener:Lcom/samsung/android/sdk/pen/engine/SpenTouchListener;

    iput-object v0, p0, Lcom/samsung/android/sdk/composer/listener/SpenComposerListenerManager;->mObjectSelectListener:Lcom/samsung/android/sdk/composer/listener/SpenObjectSelectListener;

    iput-object v0, p0, Lcom/samsung/android/sdk/composer/listener/SpenComposerListenerManager;->mDialogActionListener:Lcom/samsung/android/sdk/composer/listener/SpenDialogActionListener;

    iput-object v0, p0, Lcom/samsung/android/sdk/composer/listener/SpenComposerListenerManager;->mContextMenuListener:Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenuListener;

    iput-object v0, p0, Lcom/samsung/android/sdk/composer/listener/SpenComposerListenerManager;->mStrokeShapeListener:Lcom/samsung/android/sdk/composer/listener/SpenStrokeShapeListener;

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/listener/SpenComposerListenerManager;->mContextMenuListener:Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenuListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenuListener;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onActionLinkClicked(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/listener/SpenComposerListenerManager;->mComposerActionListener:Lcom/samsung/android/sdk/composer/listener/SpenComposerActionListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/composer/listener/SpenComposerActionListener;->onActionLinkClicked(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public onComposerClicked(Landroid/view/MotionEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/listener/SpenComposerListenerManager;->mComposerActionListener:Lcom/samsung/android/sdk/composer/listener/SpenComposerActionListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/composer/listener/SpenComposerActionListener;->onComposerClicked(Landroid/view/MotionEvent;)V

    :cond_0
    return-void
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/listener/SpenComposerListenerManager;->mContextMenuListener:Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenuListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenuListener;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/listener/SpenComposerListenerManager;->mContextMenuListener:Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenuListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenuListener;->onCreateContextMenu(Landroid/view/ContextMenu;)V

    :cond_0
    return-void
.end method

.method public onEditModeChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/listener/SpenComposerListenerManager;->mComposerActionListener:Lcom/samsung/android/sdk/composer/listener/SpenComposerActionListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/composer/listener/SpenComposerActionListener;->onEditModeChanged(I)V

    :cond_0
    return-void
.end method

.method public onInitLayoutFinished()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/listener/SpenComposerListenerManager;->mComposerActionListener:Lcom/samsung/android/sdk/composer/listener/SpenComposerActionListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/listener/SpenComposerActionListener;->onInitLayoutFinished()V

    :cond_0
    return-void
.end method

.method public onLastPageChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/listener/SpenComposerListenerManager;->mPageActionLister:Lcom/samsung/android/sdk/composer/listener/SpenPageActionListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/composer/listener/SpenPageActionListener;->onLastPageChanged(I)V

    :cond_0
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/listener/SpenComposerListenerManager;->mComposerActionListener:Lcom/samsung/android/sdk/composer/listener/SpenComposerActionListener;

    if-eqz v0, :cond_0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/sdk/composer/listener/SpenComposerActionListener;->onLayout(ZIIII)V

    :cond_0
    return-void
.end method

.method public onObjectSelected(Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;Z)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/listener/SpenComposerListenerManager;->mObjectSelectListener:Lcom/samsung/android/sdk/composer/listener/SpenObjectSelectListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/sdk/composer/listener/SpenObjectSelectListener;->onObjectSelected(Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    :cond_0
    return-void
.end method

.method public onPageLayoutChanged(IIZZ)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/listener/SpenComposerListenerManager;->mPageLayoutLister:Lcom/samsung/android/sdk/composer/listener/SpenPageLayoutListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/sdk/composer/listener/SpenPageLayoutListener;->onChanged(IIZZ)V

    :cond_0
    return-void
.end method

.method public onPerformContextMenuAction(I)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/listener/SpenComposerListenerManager;->mComposerActionListener:Lcom/samsung/android/sdk/composer/listener/SpenComposerActionListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/composer/listener/SpenComposerActionListener;->onPerformContextMenuAction(I)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onPullGestureAnimationUpdated(FFFZ)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/listener/SpenComposerListenerManager;->mComposerActionListener:Lcom/samsung/android/sdk/composer/listener/SpenComposerActionListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/sdk/composer/listener/SpenComposerActionListener;->onPullGestureAnimationUpdated(FFFZ)V

    :cond_0
    return-void
.end method

.method public onSearchTextFinished(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/listener/SpenComposerListenerManager;->mComposerActionListener:Lcom/samsung/android/sdk/composer/listener/SpenComposerActionListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/composer/listener/SpenComposerActionListener;->onSearchTextFinished(I)V

    :cond_0
    return-void
.end method

.method public onSearchingText(ILcom/samsung/android/sdk/composer/search/SearchData;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/listener/SpenComposerListenerManager;->mComposerActionListener:Lcom/samsung/android/sdk/composer/listener/SpenComposerActionListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/composer/listener/SpenComposerActionListener;->onSearchingText(ILcom/samsung/android/sdk/composer/search/SearchData;)V

    :cond_0
    return-void
.end method

.method public onShowAlertDialog(ILcom/samsung/android/sdk/pen/document/SpenObjectBase;)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/sdk/composer/listener/SpenComposerListenerManager;->mDialogActionListener:Lcom/samsung/android/sdk/composer/listener/SpenDialogActionListener;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/listener/SpenDialogActionListener;->onRequestShowCancelVoiceDialog()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/sdk/composer/listener/SpenComposerListenerManager;->mDialogActionListener:Lcom/samsung/android/sdk/composer/listener/SpenDialogActionListener;

    if-eqz p1, :cond_3

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/composer/listener/SpenDialogActionListener;->onRequestShowConfirmRemoveDialog(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/sdk/composer/listener/SpenComposerListenerManager;->mDialogActionListener:Lcom/samsung/android/sdk/composer/listener/SpenDialogActionListener;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/listener/SpenDialogActionListener;->onRequestShowRemoveRecordingVoiceDialog()V

    :cond_3
    :goto_0
    return-void
.end method

.method public onStrokeShapeConverted()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/listener/SpenComposerListenerManager;->mStrokeShapeListener:Lcom/samsung/android/sdk/composer/listener/SpenStrokeShapeListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/listener/SpenStrokeShapeListener;->onStrokeShapeConverted()V

    :cond_0
    return-void
.end method

.method public onThumbnailChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/listener/SpenComposerListenerManager;->mThumbnailChangeListener:Lcom/samsung/android/sdk/composer/listener/SpenThumbnailChangeListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/composer/listener/SpenThumbnailChangeListener;->onThumbnailChanged(I)V

    :cond_0
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/listener/SpenComposerListenerManager;->mTouchListener:Lcom/samsung/android/sdk/pen/engine/SpenTouchListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/sdk/pen/engine/SpenTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setComposerActionListener(Lcom/samsung/android/sdk/composer/listener/SpenComposerActionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/composer/listener/SpenComposerListenerManager;->mComposerActionListener:Lcom/samsung/android/sdk/composer/listener/SpenComposerActionListener;

    return-void
.end method

.method public setContextMenuListener(Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenuListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/composer/listener/SpenComposerListenerManager;->mContextMenuListener:Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenuListener;

    return-void
.end method

.method public setDialogActionListener(Lcom/samsung/android/sdk/composer/listener/SpenDialogActionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/composer/listener/SpenComposerListenerManager;->mDialogActionListener:Lcom/samsung/android/sdk/composer/listener/SpenDialogActionListener;

    return-void
.end method

.method public setLoggingListener(Lcom/samsung/android/sdk/composer/listener/SpenAnalyticsListener;)V
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenAnalyticsUtil;->getInstance()Lcom/samsung/android/sdk/pen/util/SpenAnalyticsUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/util/SpenAnalyticsUtil;->setListener(Lcom/samsung/android/sdk/pen/util/SpenAnalyticsUtil$AnalyticsListener;)V

    return-void
.end method

.method public setObjectSelectListener(Lcom/samsung/android/sdk/composer/listener/SpenObjectSelectListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/composer/listener/SpenComposerListenerManager;->mObjectSelectListener:Lcom/samsung/android/sdk/composer/listener/SpenObjectSelectListener;

    return-void
.end method

.method public setPageActionListener(Lcom/samsung/android/sdk/composer/listener/SpenPageActionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/composer/listener/SpenComposerListenerManager;->mPageActionLister:Lcom/samsung/android/sdk/composer/listener/SpenPageActionListener;

    return-void
.end method

.method public setPageLayoutListener(Lcom/samsung/android/sdk/composer/listener/SpenPageLayoutListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/composer/listener/SpenComposerListenerManager;->mPageLayoutLister:Lcom/samsung/android/sdk/composer/listener/SpenPageLayoutListener;

    return-void
.end method

.method public setPreTouchListener(Lcom/samsung/android/sdk/pen/engine/SpenTouchListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/composer/listener/SpenComposerListenerManager;->mTouchListener:Lcom/samsung/android/sdk/pen/engine/SpenTouchListener;

    return-void
.end method

.method public setStrokeShapeListener(Lcom/samsung/android/sdk/composer/listener/SpenStrokeShapeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/composer/listener/SpenComposerListenerManager;->mStrokeShapeListener:Lcom/samsung/android/sdk/composer/listener/SpenStrokeShapeListener;

    return-void
.end method

.method public setThumbnailChangeListener(Lcom/samsung/android/sdk/composer/listener/SpenThumbnailChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/composer/listener/SpenComposerListenerManager;->mThumbnailChangeListener:Lcom/samsung/android/sdk/composer/listener/SpenThumbnailChangeListener;

    return-void
.end method
