.class Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl$SpenAccessibilityDelegate;
.super Landroidx/customview/widget/ExploreByTouchHelper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SpenAccessibilityDelegate"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl$SpenAccessibilityDelegate;->this$0:Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;

    invoke-direct {p0, p2}, Landroidx/customview/widget/ExploreByTouchHelper;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getVirtualViewAt(FF)I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl$SpenAccessibilityDelegate;->this$0:Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr p1, v1

    float-to-int p1, p1

    add-float/2addr p2, v1

    float-to-int p2, p2

    invoke-static {v0, p1, p2}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->access$600(Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;II)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    return p1

    :cond_0
    const/high16 p1, -0x80000000

    return p1
.end method

.method public getVisibleVirtualViews(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl$SpenAccessibilityDelegate;->this$0:Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->access$700(Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;Ljava/util/List;)V

    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/customview/widget/ExploreByTouchHelper;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/customview/widget/ExploreByTouchHelper;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    return-void
.end method

.method public onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
    .locals 2

    const/16 v0, 0x10

    const/16 v1, 0x1000

    if-eq p2, v0, :cond_1

    const/16 v0, 0x100

    if-eq p2, v0, :cond_0

    const/16 v0, 0x200

    if-eq p2, v0, :cond_0

    const/16 v0, 0x4000

    if-eq p2, v0, :cond_0

    const v0, 0x8000

    if-eq p2, v0, :cond_0

    const/high16 v0, 0x10000

    if-eq p2, v0, :cond_0

    const/high16 v0, 0x20000

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl$SpenAccessibilityDelegate;->this$0:Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->access$800(Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;I)Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityNodeInfo;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityNodeInfo;->getPropertyFlag()I

    move-result v0

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl$SpenAccessibilityDelegate;->this$0:Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;

    invoke-static {v0, p2, p3, p1}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->access$1400(Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;ILandroid/os/Bundle;Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityNodeInfo;)Z

    move-result p1

    return p1

    :cond_1
    invoke-virtual {p0}, Landroidx/customview/widget/ExploreByTouchHelper;->getAccessibilityFocusedVirtualViewId()I

    move-result p1

    iget-object p2, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl$SpenAccessibilityDelegate;->this$0:Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;

    invoke-static {p2, p1}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->access$800(Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;I)Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityNodeInfo;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityNodeInfo;->getPropertyFlag()I

    move-result p2

    and-int/2addr p2, v1

    if-ne p2, v1, :cond_2

    iget-object p2, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl$SpenAccessibilityDelegate;->this$0:Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;

    invoke-static {p2}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->access$1300(Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;)Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl$SpenAccessibilityDelegate;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl$SpenAccessibilityDelegate;->this$0:Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;

    invoke-static {v0}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->access$1200(Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/customview/widget/ExploreByTouchHelper;->getAccessibilityNodeProvider(Landroid/view/View;)Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0, p3}, Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;->performAction(IILandroid/os/Bundle;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/core/view/AccessibilityDelegateCompat;->onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public onPopulateEventForHost(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/customview/widget/ExploreByTouchHelper;->onPopulateEventForHost(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/customview/widget/ExploreByTouchHelper;->onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public onPopulateNodeForHost(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/customview/widget/ExploreByTouchHelper;->onPopulateNodeForHost(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setEnabled(Z)V

    invoke-virtual {p1, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClickable(Z)V

    invoke-virtual {p1, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setFocusable(Z)V

    invoke-virtual {p1, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setScrollable(Z)V

    invoke-virtual {p1, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setVisibleToUser(Z)V

    invoke-virtual {p1, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setImportantForAccessibility(Z)V

    invoke-virtual {p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_CLICK:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {p1, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    :cond_0
    invoke-virtual {p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->isLongClickable()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_LONG_CLICK:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {p1, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    :cond_1
    invoke-virtual {p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->isScrollable()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_FORWARD:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {p1, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    sget-object v0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_BACKWARD:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {p1, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    :cond_2
    return-void
.end method

.method public onPopulateNodeForVirtualView(ILandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 6

    const-string v0, ""

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p2, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl$SpenAccessibilityDelegate;->this$0:Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;

    invoke-static {v1, p1}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->access$800(Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;I)Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityNodeInfo;

    move-result-object p1

    if-eqz p1, :cond_11

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityNodeInfo;->getBound()Landroid/graphics/Rect;

    move-result-object v1

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_c

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityNodeInfo;->getPropertyFlag()I

    move-result v2

    const/16 v3, 0x1000

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_4

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityNodeInfo;->getNativeId()I

    move-result v2

    iget-object v4, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl$SpenAccessibilityDelegate;->this$0:Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;

    invoke-static {v4}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->access$900(Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;)I

    move-result v4

    if-ne v2, v4, :cond_4

    iget-object v2, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl$SpenAccessibilityDelegate;->this$0:Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;

    invoke-static {v2}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->access$1000(Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;)Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getText()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl$SpenAccessibilityDelegate;->this$0:Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;

    invoke-static {v4}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->access$1000(Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;)Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getSelectedStart()I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl$SpenAccessibilityDelegate;->this$0:Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;

    invoke-static {v5}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->access$1000(Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;)Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getSelectedEnd()I

    move-result v5

    if-gez v4, :cond_2

    if-gez v5, :cond_2

    iget-object v4, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl$SpenAccessibilityDelegate;->this$0:Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;

    invoke-static {v4}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->access$1000(Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;)Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getCursorPosition()I

    move-result v4

    if-ltz v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, -0x1

    :goto_0
    move v5, v4

    :cond_2
    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    move-object v2, v0

    :goto_1
    invoke-virtual {p2, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2, v4, v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setTextSelection(II)V

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityNodeInfo;->getText()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityNodeInfo;->getText()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_5
    move-object v2, v0

    :goto_2
    invoke-virtual {p2, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    const/4 v2, 0x1

    invoke-virtual {p2, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setImportantForAccessibility(Z)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityNodeInfo;->getDescription()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityNodeInfo;->getDescription()Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    :cond_6
    move-object v4, v0

    :goto_4
    invoke-virtual {p2, v4}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityNodeInfo;->getRoleDescription()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityNodeInfo;->getRoleDescription()Ljava/lang/String;

    move-result-object v4

    goto :goto_5

    :cond_7
    move-object v4, v0

    :goto_5
    invoke-virtual {p2, v4}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setRoleDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityNodeInfo;->getStateDescription()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_8

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityNodeInfo;->getStateDescription()Ljava/lang/String;

    move-result-object v0

    :cond_8
    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setStateDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p2, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    invoke-virtual {p2, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setEnabled(Z)V

    invoke-virtual {p2, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setFocusable(Z)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityNodeInfo;->getPropertyFlag()I

    move-result v0

    and-int/2addr v0, v2

    const/4 v1, 0x0

    if-ne v0, v2, :cond_9

    move v0, v2

    goto :goto_6

    :cond_9
    move v0, v1

    :goto_6
    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setCheckable(Z)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityNodeInfo;->getPropertyFlag()I

    move-result v0

    const/4 v4, 0x2

    and-int/2addr v0, v4

    if-ne v0, v4, :cond_a

    move v0, v2

    goto :goto_7

    :cond_a
    move v0, v1

    :goto_7
    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setChecked(Z)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityNodeInfo;->getPropertyFlag()I

    move-result v0

    const/16 v4, 0x20

    and-int/2addr v0, v4

    if-ne v0, v4, :cond_b

    move v0, v2

    goto :goto_8

    :cond_b
    move v0, v1

    :goto_8
    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClickable(Z)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityNodeInfo;->getPropertyFlag()I

    move-result v0

    const/16 v4, 0x40

    and-int/2addr v0, v4

    if-ne v0, v4, :cond_c

    move v0, v2

    goto :goto_9

    :cond_c
    move v0, v1

    :goto_9
    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setLongClickable(Z)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityNodeInfo;->getPropertyFlag()I

    move-result p1

    and-int/2addr p1, v3

    if-ne p1, v3, :cond_d

    goto :goto_a

    :cond_d
    move v2, v1

    :goto_a
    invoke-virtual {p2, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setEditable(Z)V

    invoke-virtual {p2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->isEditable()Z

    move-result p1

    if-eqz p1, :cond_e

    const/16 p1, 0xf

    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setMovementGranularities(I)V

    sget-object p1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_COPY:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    sget-object p1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_CUT:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    sget-object p1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_PASTE:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    sget-object p1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SET_SELECTION:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    :cond_e
    invoke-virtual {p2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->isClickable()Z

    move-result p1

    if-eqz p1, :cond_10

    invoke-virtual {p2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->isEditable()Z

    move-result p1

    if-eqz p1, :cond_f

    new-instance p1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    const/16 v0, 0x10

    iget-object v1, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl$SpenAccessibilityDelegate;->this$0:Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;

    invoke-static {v1}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->access$1100(Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/samsung/android/spen/R$string;->voice_assistant_editbox_click_action_label:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    goto :goto_b

    :cond_f
    sget-object p1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_CLICK:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    :goto_b
    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    :cond_10
    invoke-virtual {p2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->isLongClickable()Z

    move-result p1

    if-eqz p1, :cond_11

    sget-object p1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_LONG_CLICK:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    nop

    :cond_11
    :goto_c
    return-void
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroidx/core/view/AccessibilityDelegateCompat;->onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 3

    invoke-super {p0, p1, p2, p3}, Landroidx/core/view/AccessibilityDelegateCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    return v0

    :cond_0
    const/16 p1, 0x1000

    const/4 v1, -0x1

    if-eq p2, p1, :cond_b

    const/16 p1, 0x2000

    if-eq p2, p1, :cond_9

    const/high16 p1, 0x400000

    const/high16 v1, 0x3f000000    # 0.5f

    if-eq p2, p1, :cond_5

    const/high16 p1, 0x800000

    if-eq p2, p1, :cond_4

    const/high16 p1, 0x4000000

    if-eq p2, p1, :cond_3

    const/high16 p1, 0x10000000

    if-eq p2, p1, :cond_1

    const/high16 p1, 0x20000000

    if-eq p2, p1, :cond_7

    goto/16 :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl$SpenAccessibilityDelegate;->this$0:Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;

    invoke-static {p1}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->access$100(Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;)F

    move-result p1

    iget-object p2, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl$SpenAccessibilityDelegate;->this$0:Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;

    invoke-static {p2}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->access$2200(Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;)F

    move-result p2

    add-float/2addr p1, p2

    const p2, 0x4124cccd    # 10.3f

    cmpg-float p1, p1, p2

    if-gtz p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl$SpenAccessibilityDelegate;->this$0:Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;

    invoke-static {p1}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->access$100(Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;)F

    move-result p2

    iget-object p3, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl$SpenAccessibilityDelegate;->this$0:Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;

    invoke-static {p3}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->access$2200(Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;)F

    move-result p3

    add-float/2addr p2, p3

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->access$102(Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;F)F

    :cond_2
    return v0

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl$SpenAccessibilityDelegate;->this$0:Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;

    invoke-static {p1}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->access$000(Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;)Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityDelegateListener;

    move-result-object p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl$SpenAccessibilityDelegate;->this$0:Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;

    invoke-static {p1}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->access$000(Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;)Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityDelegateListener;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityDelegateListener;->onMove(F)V

    return v0

    :cond_4
    iget-object p1, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl$SpenAccessibilityDelegate;->this$0:Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;

    invoke-static {p1}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->access$2300(Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;)Landroid/animation/TimeAnimator;

    move-result-object p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl$SpenAccessibilityDelegate;->this$0:Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;

    invoke-static {p1}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->access$2300(Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;)Landroid/animation/TimeAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/TimeAnimator;->cancel()V

    return v0

    :cond_5
    const/4 p1, 0x7

    if-eqz p3, :cond_6

    const/16 p1, 0xf

    const-string p2, "auto_scroll_speed_level_count"

    invoke-virtual {p3, p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iget-object p2, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl$SpenAccessibilityDelegate;->this$0:Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;

    const v2, 0x411ccccd    # 9.8f

    sub-int/2addr p1, v0

    int-to-float p1, p1

    div-float/2addr v2, p1

    invoke-static {p2, v2}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->access$2202(Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;F)F

    const/16 p1, 0x8

    const-string p2, "auto_scroll_speed_level"

    invoke-virtual {p3, p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    sub-int/2addr p1, v0

    :cond_6
    iget-object p2, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl$SpenAccessibilityDelegate;->this$0:Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;

    invoke-static {p2}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->access$2200(Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;)F

    move-result p3

    int-to-float p1, p1

    mul-float/2addr p3, p1

    add-float/2addr p3, v1

    invoke-static {p2, p3}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->access$102(Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;F)F

    iget-object p1, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl$SpenAccessibilityDelegate;->this$0:Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;

    invoke-static {p1}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->access$2300(Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;)Landroid/animation/TimeAnimator;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl$SpenAccessibilityDelegate;->this$0:Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;

    invoke-static {p1}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->access$2300(Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;)Landroid/animation/TimeAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/TimeAnimator;->start()V

    return v0

    :cond_7
    iget-object p1, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl$SpenAccessibilityDelegate;->this$0:Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;

    invoke-static {p1}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->access$100(Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;)F

    move-result p1

    iget-object p2, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl$SpenAccessibilityDelegate;->this$0:Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;

    invoke-static {p2}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->access$2200(Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;)F

    move-result p2

    sub-float/2addr p1, p2

    cmpl-float p1, p1, v1

    if-ltz p1, :cond_8

    iget-object p1, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl$SpenAccessibilityDelegate;->this$0:Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;

    invoke-static {p1}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->access$100(Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;)F

    move-result p2

    iget-object p3, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl$SpenAccessibilityDelegate;->this$0:Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;

    invoke-static {p3}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->access$2200(Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;)F

    move-result p3

    sub-float/2addr p2, p3

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->access$102(Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;F)F

    :cond_8
    return v0

    :cond_9
    iget-object p1, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl$SpenAccessibilityDelegate;->this$0:Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;

    invoke-static {p1, v1}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->access$1502(Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;I)I

    iget-object p1, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl$SpenAccessibilityDelegate;->this$0:Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;

    invoke-static {p1}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->access$1300(Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;)Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl$SpenAccessibilityDelegate;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/customview/widget/ExploreByTouchHelper;->getAccessibilityFocusedVirtualViewId()I

    move-result p2

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->access$2000(Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;I)I

    move-result p1

    if-lez p1, :cond_d

    iget-object p2, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl$SpenAccessibilityDelegate;->this$0:Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;

    invoke-static {p2, p1}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->access$2100(Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;I)I

    move-result p2

    iget-object p3, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl$SpenAccessibilityDelegate;->this$0:Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;

    invoke-static {p3, p2}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->access$1800(Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;I)V

    iget-object p2, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl$SpenAccessibilityDelegate;->this$0:Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;

    invoke-static {p2}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->access$1900(Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;)Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl$SpenAccessibilityHandler;

    move-result-object p2

    if-eqz p2, :cond_a

    iget-object p2, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl$SpenAccessibilityDelegate;->this$0:Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;

    invoke-static {p2}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->access$1900(Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;)Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl$SpenAccessibilityHandler;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl$SpenAccessibilityHandler;->setFocusAtInterval(I)V

    :cond_a
    return v0

    :cond_b
    iget-object p1, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl$SpenAccessibilityDelegate;->this$0:Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;

    invoke-static {p1, v1}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->access$1502(Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;I)I

    iget-object p1, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl$SpenAccessibilityDelegate;->this$0:Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;

    invoke-static {p1}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->access$1300(Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;)Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl$SpenAccessibilityDelegate;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/customview/widget/ExploreByTouchHelper;->getAccessibilityFocusedVirtualViewId()I

    move-result p2

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->access$1600(Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;I)I

    move-result p1

    if-lez p1, :cond_d

    iget-object p2, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl$SpenAccessibilityDelegate;->this$0:Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;

    invoke-static {p2, p1}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->access$1700(Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;I)I

    move-result p2

    iget-object p3, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl$SpenAccessibilityDelegate;->this$0:Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;

    invoke-static {p3, p2}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->access$1800(Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;I)V

    iget-object p2, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl$SpenAccessibilityDelegate;->this$0:Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;

    invoke-static {p2}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->access$1900(Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;)Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl$SpenAccessibilityHandler;

    move-result-object p2

    if-eqz p2, :cond_c

    iget-object p2, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl$SpenAccessibilityDelegate;->this$0:Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;

    invoke-static {p2}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->access$1900(Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;)Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl$SpenAccessibilityHandler;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl$SpenAccessibilityHandler;->setFocusAtInterval(I)V

    :cond_c
    return v0

    :cond_d
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
