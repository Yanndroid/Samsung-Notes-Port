.class abstract Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ALIGN_BOTTOM:I = 0x0

.field public static final ALIGN_END:I = 0x1

.field public static final ALIGN_START:I = 0x2

.field public static final ALIGN_TOP:I = 0x3

.field public static final ALIGN_TOTAL:I = 0x4

.field public static final DEFAULT_MARGIN:I = 0xa

.field public static final mGuideTag:[Ljava/lang/String;


# instance fields
.field private mGuideView:[Landroid/view/View;

.field private mPercentHeight:F

.field private mPercentWidth:F


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const-string v0, "BOTTOM"

    const-string v1, "END"

    const-string v2, "START"

    const-string v3, "TOP"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideConfig;->mGuideTag:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideConfig;->mPercentWidth:F

    iput p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideConfig;->mPercentHeight:F

    const/4 p1, 0x4

    new-array p1, p1, [Landroid/view/View;

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideConfig;->mGuideView:[Landroid/view/View;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideConfig;->mGuideView:[Landroid/view/View;

    return-void
.end method

.method public getAlignment(I)I
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideConfig;->getViewIds()[I

    move-result-object v0

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result p1

    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    return p1
.end method

.method public getDimensionRatio(I)Ljava/lang/String;
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0x3L
        .end annotation
    .end param

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideConfig;->mPercentWidth:F

    const v1, 0x461c4000    # 10000.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iget v2, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideConfig;->mPercentHeight:F

    mul-float/2addr v2, v1

    float-to-int v1, v2

    const-string v2, ":"

    const/4 v3, 0x3

    if-eq p1, v3, :cond_1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public getGuideView(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideConfig;->mGuideView:[Landroid/view/View;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getPercentHeight(II)F
    .locals 5
    .param p2    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0x3L
        .end annotation
    .end param

    const/4 v0, 0x4

    new-array v0, v0, [F

    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideConfig;->mPercentHeight:F

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v2, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideConfig;->mPercentWidth:F

    const/4 v3, 0x1

    aput v2, v0, v3

    const/4 v4, 0x2

    aput v2, v0, v4

    const/4 v2, 0x3

    aput v1, v0, v2

    if-ne p1, v3, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    aget p1, v0, p2

    :goto_0
    return p1
.end method

.method public getPercentWidth(II)F
    .locals 5
    .param p2    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0x3L
        .end annotation
    .end param

    const/4 v0, 0x4

    new-array v0, v0, [F

    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideConfig;->mPercentWidth:F

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v2, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideConfig;->mPercentHeight:F

    const/4 v3, 0x1

    aput v2, v0, v3

    const/4 v4, 0x2

    aput v2, v0, v4

    const/4 v2, 0x3

    aput v1, v0, v2

    if-ne p1, v3, :cond_0

    aget p1, v0, p2

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_0
    return p1
.end method

.method public abstract getViewIds()[I
.end method

.method public hideGuideBackground()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideConfig;->mGuideView:[Landroid/view/View;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public makeGuide(Landroidx/constraintlayout/widget/ConstraintLayout;I)V
    .locals 3
    .param p1    # Landroidx/constraintlayout/widget/ConstraintLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideConfig;->mGuideView:[Landroid/view/View;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideConfig;->makeView(Landroidx/constraintlayout/widget/ConstraintLayout;II)Landroid/view/View;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public makeParams(II)Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    .locals 2

    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideConfig;->updateParam(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;II)V

    return-object v0
.end method

.method public abstract makeView(Landroid/content/Context;I)Landroid/view/View;
.end method

.method public makeView(Landroidx/constraintlayout/widget/ConstraintLayout;II)Landroid/view/View;
    .locals 1
    .param p1    # Landroidx/constraintlayout/widget/ConstraintLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideConfig;->makeView(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideConfig;->makeParams(II)Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideConfig;->setGuideRelation(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;I)V

    invoke-virtual {p1, v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public abstract setGuideRelation(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;I)V
    .param p1    # Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public setGuideVisibility(I)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideConfig;->mGuideView:[Landroid/view/View;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    aget-object v3, v2, v1

    if-nez v3, :cond_0

    goto :goto_2

    :cond_0
    aget-object v2, v2, v1

    if-ne v1, p1, :cond_1

    move v3, v0

    goto :goto_1

    :cond_1
    const/16 v3, 0x8

    :goto_1
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setSize(FF)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideConfig;->mPercentWidth:F

    iput p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideConfig;->mPercentHeight:F

    return-void
.end method

.method public setTag()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideConfig;->mGuideView:[Landroid/view/View;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v2, v1, v0

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    aget-object v1, v1, v0

    sget-object v2, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideConfig;->mGuideTag:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public showGuideBackground(II)V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideConfig;->mGuideView:[Landroid/view/View;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p1, p2, v2, v2}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilDrawable;->getRoundedCornerDrawable(IIII)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public updateGuideRatio(I)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideConfig;->mGuideView:[Landroid/view/View;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v1, v1, v0

    invoke-virtual {p0, v1, p1, v0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideConfig;->updateViewRatio(Landroid/view/View;II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public updateParam(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;II)V
    .locals 1
    .param p1    # Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideConfig;->getPercentWidth(II)F

    move-result v0

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintPercentWidth:F

    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideConfig;->getPercentHeight(II)F

    move-result p2

    iput p2, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintPercentHeight:F

    invoke-virtual {p0, p3}, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideConfig;->getDimensionRatio(I)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    iput-object p2, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    return-void
.end method

.method public updateViewRatio(Landroid/view/View;II)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideConfig;->getPercentWidth(II)F

    move-result v1

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintPercentWidth:F

    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideConfig;->getPercentHeight(II)F

    move-result p2

    iput p2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintPercentHeight:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
