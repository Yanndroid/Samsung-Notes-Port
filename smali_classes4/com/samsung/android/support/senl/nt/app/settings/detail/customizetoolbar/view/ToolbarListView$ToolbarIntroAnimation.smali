.class Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/ToolbarListView$ToolbarIntroAnimation;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/ToolbarListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ToolbarIntroAnimation"
.end annotation


# static fields
.field private static final FIXED_ITEM:Ljava/lang/String; = "FixedItem"

.field private static final MAX_FIXED_ITEM:I = 0x5


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/ToolbarListView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/ToolbarListView;)V
    .locals 12

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/ToolbarListView$ToolbarIntroAnimation;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/ToolbarListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/ToolbarListView;->c(Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/ToolbarListView;)Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x5

    new-array v7, v1, [I

    new-array v2, v1, [I

    sget v3, Lcom/samsung/android/support/senl/nt/app/R$drawable;->comp_hw_toolbar_ic_keyboard:I

    const/4 v4, 0x0

    aput v3, v2, v4

    sget v3, Lcom/samsung/android/support/senl/nt/app/R$drawable;->comp_hw_toolbar_ic_fountain_pen:I

    const/4 v5, 0x1

    aput v3, v2, v5

    sget v3, Lcom/samsung/android/support/senl/nt/app/R$drawable;->comp_hw_toolbar_ic_marker_pen:I

    const/4 v6, 0x2

    aput v3, v2, v6

    sget v3, Lcom/samsung/android/support/senl/nt/app/R$drawable;->comp_hw_toolbar_ic_eraser:I

    const/4 v8, 0x3

    aput v3, v2, v8

    sget v3, Lcom/samsung/android/support/senl/nt/app/R$drawable;->comp_hw_toolbar_ic_selection_lasso:I

    const/4 v9, 0x4

    aput v3, v2, v9

    new-array v3, v1, [I

    const/4 v10, -0x1

    aput v10, v3, v4

    sget v11, Lcom/samsung/android/support/senl/nt/app/R$drawable;->comp_hw_toolbar_ic_fountain_pen_color:I

    aput v11, v3, v5

    sget v5, Lcom/samsung/android/support/senl/nt/app/R$drawable;->comp_hw_toolbar_ic_marker_pen_color:I

    aput v5, v3, v6

    sget v5, Lcom/samsung/android/support/senl/nt/app/R$drawable;->comp_hw_toolbar_ic_eraser_color:I

    aput v5, v3, v8

    aput v10, v3, v9

    move v5, v4

    :goto_0
    if-ge v5, v1, :cond_0

    const-string v6, "FixedItem"

    invoke-virtual {p1, v6, v5}, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/AbsToolbarListView;->createToolbarItem(Ljava/lang/String;I)Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/ToolbarItem;

    move-result-object v6

    iget-object v8, v6, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/AbsToolbarItem;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    aget v10, v2, v5

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v8, v6, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/AbsToolbarItem;->mIconName:Landroid/widget/TextView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v8, v6, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/AbsToolbarItem;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v8, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v8, v6, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/AbsToolbarItem;->mItemContainer:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getId()I

    move-result v8

    aput v8, v7, v5

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/ToolbarListView;->c(Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/ToolbarListView;)Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v8

    iget-object v9, v6, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/AbsToolbarItem;->mItemContainer:Landroid/view/View;

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v8, v6, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/AbsToolbarItem;->mContainer:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/samsung/android/support/senl/nt/app/R$dimen;->settings_customize_toolbar_toolbar_item_size:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iget-object v9, v6, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/AbsToolbarItem;->mContainer:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v8, v9, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iput v8, v9, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget-object v8, v6, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/AbsToolbarItem;->mContainer:Landroid/view/View;

    invoke-virtual {v8, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v8, v6, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/AbsToolbarItem;->mItemContainer:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput v4, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    iput v4, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    iget-object v9, v6, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/AbsToolbarItem;->mItemContainer:Landroid/view/View;

    invoke-virtual {v9, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    aget v8, v3, v5

    invoke-virtual {v6, v8}, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/AbsToolbarItem;->updateColor(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {v0}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/ToolbarListView;->c(Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/ToolbarListView;)Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v6, 0x7

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, v0

    invoke-virtual/range {v2 .. v9}, Landroidx/constraintlayout/widget/ConstraintSet;->createHorizontalChainRtl(IIII[I[FI)V

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/ToolbarListView;->c(Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/ToolbarListView;)Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    return-void
.end method


# virtual methods
.method public playAnimation()V
    .locals 10

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/ToolbarListView$ToolbarIntroAnimation;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/ToolbarListView;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/ToolbarListView;->c(Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/ToolbarListView;)Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    const-string v3, "alpha"

    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/ToolbarListView$ToolbarIntroAnimation;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/ToolbarListView;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/ToolbarListView;->c(Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/ToolbarListView;)Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    const/4 v3, 0x0

    if-gtz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/ToolbarListView$ToolbarIntroAnimation;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/ToolbarListView;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/ToolbarListView;->c(Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/ToolbarListView;)Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v2

    invoke-virtual {v2, v3, v3}, Landroid/view/ViewGroup;->measure(II)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/ToolbarListView$ToolbarIntroAnimation;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/ToolbarListView;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/ToolbarListView;->c(Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/ToolbarListView;)Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v2

    :cond_0
    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/ToolbarListView$ToolbarIntroAnimation;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/ToolbarListView;

    invoke-static {v4}, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/ToolbarListView;->c(Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/ToolbarListView;)Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/samsung/android/support/senl/nt/app/R$dimen;->settings_toolbar_list_margin_start_end:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "playAnimation# "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " -> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ToolbarListView"

    invoke-static {v6, v5}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-array v5, v1, [I

    aput v2, v5, v3

    const/4 v2, 0x1

    aput v4, v5, v2

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v4

    const-wide/16 v5, 0x1f4

    invoke-virtual {v4, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v5, Landroid/view/animation/PathInterpolator;

    const v6, 0x3e6147ae    # 0.22f

    const/high16 v7, 0x3e800000    # 0.25f

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v5, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/ToolbarListView$ToolbarIntroAnimation$1;

    invoke-direct {v5, p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/ToolbarListView$ToolbarIntroAnimation$1;-><init>(Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/ToolbarListView$ToolbarIntroAnimation;)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    new-instance v6, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/ToolbarListView$ToolbarIntroAnimation$2;

    invoke-direct {v6, p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/ToolbarListView$ToolbarIntroAnimation$2;-><init>(Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/ToolbarListView$ToolbarIntroAnimation;)V

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-array v1, v1, [Landroid/animation/Animator;

    aput-object v0, v1, v3

    aput-object v4, v1, v2

    invoke-virtual {v5, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v0, 0x258

    invoke-virtual {v5, v0, v1}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method
