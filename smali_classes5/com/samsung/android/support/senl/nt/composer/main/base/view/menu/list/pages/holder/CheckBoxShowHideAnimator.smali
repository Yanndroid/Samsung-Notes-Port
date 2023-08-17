.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/CheckBoxShowHideAnimator;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ALPHA_PROPERTY_NAME:Ljava/lang/String; = "ALPHA"

.field private static final CHECKED_DIM_OPACITY_FROM:I = 0x0

.field public static final CHECKED_DIM_OPACITY_TO:I = 0x64

.field private static final CHECKED_DURATION:I = 0x64

.field private static final SCALE_PROPERTY_NAME:Ljava/lang/String; = "SCALE"

.field private static final SHOW_ALPHA_FROM:F = 0.0f

.field private static final SHOW_ALPHA_TO:F = 1.0f

.field private static final SHOW_HIDE_DURATION:I = 0x190

.field private static final SHOW_SCALE_FROM:F = 0.5f

.field private static final SHOW_SCALE_TO:F = 1.0f

.field private static final UNCHECKED_DIM_OPACITY_FROM:I = 0x64

.field public static final UNCHECKED_DIM_OPACITY_TO:I


# instance fields
.field private mDimAnimator:Landroid/animation/ValueAnimator;

.field private mHideAnimator:Landroid/animation/ValueAnimator;

.field private mLinearInterpolator:Landroid/view/animation/LinearInterpolator;

.field private mShowAnimator:Landroid/animation/ValueAnimator;

.field private mSineInOut90:Lcom/samsung/android/view/animation/SineInOut90;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private createLinearInterpolator()Landroid/view/animation/LinearInterpolator;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/CheckBoxShowHideAnimator;->mLinearInterpolator:Landroid/view/animation/LinearInterpolator;

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/CheckBoxShowHideAnimator;->mLinearInterpolator:Landroid/view/animation/LinearInterpolator;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/CheckBoxShowHideAnimator;->mLinearInterpolator:Landroid/view/animation/LinearInterpolator;

    return-object v0
.end method

.method private createSineInOut90()Lcom/samsung/android/view/animation/SineInOut90;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/CheckBoxShowHideAnimator;->mSineInOut90:Lcom/samsung/android/view/animation/SineInOut90;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/view/animation/SineInOut90;

    invoke-direct {v0}, Lcom/samsung/android/view/animation/SineInOut90;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/CheckBoxShowHideAnimator;->mSineInOut90:Lcom/samsung/android/view/animation/SineInOut90;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/CheckBoxShowHideAnimator;->mSineInOut90:Lcom/samsung/android/view/animation/SineInOut90;

    return-object v0
.end method


# virtual methods
.method public hideAnimation(Landroid/widget/CheckBox;)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/CheckBoxShowHideAnimator;->mShowAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/CheckBoxShowHideAnimator;->mShowAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    new-instance v1, Landroid/animation/ValueAnimator;

    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/CheckBoxShowHideAnimator;->mHideAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x190

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/CheckBoxShowHideAnimator;->createSineInOut90()Lcom/samsung/android/view/animation/SineInOut90;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/CheckBoxShowHideAnimator;->mHideAnimator:Landroid/animation/ValueAnimator;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/animation/PropertyValuesHolder;

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    const-string v4, "ALPHA"

    invoke-static {v4, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/CheckBoxShowHideAnimator;->mHideAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/CheckBoxShowHideAnimator$5;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/CheckBoxShowHideAnimator$5;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/CheckBoxShowHideAnimator;Landroid/widget/CheckBox;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/CheckBoxShowHideAnimator;->mHideAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/CheckBoxShowHideAnimator$6;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/CheckBoxShowHideAnimator$6;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/CheckBoxShowHideAnimator;Landroid/widget/CheckBox;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/CheckBoxShowHideAnimator;->mHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public showAnimation(Landroid/widget/CheckBox;)V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/CheckBoxShowHideAnimator;->mHideAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/CheckBoxShowHideAnimator;->mHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setAlpha(F)V

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setScaleX(F)V

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setScaleY(F)V

    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/CheckBoxShowHideAnimator;->mShowAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/CheckBoxShowHideAnimator;->createSineInOut90()Lcom/samsung/android/view/animation/SineInOut90;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/CheckBoxShowHideAnimator;->mShowAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v2, v1, [Landroid/animation/PropertyValuesHolder;

    const/4 v3, 0x0

    new-array v4, v1, [F

    fill-array-data v4, :array_0

    const-string v5, "SCALE"

    invoke-static {v5, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-array v1, v1, [F

    fill-array-data v1, :array_1

    const-string v4, "ALPHA"

    invoke-static {v4, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/CheckBoxShowHideAnimator;->mShowAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/CheckBoxShowHideAnimator$3;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/CheckBoxShowHideAnimator$3;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/CheckBoxShowHideAnimator;Landroid/widget/CheckBox;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/CheckBoxShowHideAnimator;->mShowAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/CheckBoxShowHideAnimator$4;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/CheckBoxShowHideAnimator$4;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/CheckBoxShowHideAnimator;Landroid/widget/CheckBox;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/CheckBoxShowHideAnimator;->mShowAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public updateCheckBoxDim(ZLcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/CheckableRelativeLayout;Landroid/widget/CheckBox;)V
    .locals 4

    const/16 v0, 0x64

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move p1, v0

    move v0, v1

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/CheckBoxShowHideAnimator;->mDimAnimator:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/CheckBoxShowHideAnimator;->mDimAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    const/4 v2, 0x1

    invoke-virtual {p2, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/CheckableRelativeLayout;->setChecked(Z)V

    const/4 v3, 0x2

    new-array v3, v3, [I

    aput v0, v3, v1

    aput p1, v3, v2

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/CheckBoxShowHideAnimator;->mDimAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/CheckBoxShowHideAnimator;->createLinearInterpolator()Landroid/view/animation/LinearInterpolator;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/CheckBoxShowHideAnimator;->mDimAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x64

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/CheckBoxShowHideAnimator;->mDimAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/CheckBoxShowHideAnimator$1;

    invoke-direct {v0, p0, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/CheckBoxShowHideAnimator$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/CheckBoxShowHideAnimator;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/CheckableRelativeLayout;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/CheckBoxShowHideAnimator;->mDimAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/CheckBoxShowHideAnimator$2;

    invoke-direct {v0, p0, p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/CheckBoxShowHideAnimator$2;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/CheckBoxShowHideAnimator;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/CheckableRelativeLayout;Landroid/widget/CheckBox;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/CheckBoxShowHideAnimator;->mDimAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method
