.class public Lcom/samsung/android/support/senl/nt/app/common/listener/OffsetUpdateListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;


# static fields
.field public static final ALPHA_RANGE_FACTOR:F = 0.18f

.field public static final ALPHA_START_FACTOR:F = 0.1303f

.field public static final NOT_ASSIGN:I = -0x1


# instance fields
.field public mAdditionalView:Landroid/view/View;

.field public mAlphaRange:F

.field public mAlphaStart:F

.field public mBaseOffset:I

.field public mContext:Landroid/content/Context;

.field private mIsKeepLayout:Z

.field public mTextView:Landroid/widget/TextView;

.field public mVerticalView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/common/listener/OffsetUpdateListener;->mBaseOffset:I

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/common/listener/OffsetUpdateListener;->mIsKeepLayout:Z

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/common/listener/OffsetUpdateListener;->mAlphaStart:F

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/common/listener/OffsetUpdateListener;->mAlphaRange:F

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/common/listener/OffsetUpdateListener;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/TextView;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/common/listener/OffsetUpdateListener;->mBaseOffset:I

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/common/listener/OffsetUpdateListener;->mIsKeepLayout:Z

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/common/listener/OffsetUpdateListener;->mAlphaStart:F

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/common/listener/OffsetUpdateListener;->mAlphaRange:F

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/common/listener/OffsetUpdateListener;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/common/listener/OffsetUpdateListener;->mTextView:Landroid/widget/TextView;

    return-void
.end method

.method private defineAlphaValues(I)V
    .locals 3

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/common/listener/OffsetUpdateListener;->mAlphaStart:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    int-to-float v0, p1

    const v2, 0x3e056d5d    # 0.1303f

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/common/listener/OffsetUpdateListener;->mAlphaStart:F

    :cond_0
    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/common/listener/OffsetUpdateListener;->mAlphaRange:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    int-to-float p1, p1

    const v0, 0x3e3851ec    # 0.18f

    mul-float/2addr p1, v0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/common/listener/OffsetUpdateListener;->mAlphaRange:F

    :cond_1
    return-void
.end method

