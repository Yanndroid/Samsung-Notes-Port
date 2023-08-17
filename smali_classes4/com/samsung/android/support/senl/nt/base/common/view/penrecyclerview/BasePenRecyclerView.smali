.class public Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/IBasePenRecyclerView;


# static fields
.field private static final TAG:Ljava/lang/String; = "BaseRecyclerView"


# instance fields
.field private mIsHoverEnabled:Z

.field private mIsScrollEnabled:Z

.field private mViewModel:Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerView;->mIsScrollEnabled:Z

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerView;->mIsHoverEnabled:Z

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerView;->mIsScrollEnabled:Z

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerView;->mIsHoverEnabled:Z

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerView;->mIsScrollEnabled:Z

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerView;->mIsHoverEnabled:Z

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerView;->init()V

    return-void
.end method

.method private dispatchTouchEventInternal(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    float-to-int v0, v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    int-to-float v0, v0

    cmpg-float v0, v2, v0

    if-gtz v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerView;->mViewModel:Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2, p1, v1}, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;->processTouchEvent(Landroid/content/Context;Landroid/view/MotionEvent;Z)V

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method private init()V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerView;->createViewModel()Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerView;->mViewModel:Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    return-void
.end method


# virtual methods
.method public cancelDragMouseMultiSelection()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerView;->mViewModel:Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;->cancelDragMouseMultiSelection()V

    return-void
.end method

.method public createViewModel()Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;-><init>(Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/IBasePenRecyclerView;)V

    return-object v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x5c

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_2

    const/16 v1, 0x5d

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    invoke-virtual {p0, v3, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    sub-int/2addr p1, v2

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    :cond_1
    return v2

    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    neg-int p1, p1

    invoke-virtual {p0, v3, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    :cond_3
    return v2

    :cond_4
    :goto_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerView;->dispatchTouchEventInternal(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public enableHover(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerView;->mIsHoverEnabled:Z

    return-void
.end method

.method public enableScroll(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerView;->mIsScrollEnabled:Z

    return-void
.end method

.method public getGapStrategy()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onInterceptHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerView;->mIsHoverEnabled:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerView;->mIsScrollEnabled:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onScrollStateChanged(I)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onScrollStateChanged(I)V

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean v1, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerView;->mIsHoverEnabled:Z

    goto :goto_0

    :cond_1
    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerView;->mIsHoverEnabled:Z

    :goto_0
    return-void
.end method

.method public setGapStrategy(I)V
    .locals 0

    return-void
.end method

.method public setOnPenMultiSelectionListener(Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/OnPenMultiSelectionListener;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerView;->mViewModel:Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;->setOnPenMultiSelectionListener(Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/OnPenMultiSelectionListener;)V

    return-void
.end method

.method public startDragMouseMultiSelection()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerView;->mViewModel:Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;->startDragMouseMultiSelection()V

    return-void
.end method
