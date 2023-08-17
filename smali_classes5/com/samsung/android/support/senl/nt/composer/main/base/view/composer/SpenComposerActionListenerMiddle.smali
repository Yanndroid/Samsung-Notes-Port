.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/SpenComposerActionListenerMiddle;
.super Lcom/samsung/android/sdk/composer/listener/SpenComposerActionListener;
.source "SourceFile"


# instance fields
.field private final mAnimationViewManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/AnimationViewManager;

.field private mSpenComposerActionListenerImpl:Lcom/samsung/android/sdk/composer/listener/SpenComposerActionListener;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/AnimationViewManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/composer/listener/SpenComposerActionListener;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/SpenComposerActionListenerMiddle;->mAnimationViewManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/AnimationViewManager;

    return-void
.end method


# virtual methods
.method public onActionLinkClicked(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/SpenComposerActionListenerMiddle;->mSpenComposerActionListenerImpl:Lcom/samsung/android/sdk/composer/listener/SpenComposerActionListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/composer/listener/SpenComposerActionListener;->onActionLinkClicked(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public onComposerClicked(Landroid/view/MotionEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/SpenComposerActionListenerMiddle;->mSpenComposerActionListenerImpl:Lcom/samsung/android/sdk/composer/listener/SpenComposerActionListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/composer/listener/SpenComposerActionListener;->onComposerClicked(Landroid/view/MotionEvent;)V

    :cond_0
    return-void
.end method

.method public onEditModeChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/SpenComposerActionListenerMiddle;->mSpenComposerActionListenerImpl:Lcom/samsung/android/sdk/composer/listener/SpenComposerActionListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/composer/listener/SpenComposerActionListener;->onEditModeChanged(I)V

    :cond_0
    return-void
.end method

.method public onInitLayoutFinished()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/SpenComposerActionListenerMiddle;->mSpenComposerActionListenerImpl:Lcom/samsung/android/sdk/composer/listener/SpenComposerActionListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/listener/SpenComposerActionListener;->onInitLayoutFinished()V

    :cond_0
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/SpenComposerActionListenerMiddle;->mSpenComposerActionListenerImpl:Lcom/samsung/android/sdk/composer/listener/SpenComposerActionListener;

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

.method public onPerformContextMenuAction(I)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/SpenComposerActionListenerMiddle;->mSpenComposerActionListenerImpl:Lcom/samsung/android/sdk/composer/listener/SpenComposerActionListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/composer/listener/SpenComposerActionListener;->onPerformContextMenuAction(I)Z

    move-result p1

    return p1

    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/sdk/composer/listener/SpenComposerActionListener;->onPerformContextMenuAction(I)Z

    move-result p1

    return p1
.end method

.method public onPullGestureAnimationUpdated(FFFZ)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/SpenComposerActionListenerMiddle;->mAnimationViewManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/AnimationViewManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/AnimationViewManager;->onChanged(FFFZ)V

    :cond_0
    return-void
.end method

.method public onSearchingText(ILcom/samsung/android/sdk/composer/search/SearchData;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/SpenComposerActionListenerMiddle;->mSpenComposerActionListenerImpl:Lcom/samsung/android/sdk/composer/listener/SpenComposerActionListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/composer/listener/SpenComposerActionListener;->onSearchingText(ILcom/samsung/android/sdk/composer/search/SearchData;)V

    :cond_0
    return-void
.end method

.method public setListenerImpl(Lcom/samsung/android/sdk/composer/listener/SpenComposerActionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/SpenComposerActionListenerMiddle;->mSpenComposerActionListenerImpl:Lcom/samsung/android/sdk/composer/listener/SpenComposerActionListener;

    return-void
.end method
