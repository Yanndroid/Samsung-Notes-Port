.class public Lcom/samsung/android/support/senl/nt/base/winset/view/dynamical/VerticalChangeableView;
.super Lcom/samsung/android/support/senl/nt/base/winset/view/dynamical/ChangeableView;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "VerticalChangeableView"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/base/winset/view/dynamical/ChangeableView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/base/winset/view/dynamical/ChangeableView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/base/winset/view/dynamical/ChangeableView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/support/senl/nt/base/winset/view/dynamical/ChangeableView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public bridge synthetic changeSize(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/base/winset/view/dynamical/ChangeableView;->changeSize(I)V

    return-void
.end method

.method public bridge synthetic getLocation()Landroid/graphics/Rect;
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/support/senl/nt/base/winset/view/dynamical/ChangeableView;->getLocation()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTag()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/winset/view/dynamical/VerticalChangeableView;->getTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    const-string v0, "VerticalChangeableView"

    return-object v0
.end method

.method public bridge synthetic hide()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/support/senl/nt/base/winset/view/dynamical/ChangeableView;->hide()V

    return-void
.end method

.method public bridge synthetic isShowing()Z
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/support/senl/nt/base/winset/view/dynamical/ChangeableView;->isShowing()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isSupportAnimation()Z
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/support/senl/nt/base/winset/view/dynamical/ChangeableView;->isSupportAnimation()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic show(I)Z
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/base/winset/view/dynamical/ChangeableView;->show(I)Z

    move-result p1

    return p1
.end method

.method public update(Landroid/view/View;I)V
    .locals 5
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v1, p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/winset/view/dynamical/VerticalChangeableView;->isSupportAnimation()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/winset/view/dynamical/ChangeableView;->getSlideAnimator()Landroid/animation/ValueAnimator;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    iget v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    aput v4, v2, v3

    const/4 v3, 0x1

    aput p2, v2, v3

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    new-instance p2, Lcom/samsung/android/support/senl/nt/base/winset/view/dynamical/VerticalChangeableView$1;

    invoke-direct {p2, p0, v0, p1}, Lcom/samsung/android/support/senl/nt/base/winset/view/dynamical/VerticalChangeableView$1;-><init>(Lcom/samsung/android/support/senl/nt/base/winset/view/dynamical/VerticalChangeableView;Landroid/view/ViewGroup$LayoutParams;Landroid/view/View;)V

    invoke-virtual {v1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    :cond_1
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    :goto_0
    return-void
.end method
