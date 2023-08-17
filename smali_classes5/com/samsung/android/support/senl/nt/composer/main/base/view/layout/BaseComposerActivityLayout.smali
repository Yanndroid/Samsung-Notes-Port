.class public Lcom/samsung/android/support/senl/nt/composer/main/base/view/layout/BaseComposerActivityLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/base/view/layout/BaseComposerActivityLayout$OnDispatchKeyEvent;
    }
.end annotation


# static fields
.field private static final IS_AVAILABLE_OS:Z


# instance fields
.field private final mBaseLocation:[I

.field private mLastTouchEventToolType:I

.field private mOnDispatchKeyEvent:Lcom/samsung/android/support/senl/nt/composer/main/base/view/layout/BaseComposerActivityLayout$OnDispatchKeyEvent;

.field private final mTargetLocation:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-gt v0, v1, :cond_0

    const/16 v1, 0x17

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/layout/BaseComposerActivityLayout;->IS_AVAILABLE_OS:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x2

    new-array v0, p1, [I

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/layout/BaseComposerActivityLayout;->mBaseLocation:[I

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/layout/BaseComposerActivityLayout;->mTargetLocation:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x2

    new-array p2, p1, [I

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/layout/BaseComposerActivityLayout;->mBaseLocation:[I

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/layout/BaseComposerActivityLayout;->mTargetLocation:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x2

    new-array p2, p1, [I

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/layout/BaseComposerActivityLayout;->mBaseLocation:[I

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/layout/BaseComposerActivityLayout;->mTargetLocation:[I

    return-void
.end method

.method private contains(Landroid/view/View;II)Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/layout/BaseComposerActivityLayout;->mTargetLocation:[I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/layout/BaseComposerActivityLayout;->mTargetLocation:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x1

    if-gt v2, p2, :cond_0

    aget v0, v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v0, v2

    if-gt p2, v0, :cond_0

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/layout/BaseComposerActivityLayout;->mTargetLocation:[I

    aget v0, p2, v3

    if-gt v0, p3, :cond_0

    aget p2, p2, v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr p2, p1

    if-gt p3, p2, :cond_0

    move v1, v3

    :cond_0
    return v1
.end method

.method private resolveTargetView(Landroid/view/View;II)Landroid/view/View;
    .locals 5

    instance-of v0, p1, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/layout/BaseComposerActivityLayout;->contains(Landroid/view/View;II)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_1

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3, p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/layout/BaseComposerActivityLayout;->resolveTargetView(Landroid/view/View;II)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p3

    if-nez p3, :cond_3

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getAlpha()F

    move-result p3

    cmpl-float p3, p3, v1

    if-eqz p3, :cond_3

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result p2

    if-eqz p2, :cond_3

    return-object p1

    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/layout/BaseComposerActivityLayout;->contains(Landroid/view/View;II)Z

    move-result p2

    if-eqz p2, :cond_3

    return-object p1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/layout/BaseComposerActivityLayout;->mOnDispatchKeyEvent:Lcom/samsung/android/support/senl/nt/composer/main/base/view/layout/BaseComposerActivityLayout$OnDispatchKeyEvent;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/layout/BaseComposerActivityLayout$OnDispatchKeyEvent;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/layout/BaseComposerActivityLayout;->mOnDispatchKeyEvent:Lcom/samsung/android/support/senl/nt/composer/main/base/view/layout/BaseComposerActivityLayout$OnDispatchKeyEvent;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/layout/BaseComposerActivityLayout$OnDispatchKeyEvent;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/layout/BaseComposerActivityLayout;->mOnDispatchKeyEvent:Lcom/samsung/android/support/senl/nt/composer/main/base/view/layout/BaseComposerActivityLayout$OnDispatchKeyEvent;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/layout/BaseComposerActivityLayout$OnDispatchKeyEvent;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/layout/BaseComposerActivityLayout;->mLastTouchEventToolType:I

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public getLastTouchEventToolType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/layout/BaseComposerActivityLayout;->mLastTouchEventToolType:I

    return v0
.end method

.method public onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;
    .locals 6

    sget-boolean v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/layout/BaseComposerActivityLayout;->IS_AVAILABLE_OS:Z

    if-eqz v0, :cond_1

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/layout/BaseComposerActivityLayout;->mBaseLocation:[I

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->getLocationOnScreen([I)V

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/layout/BaseComposerActivityLayout;->mBaseLocation:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    add-int/2addr v1, v2

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v2, v2

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/layout/BaseComposerActivityLayout;->mBaseLocation:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    add-int/2addr v2, v4

    invoke-direct {p0, p0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/layout/BaseComposerActivityLayout;->resolveTargetView(Landroid/view/View;II)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/layout/BaseComposerActivityLayout;->mTargetLocation:[I

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/layout/BaseComposerActivityLayout;->mBaseLocation:[I

    aget v2, v0, v3

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/layout/BaseComposerActivityLayout;->mTargetLocation:[I

    aget v3, v4, v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    aget v0, v0, v5

    aget v3, v4, v5

    sub-int/2addr v0, v3

    int-to-float v0, v0

    invoke-virtual {p1, v2, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    invoke-virtual {v1, p1, p2}, Landroid/view/View;->onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;

    move-result-object p1

    return-object p1
.end method

.method public setDispatchKeyEvent(Lcom/samsung/android/support/senl/nt/composer/main/base/view/layout/BaseComposerActivityLayout$OnDispatchKeyEvent;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/layout/BaseComposerActivityLayout;->mOnDispatchKeyEvent:Lcom/samsung/android/support/senl/nt/composer/main/base/view/layout/BaseComposerActivityLayout$OnDispatchKeyEvent;

    return-void
.end method
