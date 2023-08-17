.class Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideMarginConfig;
.super Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideConfig;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "SpenBrushGuideMarginConfig"


# instance fields
.field private mPercentBottomMargin:F

.field private mPercentEndMargin:F

.field private mPercentStartMargin:F

.field private mPercentTopMargin:F

.field private mViewId:[I


# direct methods
.method public constructor <init>(IF)V
    .locals 5

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideConfig;-><init>(FF)V

    const/4 v1, 0x4

    new-array v1, v1, [I

    sget v2, Lcom/samsung/android/spen/R$id;->b_guide:I

    const/4 v3, 0x0

    aput v2, v1, v3

    sget v2, Lcom/samsung/android/spen/R$id;->e_guide:I

    const/4 v3, 0x1

    aput v2, v1, v3

    sget v2, Lcom/samsung/android/spen/R$id;->s_guide:I

    const/4 v4, 0x2

    aput v2, v1, v4

    sget v2, Lcom/samsung/android/spen/R$id;->t_guide:I

    const/4 v4, 0x3

    aput v2, v1, v4

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideMarginConfig;->mViewId:[I

    iput p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideMarginConfig;->mPercentTopMargin:F

    iput p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideMarginConfig;->mPercentBottomMargin:F

    iput p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideMarginConfig;->mPercentStartMargin:F

    iput p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideMarginConfig;->mPercentEndMargin:F

    if-ne p1, v3, :cond_0

    iput v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideMarginConfig;->mPercentTopMargin:F

    iput v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideMarginConfig;->mPercentBottomMargin:F

    :cond_0
    return-void
.end method


# virtual methods
.method public getDimensionRatio(I)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getPercentHeight(II)F
    .locals 8
    .param p2    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0x3L
        .end annotation
    .end param

    const/4 v0, 0x4

    new-array v1, v0, [F

    iget v2, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideMarginConfig;->mPercentBottomMargin:F

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v1, v2

    const/4 v5, 0x2

    aput v4, v1, v5

    iget v6, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideMarginConfig;->mPercentTopMargin:F

    const/4 v7, 0x3

    aput v6, v1, v7

    new-array v0, v0, [F

    iget v6, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideMarginConfig;->mPercentStartMargin:F

    aput v6, v0, v3

    aput v4, v0, v2

    aput v4, v0, v5

    iget v3, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideMarginConfig;->mPercentEndMargin:F

    aput v3, v0, v7

    if-ne p1, v2, :cond_0

    aget p1, v1, p2

    goto :goto_0

    :cond_0
    aget p1, v0, p2

    :goto_0
    return p1
.end method

.method public getPercentWidth(II)F
    .locals 7
    .param p2    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0x3L
        .end annotation
    .end param

    const/4 v0, 0x4

    new-array v1, v0, [F

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v1, v2

    iget v4, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideMarginConfig;->mPercentEndMargin:F

    const/4 v5, 0x1

    aput v4, v1, v5

    iget v4, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideMarginConfig;->mPercentStartMargin:F

    const/4 v6, 0x2

    aput v4, v1, v6

    const/4 v4, 0x3

    aput v3, v1, v4

    new-array v0, v0, [F

    aput v3, v0, v2

    iget v2, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideMarginConfig;->mPercentBottomMargin:F

    aput v2, v0, v5

    iget v2, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideMarginConfig;->mPercentTopMargin:F

    aput v2, v0, v6

    aput v3, v0, v4

    if-ne p1, v5, :cond_0

    aget p1, v1, p2

    goto :goto_0

    :cond_0
    aget p1, v0, p2

    :goto_0
    return p1
.end method

.method public getViewIds()[I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideMarginConfig;->mViewId:[I

    return-object v0
.end method

.method public makeView(Landroid/content/Context;I)Landroid/view/View;
    .locals 1

    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideMarginConfig;->mViewId:[I

    aget p1, p1, p2

    invoke-virtual {v0, p1}, Landroid/view/View;->setId(I)V

    return-object v0
.end method

.method public setGuideRelation(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;I)V
    .locals 2
    .param p1    # Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    const/4 v1, 0x1

    if-eq p2, v1, :cond_2

    const/4 v1, 0x2

    if-eq p2, v1, :cond_1

    const/4 v1, 0x3

    if-eq p2, v1, :cond_0

    goto :goto_2

    :cond_0
    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    goto :goto_1

    :cond_1
    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    goto :goto_0

    :cond_2
    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    :goto_0
    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    goto :goto_2

    :cond_3
    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    :goto_1
    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    :goto_2
    return-void
.end method
