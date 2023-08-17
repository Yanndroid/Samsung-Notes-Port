.class Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPensView;
.super Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenListView;
.source "SourceFile"


# static fields
.field private static final CHAIN_PACKED_MAX_COUNT:I = 0x4

.field private static final TAG:Ljava/lang/String; = "SpenPenListImpl"


# instance fields
.field private mDirectionVariable:I

.field private mExceptIndex:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mExceptPreviewMargin:I

.field private mExceptPreviewTop:I

.field private mPreviewMargin:I

.field private mPreviewTop:I

.field private mPreviews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreviewV2;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedPreviewId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p2, "SpenPenListImpl"

    const-string v0, "2. SpenPenListImpl()"

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x0

    iput p2, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPensView;->mSelectedPreviewId:I

    iput p2, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPensView;->mPreviewMargin:I

    iput p2, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPensView;->mPreviewTop:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPensView;->mDirectionVariable:I

    iput p2, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPensView;->mExceptPreviewMargin:I

    iput p2, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPensView;->mExceptPreviewTop:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPensView;->mExceptIndex:Ljava/util/List;

    const/4 p1, 0x4

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenListView;->setAlignInfo(II)V

    const/16 p1, 0xa

    const/4 p2, 0x3

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenListView;->setAlignInfo(II)V

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPensView;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPensView;->mPreviews:Ljava/util/List;

    return-object p0
.end method

.method private isExceptPenView(I)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPensView;->mExceptIndex:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private updatePreview(ZI)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPensView;->mPreviews:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    if-nez p2, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_2

    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p2}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method private updatePreviewPosition(ILandroid/view/View;)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenListView;->getPenView(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToEnd:I

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPensView;->isExceptPenView(I)Z

    move-result p1

    if-nez p1, :cond_1

    iget p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPensView;->mPreviewMargin:I

    int-to-float p1, p1

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPensView;->mPreviewTop:I

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPensView;->mExceptPreviewMargin:I

    int-to-float p1, p1

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPensView;->mExceptPreviewTop:I

    :goto_0
    int-to-float v0, v0

    iget v2, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPensView;->mDirectionVariable:I

    int-to-float v2, v2

    mul-float/2addr p1, v2

    invoke-virtual {p2, p1}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public close()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPensView;->mPreviews:Ljava/util/List;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPensView;->mPreviews:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPensView;->mPreviews:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreviewV2;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreviewV2;->close()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPensView;->mPreviews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPensView;->mPreviews:Ljava/util/List;

    :cond_1
    iput v2, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPensView;->mSelectedPreviewId:I

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPensView;->mExceptIndex:Ljava/util/List;

    invoke-super {p0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenListView;->close()V

    return-void
.end method

.method public getPenPreview(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPensView;->mPreviews:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPensView;->mPreviews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public setPenList(II)V
    .locals 4

    invoke-super {p0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenListView;->setPenList(II)V

    if-lez p1, :cond_1

    iget p2, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPensView;->mSelectedPreviewId:I

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPensView;->mPreviews:Ljava/util/List;

    if-nez p2, :cond_0

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPensView;->mPreviews:Ljava/util/List;

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_1

    iget v2, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPensView;->mSelectedPreviewId:I

    invoke-virtual {p2, v2, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreviewV2;

    invoke-virtual {p0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPensView;->mPreviews:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPensView;->updatePreview(ZI)V

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPensView;->updatePreviewPosition(ILandroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setPenPreviewExceptInfo(IILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPensView;->mExceptIndex:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPensView;->mExceptIndex:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iput p2, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPensView;->mExceptPreviewTop:I

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPensView;->mExceptPreviewMargin:I

    :cond_0
    return-void
.end method

.method public setPenPreviewInfo(III)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPensView;->mSelectedPreviewId:I

    iput p2, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPensView;->mPreviewMargin:I

    iput p3, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPensView;->mPreviewTop:I

    return-void
.end method

.method public updateSelected(Landroid/view/View;ZZZI)V
    .locals 5

    if-nez p3, :cond_0

    invoke-super/range {p0 .. p5}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenListView;->updateSelected(Landroid/view/View;ZZZI)V

    invoke-direct {p0, p2, p5}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPensView;->updatePreview(ZI)V

    invoke-virtual {p0, p5}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPensView;->getPenPreview(I)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p5, p1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPensView;->updatePreviewPosition(ILandroid/view/View;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenListView;->getPenAnimator(Landroid/view/View;Z)Landroid/animation/Animator;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    if-nez p4, :cond_2

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    invoke-direct {p0, p2, p5}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPensView;->updatePreview(ZI)V

    goto :goto_1

    :cond_2
    new-instance p3, Landroid/animation/AnimatorSet;

    invoke-direct {p3}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 p4, 0x1

    const/4 v0, 0x0

    const-string v1, "alpha"

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPensView;->mPreviews:Ljava/util/List;

    invoke-interface {v3, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    new-array v4, v2, [F

    if-eqz p2, :cond_3

    fill-array-data v4, :array_0

    invoke-static {v3, v1, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-array v2, v2, [Landroid/animation/Animator;

    aput-object p1, v2, v0

    aput-object v1, v2, p4

    invoke-virtual {p3, v2}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    goto :goto_0

    :cond_3
    fill-array-data v4, :array_1

    invoke-static {v3, v1, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-array v2, v2, [Landroid/animation/Animator;

    aput-object p1, v2, v0

    aput-object v1, v2, p4

    invoke-virtual {p3, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :goto_0
    const/4 p1, 0x3

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilAnimation;->getInterpolator(I)Landroid/view/animation/PathInterpolator;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance p1, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPensView$1;

    invoke-direct {p1, p0, p5, p2, v1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPensView$1;-><init>(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPensView;IZLandroid/animation/ObjectAnimator;)V

    invoke-virtual {v1, p1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p3}, Landroid/animation/AnimatorSet;->start()V

    :goto_1
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method
