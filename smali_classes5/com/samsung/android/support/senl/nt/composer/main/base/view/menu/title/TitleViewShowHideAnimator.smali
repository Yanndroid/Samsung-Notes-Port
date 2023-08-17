.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewShowHideAnimator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewShowHideAnimator$Contract;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContract:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewShowHideAnimator$Contract;

.field private mTitleLeftEnd:I

.field private mTitleLeftStart:I

.field private final mTitleRecommendCueViewManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleRecommendViewManager;

.field private mTitleScaleEnd:F

.field private mTitleScaleStart:F

.field private mTitleTopEnd:I

.field private mTitleTopStart:I

.field private final mTitleView:Landroid/widget/EditText;

.field private mToolbarLeftEnd:F

.field private mToolbarLeftStart:F

.field private mToolbarScaleEnd:F

.field private mToolbarScaleStart:F

.field private mToolbarTitle:Landroidx/appcompat/widget/AppCompatTextView;

.field private final mToolbarTitleCopyView:Landroid/widget/TextView;

.field private mToolbarTopEnd:F

.field private mToolbarTopStart:F


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "TitleViewShowHideAnimator"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewShowHideAnimator;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/widget/EditText;Landroid/widget/TextView;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleRecommendViewManager;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewShowHideAnimator$Contract;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewShowHideAnimator;->mContract:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewShowHideAnimator$Contract;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewShowHideAnimator;->mTitleView:Landroid/widget/EditText;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewShowHideAnimator;->mToolbarTitleCopyView:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewShowHideAnimator;->mTitleRecommendCueViewManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleRecommendViewManager;

    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewShowHideAnimator$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewShowHideAnimator$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewShowHideAnimator;)V

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewShowHideAnimator;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewShowHideAnimator;->mTitleView:Landroid/widget/EditText;

    return-object p0
.end method

