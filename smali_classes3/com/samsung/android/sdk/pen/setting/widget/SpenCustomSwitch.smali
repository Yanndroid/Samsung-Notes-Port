.class public Lcom/samsung/android/sdk/pen/setting/widget/SpenCustomSwitch;
.super Landroidx/appcompat/widget/SwitchCompat;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "SpenCustomSwitch"


# instance fields
.field private mParentHorizontalScrollView:Landroid/widget/HorizontalScrollView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Landroidx/appcompat/widget/SwitchCompat;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/SwitchCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private findParentScrollView()V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/widget/SpenCustomSwitch;->mParentHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    if-nez v1, :cond_1

    instance-of v1, v0, Landroid/widget/HorizontalScrollView;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Landroid/widget/HorizontalScrollView;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/widget/SpenCustomSwitch;->mParentHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    :cond_0
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setDisallowInterceptTouchEvent()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/widget/SpenCustomSwitch;->mParentHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->canScrollHorizontally(I)Z

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/widget/SpenCustomSwitch;->mParentHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/HorizontalScrollView;->canScrollHorizontally(I)Z

    move-result v2

    if-nez v0, :cond_1

    if-nez v2, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/widget/SpenCustomSwitch;->mParentHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->requestDisallowInterceptTouchEvent(Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/widget/SpenCustomSwitch;->setDisallowInterceptTouchEvent()V

    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/CompoundButton;->onAttachedToWindow()V

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/widget/SpenCustomSwitch;->findParentScrollView()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/CompoundButton;->onDetachedFromWindow()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/widget/SpenCustomSwitch;->mParentHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    return-void
.end method
