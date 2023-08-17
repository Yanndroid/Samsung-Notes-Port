.class public Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl$SpenAccessibilityDelegate;,
        Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl$SpenAccessibilityHandler;
    }
.end annotation


# static fields
.field private static final AUTOSCROLL_MAX_DISTANCE:F = 10.3f

.field private static final AUTOSCROLL_MIN_DISTANCE:F = 0.5f

.field private static final AUTOSCROLL_SPEED_LEVEL_COUNT_DEFAULT:I = 0xf

.field private static final AUTOSCROLL_SPEED_LEVEL_DEFAULT:I = 0x8

.field private static final BOOLEAN_PROPERTY_CHECKABLE:I = 0x1

.field private static final BOOLEAN_PROPERTY_CHECKED:I = 0x2

.field private static final BOOLEAN_PROPERTY_CLICKABLE:I = 0x20

.field private static final BOOLEAN_PROPERTY_EDITABLE:I = 0x1000

.field private static final BOOLEAN_PROPERTY_LONG_CLICKABLE:I = 0x40

.field private static final SEM_ACTION_AUTOSCROLL_OFF:I = 0x800000

.field private static final SEM_ACTION_AUTOSCROLL_ON:I = 0x400000

.field private static final SEM_ACTION_AUTOSCROLL_SPEED_DOWN:I = 0x20000000

.field private static final SEM_ACTION_AUTOSCROLL_SPEED_UP:I = 0x10000000

.field private static final SEM_ACTION_AUTOSCROLL_TOP:I = 0x4000000

.field private static final TAG:Ljava/lang/String; = "AccessibilityDelegateImpl"


# instance fields
.field private final mAccessibilityContentResolver:Lcom/samsung/android/sdk/composer/accessibility/AccessibilityContentObserver;

.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mAutoscrollDistance:F

.field private mAutoscrollDistanceGap:F

.field private mContext:Landroid/content/Context;

.field private mCurrentCursorPos:I

.field private mDelegate:Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl$SpenAccessibilityDelegate;

.field private final mHandler:Landroid/os/Handler;

.field private mHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityNodeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mHost:Landroid/view/View;

.field private mInvalidateHandler:Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl$SpenAccessibilityHandler;

.field private mIsEnabled:Z

.field private mListener:Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityDelegateListener;

.field private mMovementPos:I

.field private mNodeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityNodeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mScrollAnimator:Landroid/animation/TimeAnimator;

.field private mSpenObjectTextBox:Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

.field private mStateChangeListener:Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;