.method private updateAdditionalViewAlpha(Lcom/google/android/material/appbar/AppBarLayout;I)V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/common/listener/OffsetUpdateListener;->mAdditionalView:Landroid/view/View;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result p1

    const/4 v0, 0x1

    if-gt p1, v0, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/common/listener/OffsetUpdateListener;->mAdditionalView:Landroid/view/View;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    return-void

    :cond_1
    const/high16 p1, 0x437f0000    # 255.0f

    const/high16 v0, 0x42c80000    # 100.0f

    iget v1, p0, Lcom/samsung/android/support/senl/nt/app/common/listener/OffsetUpdateListener;->mAlphaRange:F

    div-float/2addr v0, v1

    int-to-float p2, p2

    iget v1, p0, Lcom/samsung/android/support/senl/nt/app/common/listener/OffsetUpdateListener;->mAlphaStart:F

    sub-float/2addr p2, v1

    mul-float/2addr v0, p2

    sub-float/2addr p1, v0

    float-to-double p1, p1

    const-wide/16 v0, 0x0

    cmpl-double v2, p1, v0

    if-ltz v2, :cond_2

    const-wide v2, 0x406fe00000000000L    # 255.0

    cmpg-double v4, p1, v2

    if-gtz v4, :cond_2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double/2addr p1, v4

    sub-double p1, v2, p1

    cmpl-double v0, p1, v0

    if-ltz v0, :cond_4

    cmpg-double v0, p1, v2

    if-gtz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/common/listener/OffsetUpdateListener;->mAdditionalView:Landroid/view/View;

    div-double/2addr p1, v2

    double-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1

    :cond_2
    cmpg-double p1, p1, v0

    if-gez p1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/common/listener/OffsetUpdateListener;->mAdditionalView:Landroid/view/View;

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    double-to-float p2, v0

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/common/listener/OffsetUpdateListener;->mAdditionalView:Landroid/view/View;

    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public onOffsetChanged(Lcom/google/android/material/appbar/AppBarLayout;I)V
    .locals 10

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/app/common/listener/OffsetUpdateListener;->defineAlphaValues(I)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getTop()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result v2

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/InputMethodCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/InputMethodCompat;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/app/common/listener/OffsetUpdateListener;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/samsung/android/support/senl/cm/base/framework/view/InputMethodCompat;->getInputMethodWindowVisibleHeight(Landroid/content/Context;)I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/app/common/listener/OffsetUpdateListener;->mVerticalView:Landroid/view/View;

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_4

    iget-boolean v4, p0, Lcom/samsung/android/support/senl/nt/app/common/listener/OffsetUpdateListener;->mIsKeepLayout:Z

    if-eqz v4, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/common/listener/OffsetUpdateListener;->mVerticalView:Landroid/view/View;

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    sub-int/2addr p2, v2

    iget v2, p0, Lcom/samsung/android/support/senl/nt/app/common/listener/OffsetUpdateListener;->mBaseOffset:I

    add-int/2addr p2, v2

    int-to-float p2, p2

    :goto_0
    invoke-virtual {v0, p2}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_3

    :cond_0
    if-nez p2, :cond_1

    if-nez v2, :cond_1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/common/listener/OffsetUpdateListener;->mVerticalView:Landroid/view/View;

    const/4 v0, 0x0

    goto :goto_2

    :cond_1
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/app/common/listener/OffsetUpdateListener;->mContext:Landroid/content/Context;

    check-cast v5, Landroid/app/Activity;

    invoke-virtual {v4, v5}, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;->isFreeFormWindow(Landroid/app/Activity;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    add-int v4, v2, v3

    if-ge v0, v4, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/common/listener/OffsetUpdateListener;->mVerticalView:Landroid/view/View;

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    sub-int/2addr p2, v2

    sub-int/2addr p2, v3

    iget v2, p0, Lcom/samsung/android/support/senl/nt/app/common/listener/OffsetUpdateListener;->mBaseOffset:I

    add-int/2addr p2, v2

    int-to-float p2, p2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr p2, v2

    goto :goto_0

    :cond_3
    :goto_1
    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/common/listener/OffsetUpdateListener;->mVerticalView:Landroid/view/View;

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/common/listener/OffsetUpdateListener;->mBaseOffset:I

    int-to-float v0, v0

    :goto_2
    invoke-virtual {p2, v0}, Landroid/view/View;->setTranslationY(F)V

    :cond_4
    :goto_3
    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/common/listener/OffsetUpdateListener;->mTextView:Landroid/widget/TextView;

    if-eqz p2, :cond_8

    invoke-virtual {p2}, Landroid/widget/TextView;->getVisibility()I

    move-result p2

    if-nez p2, :cond_8

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/common/listener/OffsetUpdateListener;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result p2

    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result v0

    const/4 v2, 0x1

    if-gt v0, v2, :cond_5

    const/16 v0, 0xff

    :goto_4
    invoke-static {p2, v0}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/common/listener/OffsetUpdateListener;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_5

    :cond_5
    const/high16 v0, 0x437f0000    # 255.0f

    const/high16 v2, 0x42c80000    # 100.0f

    iget v3, p0, Lcom/samsung/android/support/senl/nt/app/common/listener/OffsetUpdateListener;->mAlphaRange:F

    div-float/2addr v2, v3

    int-to-float v3, v1

    iget v4, p0, Lcom/samsung/android/support/senl/nt/app/common/listener/OffsetUpdateListener;->mAlphaStart:F

    sub-float/2addr v3, v4

    mul-float/2addr v2, v3

    sub-float/2addr v0, v2

    float-to-double v2, v0

    const-wide/16 v4, 0x0

    cmpl-double v0, v2, v4

    const-wide v6, 0x406fe00000000000L    # 255.0

    if-ltz v0, :cond_6

    cmpg-double v0, v2, v6

    if-gtz v0, :cond_6

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    mul-double/2addr v2, v8

    sub-double v2, v6, v2

    cmpl-double v0, v2, v4

    if-ltz v0, :cond_8

    cmpg-double v0, v2, v6

    if-gtz v0, :cond_8

    double-to-int v0, v2

    goto :goto_4

    :cond_6
    cmpg-double v0, v2, v4

    if-gez v0, :cond_7

    double-to-int v0, v6

    goto :goto_4

    :cond_7
    const/4 v0, 0x0

    goto :goto_4

    :cond_8
    :goto_5
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/support/senl/nt/app/common/listener/OffsetUpdateListener;->updateAdditionalViewAlpha(Lcom/google/android/material/appbar/AppBarLayout;I)V

    return-void
.end method

.method public setAdditionalView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/common/listener/OffsetUpdateListener;->mAdditionalView:Landroid/view/View;

    return-void
.end method

.method public setTextView(Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/common/listener/OffsetUpdateListener;->mTextView:Landroid/widget/TextView;

    return-void
.end method

.method public setVerticalView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/common/listener/OffsetUpdateListener;->mVerticalView:Landroid/view/View;

    return-void
.end method

.method public setVerticalView(Landroid/view/View;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/common/listener/OffsetUpdateListener;->mVerticalView:Landroid/view/View;

    iput p2, p0, Lcom/samsung/android/support/senl/nt/app/common/listener/OffsetUpdateListener;->mBaseOffset:I

    return-void
.end method

.method public setVerticalView(Landroid/view/View;Z)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/common/listener/OffsetUpdateListener;->mVerticalView:Landroid/view/View;

    iput-boolean p2, p0, Lcom/samsung/android/support/senl/nt/app/common/listener/OffsetUpdateListener;->mIsKeepLayout:Z

    return-void
.end method