.method private animateTitleViewByFraction(F)V
    .locals 6

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewShowHideAnimator;->mTitleScaleStart:F

    iget v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewShowHideAnimator;->mTitleScaleEnd:F

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewShowHideAnimator;->getAnimatedValue(FFF)F

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewShowHideAnimator;->mTitleView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewShowHideAnimator;->mTitleView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float v3, v1, v0

    sub-float/2addr v3, v1

    mul-float v1, v2, v0

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewShowHideAnimator;->mTitleView:Landroid/widget/EditText;

    iget v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewShowHideAnimator;->mToolbarLeftStart:F

    iget v5, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewShowHideAnimator;->mToolbarLeftEnd:F

    invoke-direct {p0, v4, v5, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewShowHideAnimator;->getAnimatedValue(FFF)F

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    add-float/2addr v4, v3

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setX(F)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewShowHideAnimator;->mTitleView:Landroid/widget/EditText;

    iget v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewShowHideAnimator;->mToolbarTopStart:F

    iget v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewShowHideAnimator;->mToolbarTopEnd:F

    invoke-direct {p0, v3, v4, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewShowHideAnimator;->getAnimatedValue(FFF)F

    move-result p1

    div-float/2addr v1, v5

    add-float/2addr p1, v1

    invoke-virtual {v2, p1}, Landroid/widget/EditText;->setY(F)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewShowHideAnimator;->mTitleView:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setScaleX(F)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewShowHideAnimator;->mTitleView:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setScaleY(F)V

    return-void
.end method

.method private animateToolbarTitleCopyViewByFraction(F)V
    .locals 6

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewShowHideAnimator;->mToolbarScaleStart:F

    iget v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewShowHideAnimator;->mToolbarScaleEnd:F

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewShowHideAnimator;->getAnimatedValue(FFF)F

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewShowHideAnimator;->mToolbarTitleCopyView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewShowHideAnimator;->mToolbarTitleCopyView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float v3, v1, v0

    sub-float/2addr v3, v1

    mul-float v1, v2, v0

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewShowHideAnimator;->mToolbarTitleCopyView:Landroid/widget/TextView;

    iget v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewShowHideAnimator;->mToolbarLeftStart:F

    iget v5, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewShowHideAnimator;->mToolbarLeftEnd:F

    invoke-direct {p0, v4, v5, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewShowHideAnimator;->getAnimatedValue(FFF)F

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    add-float/2addr v4, v3

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setX(F)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewShowHideAnimator;->mToolbarTitleCopyView:Landroid/widget/TextView;

    iget v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewShowHideAnimator;->mToolbarTopStart:F

    iget v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewShowHideAnimator;->mToolbarTopEnd:F

    invoke-direct {p0, v3, v4, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewShowHideAnimator;->getAnimatedValue(FFF)F

    move-result p1

    div-float/2addr v1, v5

    add-float/2addr p1, v1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setY(F)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewShowHideAnimator;->mToolbarTitleCopyView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setScaleX(F)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewShowHideAnimator;->mToolbarTitleCopyView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setScaleY(F)V

    return-void
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewShowHideAnimator;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewShowHideAnimator;->mToolbarTitleCopyView:Landroid/widget/TextView;

    return-object p0
.end method

.method private getAnimatedValue(FFF)F
    .locals 0

    sub-float/2addr p2, p1

    mul-float/2addr p2, p3

    add-float/2addr p1, p2

    return p1
.end method

.method private initAnimationValue(Z)V
    .locals 1

    const v0, 0x3f19999a    # 0.6f

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewShowHideAnimator;->mTitleScaleStart:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewShowHideAnimator;->mTitleScaleEnd:F

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewShowHideAnimator;->mToolbarScaleStart:F

    const v0, 0x3fc9999a    # 1.575f

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewShowHideAnimator;->mToolbarScaleEnd:F

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewShowHideAnimator;->mToolbarTitleCopyView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getX()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewShowHideAnimator;->mToolbarLeftStart:F

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewShowHideAnimator;->mTitleLeftEnd:I

    int-to-float v0, v0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewShowHideAnimator;->mToolbarLeftEnd:F

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewShowHideAnimator;->mToolbarTitleCopyView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getY()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewShowHideAnimator;->mToolbarTopStart:F

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewShowHideAnimator;->mTitleTopEnd:I

    int-to-float v0, v0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewShowHideAnimator;->mToolbarTopEnd:F

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewShowHideAnimator;->mToolbarTitleCopyView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewShowHideAnimator;->mTitleView:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setAlpha(F)V

    :goto_0
    return-void
.end method

.method private initToolbarTitleCopyView(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewShowHideAnimator;->mToolbarTitleCopyView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewShowHideAnimator;->mToolbarTitle:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewShowHideAnimator;->mToolbarTitleCopyView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewShowHideAnimator;->mToolbarTitle:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewShowHideAnimator;->mToolbarTitle:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getHeight()I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewShowHideAnimator;->mToolbarTitleCopyView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewShowHideAnimator;->mToolbarTitleCopyView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewShowHideAnimator;->mToolbarTitle:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewShowHideAnimator;->mToolbarTitleCopyView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewShowHideAnimator;->mToolbarTitle:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setX(F)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewShowHideAnimator;->mToolbarTitleCopyView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewShowHideAnimator;->mToolbarTitle:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTop()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setY(F)V

    return-void
.end method

.method private updateTitleLeftTop(IIIIF)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewShowHideAnimator;->mTitleView:Landroid/widget/EditText;

    int-to-float p1, p1

    int-to-float p3, p3

    invoke-direct {p0, p1, p3, p5}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewShowHideAnimator;->getAnimatedValue(FFF)F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setX(F)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewShowHideAnimator;->mTitleView:Landroid/widget/EditText;

    int-to-float p2, p2

    int-to-float p3, p4

    invoke-direct {p0, p2, p3, p5}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewShowHideAnimator;->getAnimatedValue(FFF)F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setY(F)V

    return-void
.end method

.method private updateWidth(FFF)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewShowHideAnimator;->mTitleView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewShowHideAnimator;->getAnimatedValue(FFF)F

    move-result p1

    float-to-int p1, p1

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewShowHideAnimator;->mTitleView:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public getBottom()I
    .locals 2

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewShowHideAnimator;->mTitleTopEnd:I

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewShowHideAnimator;->mTitleView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getHideAlphaAnimator()Landroid/animation/AnimatorSet;
    .locals 6

    const/4 v0, 0x2

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewShowHideAnimator$5;

    invoke-direct {v2, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewShowHideAnimator$5;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewShowHideAnimator;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewShowHideAnimator;->mToolbarTitleCopyView:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    new-array v2, v0, [F

    fill-array-data v2, :array_1

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    new-instance v4, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewShowHideAnimator$6;

    invoke-direct {v4, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewShowHideAnimator$6;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewShowHideAnimator;)V

    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v4, 0x50

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    const-wide/16 v4, 0xfd

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v0, v0, [Landroid/animation/Animator;

    aput-object v1, v0, v3

    const/4 v1, 0x1

    aput-object v2, v0, v1

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-object v4

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public getShowAlphaAnimator()Landroid/animation/AnimatorSet;
    .locals 6

    const/4 v0, 0x2

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewShowHideAnimator$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewShowHideAnimator$2;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewShowHideAnimator;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v2, 0x50

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    const-wide/16 v2, 0xfd

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewShowHideAnimator;->mToolbarTitleCopyView:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    new-array v2, v0, [F

    fill-array-data v2, :array_1

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    new-instance v4, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewShowHideAnimator$3;

    invoke-direct {v4, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewShowHideAnimator$3;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewShowHideAnimator;)V

    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v4, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewShowHideAnimator$4;

    invoke-direct {v4, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewShowHideAnimator$4;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewShowHideAnimator;)V

    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v0, v0, [Landroid/animation/Animator;

    aput-object v1, v0, v3

    const/4 v1, 0x1

    aput-object v2, v0, v1

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-object v4

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

.method public initAnimationValueTitleView(IIII)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewShowHideAnimator;->mTitleLeftStart:I

    iput p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewShowHideAnimator;->mTitleLeftEnd:I

    iput p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewShowHideAnimator;->mTitleTopStart:I

    iput p4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewShowHideAnimator;->mTitleTopEnd:I

    return-void
.end method

.method public initHideState(Landroidx/appcompat/widget/AppCompatTextView;II)V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewShowHideAnimator;->TAG:Ljava/lang/String;

    const-string v1, "initHideState#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewShowHideAnimator;->mToolbarTitle:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewShowHideAnimator;->mContract:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewShowHideAnimator$Contract;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewShowHideAnimator$Contract;->onHide()V

    invoke-direct {p0, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewShowHideAnimator;->initToolbarTitleCopyView(I)V

    int-to-float p1, p2

    const/4 p2, 0x0

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-direct {p0, p2, p1, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewShowHideAnimator;->updateWidth(FFF)V

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewShowHideAnimator;->initAnimationValue(Z)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewShowHideAnimator;->mTitleView:Landroid/widget/EditText;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setSelection(I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewShowHideAnimator;->mTitleView:Landroid/widget/EditText;

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewShowHideAnimator;->mTitleRecommendCueViewManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleRecommendViewManager;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleRecommendViewManager;->setCueVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewShowHideAnimator;->mTitleRecommendCueViewManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleRecommendViewManager;

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleRecommendViewManager;->setCueProgressVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewShowHideAnimator;->mTitleRecommendCueViewManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleRecommendViewManager;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleRecommendViewManager;->hideRecommendedList()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewShowHideAnimator;->mContract:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewShowHideAnimator$Contract;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewShowHideAnimator$Contract;->getPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/title/TitleEditorPresenter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/title/TitleEditorPresenter;->cancelRecommendedTitleList()V

    return-void
.end method

.method public initShowState(Landroidx/appcompat/widget/AppCompatTextView;II)V
    .locals 6

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewShowHideAnimator;->TAG:Ljava/lang/String;

    const-string v1, "initShowState#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewShowHideAnimator;->mToolbarTitle:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewShowHideAnimator;->mContract:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewShowHideAnimator$Contract;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewShowHideAnimator$Contract;->onShow()V

    invoke-direct {p0, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewShowHideAnimator;->initToolbarTitleCopyView(I)V

    int-to-float p1, p2

    const/4 p2, 0x0

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-direct {p0, p2, p1, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewShowHideAnimator;->updateWidth(FFF)V

    iget v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewShowHideAnimator;->mTitleLeftStart:I

    iget v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewShowHideAnimator;->mTitleTopStart:I

    iget v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewShowHideAnimator;->mTitleLeftEnd:I

    iget v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewShowHideAnimator;->mTitleTopEnd:I

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewShowHideAnimator;->updateTitleLeftTop(IIIIF)V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewShowHideAnimator;->initAnimationValue(Z)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewShowHideAnimator;->mTitleView:Landroid/widget/EditText;

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewShowHideAnimator;->mTitleRecommendCueViewManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleRecommendViewManager;

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewShowHideAnimator;->mContract:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewShowHideAnimator$Contract;

    invoke-interface {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewShowHideAnimator$Contract;->getPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/title/TitleEditorPresenter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/title/TitleEditorPresenter;->getComposerModel()Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->isEmpty()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleRecommendViewManager;->setEnabled(Z)V

    return-void
.end method

.method public updateViewByFraction(FZ)V
    .locals 0

    if-eqz p2, :cond_0

    const/high16 p2, 0x3f800000    # 1.0f

    sub-float p1, p2, p1

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewShowHideAnimator;->animateTitleViewByFraction(F)V

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewShowHideAnimator;->animateToolbarTitleCopyViewByFraction(F)V

    return-void
.end method