.field private mTextNodeNativeId:I


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityDelegateListener;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->mStateChangeListener:Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->mIsEnabled:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->mTextNodeNativeId:I

    iput v0, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->mMovementPos:I

    iput v0, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->mCurrentCursorPos:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl$3;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl$3;-><init>(Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->mAccessibilityContentResolver:Lcom/samsung/android/sdk/composer/accessibility/AccessibilityContentObserver;

    new-instance v0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl$SpenAccessibilityDelegate;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl$SpenAccessibilityDelegate;-><init>(Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;Landroid/view/View;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->mDelegate:Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl$SpenAccessibilityDelegate;

    iput-object p2, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->mListener:Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityDelegateListener;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->mHost:Landroid/view/View;

    new-instance p2, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl$SpenAccessibilityHandler;

    invoke-direct {p2, p0}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl$SpenAccessibilityHandler;-><init>(Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;)V

    iput-object p2, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->mInvalidateHandler:Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl$SpenAccessibilityHandler;

    invoke-direct {p0}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->setEnabled()V

    iget-object p2, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityContentObserver;->register(Landroid/content/ContentResolver;)V

    iget-object p2, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->mDelegate:Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl$SpenAccessibilityDelegate;

    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    new-instance p1, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl$1;-><init>(Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;)V

    iput-object p1, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->mStateChangeListener:Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;

    iget-object p1, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->mContext:Landroid/content/Context;

    const-string p2, "accessibility"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    iput-object p1, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-object p2, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->mStateChangeListener:Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;

    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityManager;->addAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z

    new-instance p1, Landroid/animation/TimeAnimator;

    invoke-direct {p1}, Landroid/animation/TimeAnimator;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->mScrollAnimator:Landroid/animation/TimeAnimator;

    new-instance p2, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl$2;-><init>(Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;)V

    invoke-virtual {p1, p2}, Landroid/animation/TimeAnimator;->setTimeListener(Landroid/animation/TimeAnimator$TimeListener;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;)Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityDelegateListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->mListener:Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityDelegateListener;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;)F
    .locals 0

    iget p0, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->mAutoscrollDistance:F

    return p0
.end method

.method public static synthetic access$1000(Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;)Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->mSpenObjectTextBox:Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

    return-object p0
.end method

.method public static synthetic access$102(Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;F)F
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->mAutoscrollDistance:F

    return p1
.end method

.method public static synthetic access$1100(Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$1200(Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->mHost:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$1300(Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;)Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl$SpenAccessibilityDelegate;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->mDelegate:Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl$SpenAccessibilityDelegate;

    return-object p0
.end method

.method public static synthetic access$1400(Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;ILandroid/os/Bundle;Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityNodeInfo;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->performActionForTextContent(ILandroid/os/Bundle;Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityNodeInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$1502(Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->mCurrentCursorPos:I

    return p1
.end method

.method public static synthetic access$1600(Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;I)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->getNextNodeId(I)I

    move-result p0

    return p0
.end method

.method public static synthetic access$1700(Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;I)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->moveBottom(I)I

    move-result p0

    return p0
.end method

.method public static synthetic access$1800(Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->scroll(I)V

    return-void
.end method

.method public static synthetic access$1900(Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;)Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl$SpenAccessibilityHandler;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->mInvalidateHandler:Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl$SpenAccessibilityHandler;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->setEnabled()V

    return-void
.end method

.method public static synthetic access$2000(Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;I)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->getPrevNodeId(I)I

    move-result p0

    return p0
.end method

.method public static synthetic access$2100(Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;I)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->moveTop(I)I

    move-result p0

    return p0
.end method

.method public static synthetic access$2200(Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;)F
    .locals 0

    iget p0, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->mAutoscrollDistanceGap:F

    return p0
.end method

.method public static synthetic access$2202(Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;F)F
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->mAutoscrollDistanceGap:F

    return p1
.end method

.method public static synthetic access$2300(Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;)Landroid/animation/TimeAnimator;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->mScrollAnimator:Landroid/animation/TimeAnimator;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->invalidateRoot()V

    return-void
.end method

.method public static synthetic access$400(Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->isInScreen(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$500(Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->setFocus(I)V

    return-void
.end method

.method public static synthetic access$600(Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;II)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->getId(II)I

    move-result p0

    return p0
.end method

.method public static synthetic access$700(Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->getNodeList(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic access$800(Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;I)Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityNodeInfo;
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->getNodeInfo(I)Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityNodeInfo;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$900(Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->mTextNodeNativeId:I

    return p0
.end method

.method private beamBeats(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 3
    .param p2    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->beamsOverlap(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    invoke-direct {p0, p1, p2, p4}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->beamsOverlap(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_5

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-direct {p0, p1, p2, p4}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->isToDirectionOf(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/16 v0, 0x11

    if-eq p1, v0, :cond_4

    const/16 v0, 0x42

    if-ne p1, v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->majorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result p3

    invoke-direct {p0, p1, p2, p4}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->majorAxisDistanceToFarEdge(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result p1

    if-ge p3, p1, :cond_3

    move v2, v1

    :cond_3
    return v2

    :cond_4
    :goto_0
    return v1

    :cond_5
    :goto_1
    return v2
.end method

.method private beamsOverlap(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 3
    .param p2    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/16 v0, 0x11

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_2

    const/16 v0, 0x21

    if-eq p1, v0, :cond_0

    const/16 v0, 0x42

    if-eq p1, v0, :cond_2

    const/16 v0, 0x82

    if-eq p1, v0, :cond_0

    return v2

    :cond_0
    iget p1, p3, Landroid/graphics/Rect;->right:I

    iget v0, p2, Landroid/graphics/Rect;->left:I

    if-lt p1, v0, :cond_1

    iget p1, p3, Landroid/graphics/Rect;->left:I

    iget p2, p2, Landroid/graphics/Rect;->right:I

    if-gt p1, p2, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    return v1

    :cond_2
    iget p1, p3, Landroid/graphics/Rect;->bottom:I

    iget v0, p2, Landroid/graphics/Rect;->top:I

    if-lt p1, v0, :cond_3

    iget p1, p3, Landroid/graphics/Rect;->top:I

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    if-gt p1, p2, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    return v1
.end method

.method private clearCache()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->mHashMap:Ljava/util/HashMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iput-object v1, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->mHashMap:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->mNodeList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iput-object v1, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->mNodeList:Ljava/util/List;

    :cond_1
    return-void
.end method

.method private clickKeyboardFocusedVirtualView()Z
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->mDelegate:Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl$SpenAccessibilityDelegate;

    invoke-virtual {v0}, Landroidx/customview/widget/ExploreByTouchHelper;->getKeyboardFocusedVirtualViewId()I

    move-result v0

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->mHost:Landroid/view/View;

    if-eqz v1, :cond_1

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->getNodeInfo(I)Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityNodeInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->mDelegate:Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl$SpenAccessibilityDelegate;

    iget-object v3, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->mHost:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroidx/customview/widget/ExploreByTouchHelper;->getAccessibilityNodeProvider(Landroid/view/View;)Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;

    move-result-object v2

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v3, v4}, Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;->performAction(IILandroid/os/Bundle;)Z

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->mListener:Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityDelegateListener;

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityNodeInfo;->getNativeId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityDelegateListener;->onClick(I)V

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private doExtendSelection(Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;ZILcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityNodeInfo;)Z
    .locals 10

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getSelectedStart()I

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getSelectedEnd()I

    move-result v1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getCursorPosition()I

    move-result v2

    if-gez v0, :cond_0

    if-gez v1, :cond_0

    if-ltz v2, :cond_0

    move v6, v2

    move v7, v6

    goto :goto_0

    :cond_0
    move v6, v0

    move v7, v1

    :goto_0
    iget v0, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->mMovementPos:I

    const/4 v1, -0x1

    if-eq v0, v6, :cond_1

    if-eq v0, v7, :cond_1

    iput v1, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->mMovementPos:I

    :cond_1
    const/4 v8, 0x0

    if-ltz v6, :cond_7

    if-ltz v7, :cond_7

    iget v0, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->mMovementPos:I

    if-ne v0, v1, :cond_2

    iput v7, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->mMovementPos:I

    :cond_2
    invoke-virtual {p4}, Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityNodeInfo;->getNativeId()I

    move-result v3

    iget v5, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->mMovementPos:I

    move-object v0, p0

    move v1, p2

    move v2, p3

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->getNewCursorPosition(ZIILcom/samsung/android/sdk/pen/document/SpenObjectTextBox;I)[I

    move-result-object v0

    if-nez v0, :cond_3

    return v8

    :cond_3
    iget v1, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->mMovementPos:I

    const/4 v2, 0x1

    if-ne v1, v6, :cond_4

    aget v6, v0, v8

    iput v6, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->mMovementPos:I

    goto :goto_1

    :cond_4
    if-ne v1, v7, :cond_5

    aget v7, v0, v2

    iput v7, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->mMovementPos:I

    :cond_5
    :goto_1
    if-le v6, v7, :cond_6

    move v9, v7

    move v7, v6

    move v6, v9

    :cond_6
    invoke-virtual {p1, v6, v7}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->setSelection(II)V

    return v2

    :cond_7
    return v8
.end method

.method private doMoveCursor(Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;ZILcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityNodeInfo;Z)Z
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getText()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_4

    :cond_0
    if-nez p5, :cond_2

    iget v1, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->mCurrentCursorPos:I

    if-gez v1, :cond_4

    if-eqz p2, :cond_1

    move v7, v0

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getCursorPosition()I

    move-result v1

    if-gez v1, :cond_4

    if-nez p2, :cond_3

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getSelectedStart()I

    move-result v1

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getSelectedEnd()I

    move-result v1

    :cond_4
    :goto_0
    move v7, v1

    :goto_1
    if-gez v7, :cond_5

    return v0

    :cond_5
    invoke-virtual {p4}, Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityNodeInfo;->getNativeId()I

    move-result v5

    move-object v2, p0

    move v3, p2

    move v4, p3

    move-object v6, p1

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->getNewCursorPosition(ZIILcom/samsung/android/sdk/pen/document/SpenObjectTextBox;I)[I

    move-result-object p4

    if-nez p4, :cond_6

    const/4 p1, -0x1

    iput p1, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->mCurrentCursorPos:I

    return v0

    :cond_6
    const/4 v1, 0x1

    if-eqz p2, :cond_7

    aget v2, p4, v1

    goto :goto_2

    :cond_7
    aget v2, p4, v0

    :goto_2
    iput v2, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->mCurrentCursorPos:I

    if-eqz p5, :cond_8

    iget p5, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->mCurrentCursorPos:I

    invoke-virtual {p1, p5}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->setCursorPosition(I)V

    :cond_8
    if-eqz p2, :cond_9

    const/16 p2, 0x100

    goto :goto_3

    :cond_9
    const/16 p2, 0x200

    :goto_3
    const/high16 p5, 0x20000

    invoke-static {p5}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p5

    iget-object v2, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->mHost:Landroid/view/View;

    invoke-virtual {v2, p5}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {p5}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    aget p1, p4, v0

    invoke-virtual {p5, p1}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    aget p1, p4, v1

    invoke-virtual {p5, p1}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    invoke-virtual {p5, p2}, Landroid/view/accessibility/AccessibilityEvent;->setAction(I)V

    invoke-virtual {p5, p3}, Landroid/view/accessibility/AccessibilityEvent;->setMovementGranularity(I)V

    iget-object p1, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->mHost:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->mHost:Landroid/view/View;

    invoke-interface {p1, p2, p5}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    return v1

    :cond_a
    :goto_4
    return v0
.end method

.method private findNextFocusByDirection(I)Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityNodeInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->mNodeList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    if-gtz p1, :cond_1

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->getFirstNodeInScreen(I)Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityNodeInfo;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->getLastNodeInScreen(I)Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityNodeInfo;

    move-result-object p1

    return-object p1
.end method

.method private findNextFocusByIndex(I)Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityNodeInfo;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->mNodeList:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityNodeInfo;

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->mHost:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityNodeInfo;->getBound()Landroid/graphics/Rect;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v0

    :cond_2
    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityNodeInfo;->getBound()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget v1, v1, Landroid/graphics/Rect;->top:I

    if-gt v0, v1, :cond_3

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->getFirstNodeInScreen(I)Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityNodeInfo;

    move-result-object p1

    return-object p1

    :cond_3
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->getLastNodeInScreen(I)Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityNodeInfo;

    move-result-object p1

    return-object p1
.end method

.method private getDownNodeId(I)I
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->mNodeList:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->getNodeIndex(I)I

    move-result p1

    if-ltz p1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->mNodeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->mNodeList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityNodeInfo;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityNodeInfo;->getBound()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->mNodeList:Ljava/util/List;

    add-int/lit8 p1, p1, 0x1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityNodeInfo;

    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityNodeInfo;->getBound()Landroid/graphics/Rect;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->mNodeList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge p1, v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->mNodeList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityNodeInfo;

    if-eqz v3, :cond_0

    const/16 v4, 0x82

    invoke-virtual {v3}, Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityNodeInfo;->getBound()Landroid/graphics/Rect;

    move-result-object v5

    invoke-direct {p0, v4, v0, v5, v2}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->isBetterCandidate(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityNodeInfo;->getBound()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    const/4 p1, -0x1

    return p1
.end method

.method private getFirstNodeInScreen(I)Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityNodeInfo;
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->mNodeList:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->mHost:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->mHost:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    iget-object v2, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->mNodeList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-ge p1, v2, :cond_3

    iget-object v1, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->mNodeList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityNodeInfo;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityNodeInfo;->getBound()Landroid/graphics/Rect;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-object v1
.end method

.method private getId(II)I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->mNodeList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->mNodeList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityNodeInfo;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityNodeInfo;->getBound()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    return p1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method private getLastNodeInScreen(I)Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityNodeInfo;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->mNodeList:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->mHost:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->mHost:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    iget-object v2, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->mNodeList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 p1, v2, -0x1

    :goto_0
    if-ltz p1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->mNodeList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityNodeInfo;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityNodeInfo;->getBound()Landroid/graphics/Rect;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-object v1
.end method

.method private getNewCursorPosition(ZIILcom/samsung/android/sdk/pen/document/SpenObjectTextBox;I)[I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->mListener:Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityDelegateListener;

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    if-eqz p5, :cond_2

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p4}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getText()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p4

    if-lt p5, p4, :cond_1

    goto :goto_0

    :cond_1
    iget-object p4, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->mListener:Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityDelegateListener;

    invoke-interface {p4, p3, p5, p1, p2}, Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityDelegateListener;->getCursorPos(IIZI)[I

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private getNextNodeId(I)I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->mNodeList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->getNodeIndex(I)I

    move-result p1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->mNodeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->mNodeList:Ljava/util/List;

    add-int/lit8 p1, p1, 0x1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityNodeInfo;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method private getNodeIndex(I)I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->mNodeList:Ljava/util/List;

    if-eqz v0, :cond_1

    if-lez p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->mNodeList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->mNodeList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityNodeInfo;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    if-ne v1, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method private getNodeInfo(I)Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityNodeInfo;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->getNodeInfo(IZ)Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityNodeInfo;

    move-result-object p1

    return-object p1
.end method

.method private getNodeInfo(IZ)Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityNodeInfo;
    .locals 3

    if-ltz p1, :cond_4

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->mNodeList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityNodeInfo;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_1
    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->mHashMap:Ljava/util/HashMap;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityNodeInfo;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    if-ne v1, p1, :cond_2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityNodeInfo;

    return-object p1

    :cond_3
    iget-object p2, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->mNodeList:Ljava/util/List;

    if-eqz p2, :cond_4

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_4

    iget-object p2, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->mNodeList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityNodeInfo;

    return-object p1

    :cond_4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getNodeInfo null = id:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AccessibilityDelegateImpl"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method private getNodeList(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->mListener:Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityDelegateListener;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityDelegateListener;->getNodeList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->setNodeListWithCache(Ljava/util/List;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->mNodeList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityNodeInfo;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->updateFocus(I)V

    :cond_1
    return-void
.end method

.method private getPrevNodeId(I)I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->mNodeList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->getNodeIndex(I)I

    move-result p1

    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->mNodeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->mNodeList:Ljava/util/List;

    add-int/lit8 p1, p1, -0x1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityNodeInfo;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method private getUpNodeId(I)I
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->mNodeList:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->getNodeIndex(I)I

    move-result p1

    if-lez p1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->mNodeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->mNodeList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityNodeInfo;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityNodeInfo;->getBound()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->mNodeList:Ljava/util/List;

    add-int/lit8 p1, p1, -0x1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityNodeInfo;

    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityNodeInfo;->getBound()Landroid/graphics/Rect;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    if-ltz p1, :cond_1

    iget-object v3, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->mNodeList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityNodeInfo;

    if-eqz v3, :cond_0

    const/16 v4, 0x21

    invoke-virtual {v3}, Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityNodeInfo;->getBound()Landroid/graphics/Rect;

    move-result-object v5

    invoke-direct {p0, v4, v0, v5, v2}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->isBetterCandidate(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityNodeInfo;->getBound()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_0
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    const/4 p1, -0x1

    return p1
.end method

.method private getWeightedDistanceFor(II)I
    .locals 1

    mul-int/lit8 v0, p1, 0xd

    mul-int/2addr v0, p1

    mul-int/2addr p2, p2

    add-int/2addr v0, p2

    return v0
.end method

.method private hasFocus()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->mDelegate:Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl$SpenAccessibilityDelegate;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/customview/widget/ExploreByTouchHelper;->getAccessibilityFocusedVirtualViewId()I

    move-result v0

    if-ltz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->mHost:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->isAccessibilityFocused()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private invalidateRoot()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->mDelegate:Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl$SpenAccessibilityDelegate;

    invoke-virtual {v0}, Landroidx/customview/widget/ExploreByTouchHelper;->invalidateRoot()V

    return-void
.end method

.method private invalidateVirtualView(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->mDelegate:Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl$SpenAccessibilityDelegate;

    invoke-virtual {v0, p1}, Landroidx/customview/widget/ExploreByTouchHelper;->invalidateVirtualView(I)V

    return-void
.end method

.method private isBetterCandidate(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 3
    .param p2    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p2, p3, p1}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->isCandidate(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0, p2, p4, p1}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->isCandidate(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    return v2

    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->beamBeats(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    :cond_2
    invoke-direct {p0, p1, p2, p4, p3}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->beamBeats(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->majorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->minorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result p3

    invoke-direct {p0, v0, p3}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->getWeightedDistanceFor(II)I

    move-result p3

    invoke-direct {p0, p1, p2, p4}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->majorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v0

    invoke-direct {p0, p1, p2, p4}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->minorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->getWeightedDistanceFor(II)I

    move-result p1

    if-ge p3, p1, :cond_4

    move v1, v2

    :cond_4
    return v1
.end method

.method private isCandidate(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Z
    .locals 3
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/16 v0, 0x11

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p3, v0, :cond_6

    const/16 v0, 0x21

    if-eq p3, v0, :cond_4

    const/16 v0, 0x42

    if-eq p3, v0, :cond_2

    const/16 v0, 0x82

    if-eq p3, v0, :cond_0

    const-string p1, "AccessibilityDelegateImpl"

    const-string p2, "isCandidate - direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    iget p3, p1, Landroid/graphics/Rect;->top:I

    iget v0, p2, Landroid/graphics/Rect;->top:I

    if-ge p3, v0, :cond_1

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    if-ge p1, p2, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    return v1

    :cond_2
    iget p3, p1, Landroid/graphics/Rect;->left:I

    iget v0, p2, Landroid/graphics/Rect;->left:I

    if-ge p3, v0, :cond_3

    iget p1, p1, Landroid/graphics/Rect;->right:I

    iget p2, p2, Landroid/graphics/Rect;->right:I

    if-ge p1, p2, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    return v1

    :cond_4
    iget p3, p1, Landroid/graphics/Rect;->bottom:I

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    if-le p3, v0, :cond_5

    iget p1, p1, Landroid/graphics/Rect;->top:I

    iget p2, p2, Landroid/graphics/Rect;->top:I

    if-le p1, p2, :cond_5

    goto :goto_2

    :cond_5
    move v1, v2

    :goto_2
    return v1

    :cond_6
    iget p3, p1, Landroid/graphics/Rect;->right:I

    iget v0, p2, Landroid/graphics/Rect;->right:I

    if-le p3, v0, :cond_7

    iget p1, p1, Landroid/graphics/Rect;->left:I

    iget p2, p2, Landroid/graphics/Rect;->left:I

    if-le p1, p2, :cond_7

    goto :goto_3

    :cond_7
    move v1, v2

    :goto_3
    return v1
.end method

.method private isFocusInScreen()Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->mDelegate:Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl$SpenAccessibilityDelegate;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/customview/widget/ExploreByTouchHelper;->getAccessibilityFocusedVirtualViewId()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->getNodeInfo(IZ)Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityNodeInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->mHost:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityNodeInfo;->getBound()Landroid/graphics/Rect;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    return v0

    :cond_0
    return v1
.end method

.method private isInScreen(I)Z
    .locals 3

    const/4 v0, 0x0

    if-ltz p1, :cond_0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->getNodeInfo(IZ)Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityNodeInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->mHost:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityNodeInfo;->getBound()Landroid/graphics/Rect;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result p1

    return p1

    :cond_0
    return v0
.end method

.method private isToDirectionOf(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 3
    .param p2    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/16 v0, 0x11

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_6

    const/16 v0, 0x21

    if-eq p1, v0, :cond_4

    const/16 v0, 0x42

    if-eq p1, v0, :cond_2

    const/16 v0, 0x82

    if-eq p1, v0, :cond_0

    return v2

    :cond_0
    iget p1, p2, Landroid/graphics/Rect;->bottom:I

    iget p2, p3, Landroid/graphics/Rect;->top:I

    if-gt p1, p2, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    return v1

    :cond_2
    iget p1, p2, Landroid/graphics/Rect;->right:I

    iget p2, p3, Landroid/graphics/Rect;->left:I

    if-gt p1, p2, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    return v1

    :cond_4
    iget p1, p2, Landroid/graphics/Rect;->top:I

    iget p2, p3, Landroid/graphics/Rect;->bottom:I

    if-lt p1, p2, :cond_5

    goto :goto_2

    :cond_5
    move v1, v2

    :goto_2
    return v1

    :cond_6
    iget p1, p2, Landroid/graphics/Rect;->left:I

    iget p2, p3, Landroid/graphics/Rect;->right:I

    if-lt p1, p2, :cond_7

    goto :goto_3

    :cond_7
    move v1, v2

    :goto_3
    return v1
.end method

.method private keyToDirection(I)I
    .locals 1

    const/16 v0, 0x13

    if-eq p1, v0, :cond_2

    const/16 v0, 0x15

    if-eq p1, v0, :cond_1

    const/16 v0, 0x16

    if-eq p1, v0, :cond_0

    const/16 p1, 0x82

    return p1

    :cond_0
    const/16 p1, 0x42

    return p1

    :cond_1
    const/16 p1, 0x11

    return p1

    :cond_2
    const/16 p1, 0x21

    return p1
.end method

.method private majorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .locals 0
    .param p2    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->majorAxisDistanceRaw(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result p1

    const/4 p2, 0x0

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method private majorAxisDistanceRaw(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .locals 1
    .param p2    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/16 v0, 0x11

    if-eq p1, v0, :cond_3

    const/16 v0, 0x21

    if-eq p1, v0, :cond_2

    const/16 v0, 0x42

    if-eq p1, v0, :cond_1

    const/16 v0, 0x82

    if-eq p1, v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    iget p1, p3, Landroid/graphics/Rect;->top:I

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    :goto_0
    sub-int/2addr p1, p2

    return p1

    :cond_1
    iget p1, p3, Landroid/graphics/Rect;->left:I

    iget p2, p2, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_2
    iget p1, p2, Landroid/graphics/Rect;->top:I

    iget p2, p3, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :cond_3
    iget p1, p2, Landroid/graphics/Rect;->left:I

    iget p2, p3, Landroid/graphics/Rect;->right:I

    goto :goto_0
.end method

.method private majorAxisDistanceToFarEdge(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .locals 0
    .param p2    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->majorAxisDistanceToFarEdgeRaw(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result p1

    const/4 p2, 0x1

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method private majorAxisDistanceToFarEdgeRaw(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .locals 1
    .param p2    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/16 v0, 0x11

    if-eq p1, v0, :cond_3

    const/16 v0, 0x21

    if-eq p1, v0, :cond_2

    const/16 v0, 0x42

    if-eq p1, v0, :cond_1

    const/16 v0, 0x82

    if-eq p1, v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    iget p1, p3, Landroid/graphics/Rect;->bottom:I

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    :goto_0
    sub-int/2addr p1, p2

    return p1

    :cond_1
    iget p1, p3, Landroid/graphics/Rect;->right:I

    iget p2, p2, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_2
    iget p1, p2, Landroid/graphics/Rect;->top:I

    iget p2, p3, Landroid/graphics/Rect;->top:I

    goto :goto_0

    :cond_3
    iget p1, p2, Landroid/graphics/Rect;->left:I

    iget p2, p3, Landroid/graphics/Rect;->left:I

    goto :goto_0
.end method

.method private minorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .locals 1
    .param p2    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/16 v0, 0x11

    if-eq p1, v0, :cond_1

    const/16 v0, 0x21

    if-eq p1, v0, :cond_0

    const/16 v0, 0x42

    if-eq p1, v0, :cond_1

    const/16 v0, 0x82

    if-eq p1, v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    iget p1, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p1, p2

    iget p2, p3, Landroid/graphics/Rect;->left:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p3

    :goto_0
    div-int/lit8 p3, p3, 0x2

    add-int/2addr p2, p3

    sub-int/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    return p1

    :cond_1
    iget p1, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p1, p2

    iget p2, p3, Landroid/graphics/Rect;->top:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p3

    goto :goto_0
.end method

.method private moveBottom(I)I
    .locals 2

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->mHost:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->getNodeInfo(IZ)Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityNodeInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityNodeInfo;->getBound()Landroid/graphics/Rect;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, p1

    add-int/lit8 v1, v0, -0xa

    :cond_0
    return v1
.end method

.method private moveKeyFocus(I)Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->mDelegate:Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl$SpenAccessibilityDelegate;

    invoke-virtual {v0}, Landroidx/customview/widget/ExploreByTouchHelper;->getKeyboardFocusedVirtualViewId()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->getFirstNodeInScreen(I)Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityNodeInfo;

    move-result-object v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :cond_1
    const/high16 v2, -0x80000000

    const/4 v3, 0x1

    if-eq p1, v3, :cond_5

    const/4 v3, 0x2

    if-eq p1, v3, :cond_4

    const/16 v3, 0x11

    if-eq p1, v3, :cond_5

    const/16 v3, 0x21

    if-eq p1, v3, :cond_3

    const/16 v3, 0x42

    if-eq p1, v3, :cond_4

    const/16 v3, 0x82

    if-eq p1, v3, :cond_2

    const-string p1, "AccessibilityDelegateImpl"

    const-string v0, "direction must be one of {FOCUS_FORWARD, FOCUS_BACKWARD, FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_2
    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->getDownNodeId(I)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->isInScreen(I)Z

    move-result p1

    if-nez p1, :cond_6

    :goto_0
    invoke-direct {p0, v2}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->moveBottom(I)I

    move-result p1

    :goto_1
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->scroll(I)V

    goto :goto_3

    :cond_3
    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->getUpNodeId(I)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->isInScreen(I)Z

    move-result p1

    if-nez p1, :cond_6

    :goto_2
    invoke-direct {p0, v2}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->moveTop(I)I

    move-result p1

    goto :goto_1

    :cond_4
    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->getNextNodeId(I)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->isInScreen(I)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_5
    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->getPrevNodeId(I)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->isInScreen(I)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_2

    :cond_6
    :goto_3
    if-gez v2, :cond_7

    goto :goto_4

    :cond_7
    iget-object p1, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->mDelegate:Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl$SpenAccessibilityDelegate;

    invoke-virtual {p1, v2}, Landroidx/customview/widget/ExploreByTouchHelper;->requestKeyboardFocusForVirtualView(I)Z

    move-result v1

    :goto_4
    return v1
.end method

.method private moveTop(I)I
    .locals 2

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->mHost:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->getNodeInfo(IZ)Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityNodeInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityNodeInfo;->getBound()Landroid/graphics/Rect;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, p1

    add-int/lit8 v1, v0, 0xa

    :cond_0
    return v1
.end method

.method private performActionForTextContent(ILandroid/os/Bundle;Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityNodeInfo;)Z
    .locals 9

    const/4 v0, 0x0

    if-eqz p3, :cond_8

    iget-object v1, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->mListener:Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityDelegateListener;

    if-nez v1, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p3}, Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityNodeInfo;->getNativeId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityDelegateListener;->getObjectByNativeId(I)Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    move-result-object v1

    if-eqz v1, :cond_8

    instance-of v2, v1, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

    if-nez v2, :cond_1

    goto/16 :goto_2

    :cond_1
    check-cast v1, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

    iput-object v1, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->mSpenObjectTextBox:Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getText()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    return v0

    :cond_2
    invoke-virtual {p3}, Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityNodeInfo;->getNativeId()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->mTextNodeNativeId:I

    iget-object v1, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->mListener:Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityDelegateListener;

    invoke-virtual {p3}, Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityNodeInfo;->getNativeId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityDelegateListener;->isNodeInfoFocused(I)Z

    move-result v8

    const/16 v1, 0x100

    if-eq p1, v1, :cond_7

    const/16 v1, 0x200

    if-eq p1, v1, :cond_6

    const/16 p3, 0x4000

    if-eq p1, p3, :cond_5

    const p3, 0x8000

    if-eq p1, p3, :cond_4

    const/high16 p3, 0x10000

    if-eq p1, p3, :cond_5

    const/high16 p3, 0x20000

    if-eq p1, p3, :cond_3

    goto :goto_2

    :cond_3
    if-eqz v8, :cond_8

    iget-object p1, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->mSpenObjectTextBox:Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

    invoke-direct {p0, p2, p1}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->performSetSelectAction(Landroid/os/Bundle;Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;)Z

    move-result p1

    :goto_0
    move v0, p1

    goto :goto_2

    :cond_4
    if-eqz v8, :cond_8

    iget-object p1, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->mListener:Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityDelegateListener;

    const p2, 0x1020022

    invoke-interface {p1, p2}, Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityDelegateListener;->onPerformContextMenuAction(I)Z

    move-result p1

    goto :goto_0

    :cond_5
    if-eqz v8, :cond_8

    iget-object p2, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->mSpenObjectTextBox:Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->performCopyAction(ILcom/samsung/android/sdk/pen/document/SpenObjectTextBox;)Z

    move-result p1

    goto :goto_0

    :cond_6
    iget-object v6, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->mSpenObjectTextBox:Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

    const/4 v7, 0x0

    goto :goto_1

    :cond_7
    iget-object v6, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->mSpenObjectTextBox:Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

    const/4 v7, 0x1

    :goto_1
    move-object v3, p0

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->performMovementAction(Landroid/os/Bundle;Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityNodeInfo;Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;ZZ)Z

    move-result v0

    :cond_8
    :goto_2
    return v0
.end method

.method private performCopyAction(ILcom/samsung/android/sdk/pen/document/SpenObjectTextBox;)Z
    .locals 3

    invoke-virtual {p2}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getText()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->mListener:Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityDelegateListener;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getSelectedStart()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    invoke-virtual {p2}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getSelectedEnd()I

    move-result p2

    if-eq p2, v2, :cond_2

    const/16 p2, 0x4000

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->mListener:Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityDelegateListener;

    const p2, 0x1020021

    :goto_0
    invoke-interface {p1, p2}, Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityDelegateListener;->onPerformContextMenuAction(I)Z

    move-result p1

    return p1

    :cond_1
    const/high16 p2, 0x10000

    if-ne p1, p2, :cond_2

    iget-object p1, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->mListener:Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityDelegateListener;

    const p2, 0x1020020

    goto :goto_0

    :cond_2
    :goto_1
    return v1
.end method

.method private performMovementAction(Landroid/os/Bundle;Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityNodeInfo;Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;ZZ)Z
    .locals 8

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const-string v1, "ACTION_ARGUMENT_MOVEMENT_GRANULARITY_INT"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string v1, "ACTION_ARGUMENT_EXTEND_SELECTION_BOOLEAN"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    if-eqz p5, :cond_1

    invoke-direct {p0, p3, p4, v5, p2}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->doExtendSelection(Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;ZILcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityNodeInfo;)Z

    move-result v0

    :cond_1
    return v0

    :cond_2
    move-object v2, p0

    move-object v3, p3

    move v4, p4

    move-object v6, p2

    move v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->doMoveCursor(Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;ZILcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityNodeInfo;Z)Z

    move-result p1

    return p1
.end method

.method private performSetSelectAction(Landroid/os/Bundle;Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const-string v1, "ACTION_ARGUMENT_SELECTION_START_INT"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "ACTION_ARGUMENT_SELECTION_END_INT"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    if-ne p1, v2, :cond_1

    return v0

    :cond_1
    invoke-virtual {p2}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getText()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    return v0

    :cond_2
    if-ne v1, p1, :cond_3

    if-ltz v1, :cond_6

    invoke-virtual {p2}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-gt v1, p1, :cond_6

    invoke-virtual {p2, v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->setCursorPosition(I)V

    goto :goto_1

    :cond_3
    if-gez v1, :cond_4

    goto :goto_0

    :cond_4
    move v0, v1

    :goto_0
    invoke-virtual {p2}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le p1, v1, :cond_5

    invoke-virtual {p2}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    :cond_5
    invoke-virtual {p2, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->setSelection(II)V

    :cond_6
    :goto_1
    const/4 p1, 0x1

    return p1
.end method

.method private scroll(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->mListener:Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityDelegateListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    int-to-float p1, p1

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityDelegateListener;->onScroll(FF)V

    :cond_0
    return-void
.end method

.method private setEnabled()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/sdk/composer/util/SpenComposerUtil;->isAccessibilityEnabled(Landroid/content/Context;)Z

    move-result v0

    iget-boolean v1, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->mIsEnabled:Z

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->clearCache()V

    iput-boolean v0, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->mIsEnabled:Z

    :cond_0
    return-void
.end method

.method private setFocus(I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->mHost:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->mDelegate:Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl$SpenAccessibilityDelegate;

    invoke-virtual {v1, v0}, Landroidx/customview/widget/ExploreByTouchHelper;->getAccessibilityNodeProvider(Landroid/view/View;)Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;

    move-result-object v0

    const/16 v1, 0x40

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;->performAction(IILandroid/os/Bundle;)Z

    return-void
.end method

.method private setNodeListWithCache(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityNodeInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->mHashMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->mHashMap:Ljava/util/HashMap;

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->mNodeList:Ljava/util/List;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityNodeInfo;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityNodeInfo;->getNativeId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityNodeInfo;

    iget-object v3, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->mHashMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityNodeInfo;->getNativeId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityNodeInfo;

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityNodeInfo;->getBound()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityNodeInfo;->setBound(Landroid/graphics/Rect;)V

    invoke-virtual {v2}, Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityNodeInfo;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityNodeInfo;->setDescription(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityNodeInfo;->getRoleDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityNodeInfo;->setRoleDescription(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityNodeInfo;->getStateDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityNodeInfo;->setStateDescription(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityNodeInfo;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityNodeInfo;->setText(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityNodeInfo;->getPropertyFlag()I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityNodeInfo;->setPropertyFlag(I)V

    move-object v2, v3

    :cond_2
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityNodeInfo;->getNativeId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->mHashMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    iput-object v0, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->mHashMap:Ljava/util/HashMap;

    iget-object p1, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->mNodeList:Ljava/util/List;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_4
    iput-object v1, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->mNodeList:Ljava/util/List;

    :cond_5
    return-void
.end method

.method private updateFocus(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->mHost:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->mNodeList:Ljava/util/List;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->isFocusInScreen()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->mDelegate:Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl$SpenAccessibilityDelegate;

    invoke-virtual {v0}, Landroidx/customview/widget/ExploreByTouchHelper;->getAccessibilityFocusedVirtualViewId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->getNodeIndex(I)I

    move-result v0

    if-gez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->findNextFocusByDirection(I)Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityNodeInfo;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->findNextFocusByIndex(I)Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityNodeInfo;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->setFocus(I)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->mDelegate:Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl$SpenAccessibilityDelegate;

    invoke-virtual {p1}, Landroidx/customview/widget/ExploreByTouchHelper;->getAccessibilityFocusedVirtualViewId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->invalidateVirtualView(I)V

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->mContext:Landroid/content/Context;

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-object v1, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->mStateChangeListener:Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->removeAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->mHost:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->mAccessibilityContentResolver:Lcom/samsung/android/sdk/composer/accessibility/AccessibilityContentObserver;

    iget-object v2, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityContentObserver;->unregister(Landroid/content/ContentResolver;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->mInvalidateHandler:Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl$SpenAccessibilityHandler;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl$SpenAccessibilityHandler;->close()V

    iput-object v1, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->mInvalidateHandler:Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl$SpenAccessibilityHandler;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->mScrollAnimator:Landroid/animation/TimeAnimator;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/animation/TimeAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->mScrollAnimator:Landroid/animation/TimeAnimator;

    invoke-virtual {v0}, Landroid/animation/TimeAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->mScrollAnimator:Landroid/animation/TimeAnimator;

    invoke-virtual {v0}, Landroid/animation/TimeAnimator;->cancel()V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->mScrollAnimator:Landroid/animation/TimeAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/TimeAnimator;->setTimeListener(Landroid/animation/TimeAnimator$TimeListener;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->mScrollAnimator:Landroid/animation/TimeAnimator;

    invoke-virtual {v0}, Landroid/animation/TimeAnimator;->removeAllListeners()V

    iput-object v1, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->mScrollAnimator:Landroid/animation/TimeAnimator;

    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->clearCache()V

    iput-object v1, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->mHost:Landroid/view/View;

    iput-object v1, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->mContext:Landroid/content/Context;

    iput-object v1, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->mListener:Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityDelegateListener;

    iput-object v1, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->mDelegate:Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl$SpenAccessibilityDelegate;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->mIsEnabled:Z

    return-void
.end method

.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->mDelegate:Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl$SpenAccessibilityDelegate;

    invoke-virtual {v0, p1}, Landroidx/customview/widget/ExploreByTouchHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5

    invoke-virtual {p0}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_6

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v3, 0x3d

    if-eq v0, v3, :cond_4

    const/16 v3, 0x42

    if-eq v0, v3, :cond_3

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->keyToDirection(I)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    add-int/2addr p1, v2

    move v3, v1

    :goto_0
    if-ge v1, p1, :cond_2

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->moveKeyFocus(I)Z

    move-result v4

    if-eqz v4, :cond_2

    add-int/lit8 v1, v1, 0x1

    move v3, v2

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_1

    :cond_3
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-nez p1, :cond_6

    invoke-direct {p0}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->clickKeyboardFocusedVirtualView()Z

    move v1, v2

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->moveKeyFocus(I)Z

    move-result v1

    goto :goto_1

    :cond_5
    invoke-virtual {p1, v2}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-direct {p0, v2}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->moveKeyFocus(I)Z

    move-result v1

    :cond_6
    :goto_1
    return v1

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    const-class v0, Landroid/widget/ScrollView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->mIsEnabled:Z

    return v0
.end method

.method public onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->mDelegate:Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl$SpenAccessibilityDelegate;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/customview/widget/ExploreByTouchHelper;->onFocusChanged(ZILandroid/graphics/Rect;)V

    return-void
.end method

.method public onScrollChanged(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->mInvalidateHandler:Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl$SpenAccessibilityHandler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl$SpenAccessibilityHandler;->invalidateRoot(I)V

    :cond_0
    return-void
.end method
