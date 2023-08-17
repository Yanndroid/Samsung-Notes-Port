.class public Lcom/samsung/android/support/senl/nt/app/main/common/view/GridRatioView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/app/main/common/view/GridRatioView$Listener;
    }
.end annotation


# instance fields
.field private mAdapterContract:Lcom/samsung/android/support/senl/nt/app/main/common/adapter/AdapterContract;

.field private mHasGlobalLayoutListener:Z

.field private mListener:Lcom/samsung/android/support/senl/nt/app/main/common/view/GridRatioView$Listener;

.field private mRatio:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const p1, 0x3fb47ae1    # 1.41f

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/GridRatioView;->mRatio:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p1, 0x3fb47ae1    # 1.41f

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/GridRatioView;->mRatio:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p1, 0x3fb47ae1    # 1.41f

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/GridRatioView;->mRatio:F

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/app/main/common/view/GridRatioView;)Lcom/samsung/android/support/senl/nt/app/main/common/adapter/AdapterContract;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/GridRatioView;->mAdapterContract:Lcom/samsung/android/support/senl/nt/app/main/common/adapter/AdapterContract;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/app/main/common/view/GridRatioView;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/GridRatioView;->mHasGlobalLayoutListener:Z

    return-void
.end method

.method private setGlobalLayoutListener()V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/GridRatioView;->mHasGlobalLayoutListener:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/GridRatioView;->mHasGlobalLayoutListener:Z

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/main/common/view/GridRatioView$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/app/main/common/view/GridRatioView$1;-><init>(Lcom/samsung/android/support/senl/nt/app/main/common/view/GridRatioView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method


# virtual methods
.method public onMeasure(II)V
    .locals 1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/GridRatioView;->mAdapterContract:Lcom/samsung/android/support/senl/nt/app/main/common/adapter/AdapterContract;

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/AdapterContract;->isRunningAnimator()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/common/view/GridRatioView;->setGlobalLayoutListener()V

    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    int-to-float p2, p2

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/GridRatioView;->mRatio:F

    mul-float/2addr p2, v0

    float-to-int p2, p2

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setClipToOutline(Z)V

    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/GridRatioView;->mListener:Lcom/samsung/android/support/senl/nt/app/main/common/view/GridRatioView$Listener;

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/samsung/android/support/senl/nt/app/main/common/view/GridRatioView$Listener;->onError(Ljava/lang/String;)V

    :cond_1
    throw p1
.end method

.method public setAdapterContract(Lcom/samsung/android/support/senl/nt/app/main/common/adapter/AdapterContract;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/GridRatioView;->mAdapterContract:Lcom/samsung/android/support/senl/nt/app/main/common/adapter/AdapterContract;

    return-void
.end method

.method public setListener(Lcom/samsung/android/support/senl/nt/app/main/common/view/GridRatioView$Listener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/GridRatioView;->mListener:Lcom/samsung/android/support/senl/nt/app/main/common/view/GridRatioView$Listener;

    return-void
.end method

.method public setRatio(F)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/GridRatioView;->mRatio:F

    return-void
.end method
