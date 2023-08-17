.class Lcom/samsung/android/sdk/pen/setting/SpenBrushGuidePenConfig;
.super Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideConfig;
.source "SourceFile"


# static fields
.field private static final DEFAULT_PEN_PERCENT_HEIGHT:F = 0.1425f

.field private static final DEFAULT_PEN_PERCENT_WIDTH:F = 0.575f

.field private static final TAG:Ljava/lang/String; = "SpenBrushGuidePenConfig"


# instance fields
.field private mStyle:I

.field private mViewId:[I


# direct methods
.method public constructor <init>(I)V
    .locals 3

    const v0, 0x3f133333    # 0.575f

    const v1, 0x3e11eb85    # 0.1425f

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideConfig;-><init>(FF)V

    const/4 v0, 0x4

    new-array v0, v0, [I

    sget v1, Lcom/samsung/android/spen/R$id;->b_pen:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lcom/samsung/android/spen/R$id;->e_pen:I

    const/4 v2, 0x1

    aput v1, v0, v2

    sget v1, Lcom/samsung/android/spen/R$id;->s_pen:I

    const/4 v2, 0x2

    aput v1, v0, v2

    sget v1, Lcom/samsung/android/spen/R$id;->t_pen:I

    const/4 v2, 0x3

    aput v1, v0, v2

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuidePenConfig;->mViewId:[I

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuidePenConfig;->mStyle:I

    return-void
.end method


# virtual methods
.method public getViewIds()[I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuidePenConfig;->mViewId:[I

    return-object v0
.end method

.method public makeView(Landroid/content/Context;I)Landroid/view/View;
    .locals 1

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuidePenConfig;->mViewId:[I

    aget p1, p1, p2

    invoke-virtual {v0, p1}, Landroid/view/View;->setId(I)V

    return-object v0
.end method

.method public setGuideRelation(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;I)V
    .locals 3

    const/4 v0, 0x2

    if-eqz p2, :cond_6

    const/4 v1, 0x1

    const/16 v2, 0xa

    if-eq p2, v1, :cond_4

    if-eq p2, v0, :cond_2

    const/4 v1, 0x3

    if-eq p2, v1, :cond_0

    goto :goto_2

    :cond_0
    sget p2, Lcom/samsung/android/spen/R$id;->s_guide:I

    iput p2, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToEnd:I

    sget p2, Lcom/samsung/android/spen/R$id;->t_guide:I

    iput p2, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToBottom:I

    iget p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuidePenConfig;->mStyle:I

    if-eq p2, v0, :cond_1

    goto :goto_2

    :cond_1
    iput p2, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalChainStyle:I

    sget p2, Lcom/samsung/android/spen/R$id;->t_color:I

    goto :goto_1

    :cond_2
    sget p2, Lcom/samsung/android/spen/R$id;->s_guide:I

    iput p2, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToEnd:I

    sget p2, Lcom/samsung/android/spen/R$id;->b_guide:I

    iput p2, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToTop:I

    iget p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuidePenConfig;->mStyle:I

    if-eq p2, v0, :cond_3

    goto :goto_2

    :cond_3
    sget p2, Lcom/samsung/android/spen/R$id;->s_color:I

    goto :goto_0

    :cond_4
    sget p2, Lcom/samsung/android/spen/R$id;->e_guide:I

    iput p2, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToStart:I

    sget p2, Lcom/samsung/android/spen/R$id;->b_guide:I

    iput p2, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToTop:I

    iget p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuidePenConfig;->mStyle:I

    if-eq p2, v0, :cond_5

    goto :goto_2

    :cond_5
    sget p2, Lcom/samsung/android/spen/R$id;->e_color:I

    :goto_0
    iput p2, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToBottom:I

    iput v2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_2

    :cond_6
    sget p2, Lcom/samsung/android/spen/R$id;->b_guide:I

    iput p2, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToTop:I

    sget p2, Lcom/samsung/android/spen/R$id;->s_guide:I

    iput p2, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToEnd:I

    iget p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuidePenConfig;->mStyle:I

    if-eq p2, v0, :cond_7

    goto :goto_2

    :cond_7
    iput p2, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalChainStyle:I

    sget p2, Lcom/samsung/android/spen/R$id;->b_color:I

    :goto_1
    iput p2, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToStart:I

    :goto_2
    return-void
.end method
