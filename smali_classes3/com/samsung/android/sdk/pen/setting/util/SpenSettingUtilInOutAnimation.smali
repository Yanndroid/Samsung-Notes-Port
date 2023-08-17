.class public Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilInOutAnimation;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilInOutAnimation$AnimationEndListener;
    }
.end annotation


# static fields
.field public static final INTERPOLATOR_SINE_IN_OUT_33:I = 0x1

.field public static final INTERPOLATOR_SINE_IN_OUT_70:I = 0x2


# instance fields
.field private mAlphaDuration:J

.field private mAlphaInterpolator:I

.field private mAnimationEndListener:Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilInOutAnimation$AnimationEndListener;

.field private final mHideListenerAdapter:Landroid/animation/AnimatorListenerAdapter;

.field private final mShowListenerAdapter:Landroid/animation/AnimatorListenerAdapter;

.field private mTarget:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilInOutAnimation$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilInOutAnimation$1;-><init>(Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilInOutAnimation;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilInOutAnimation;->mShowListenerAdapter:Landroid/animation/AnimatorListenerAdapter;

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilInOutAnimation$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilInOutAnimation$2;-><init>(Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilInOutAnimation;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilInOutAnimation;->mHideListenerAdapter:Landroid/animation/AnimatorListenerAdapter;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilInOutAnimation;->mAlphaDuration:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilInOutAnimation;->mAlphaInterpolator:I

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilInOutAnimation;)Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilInOutAnimation$AnimationEndListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilInOutAnimation;->mAnimationEndListener:Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilInOutAnimation$AnimationEndListener;

    return-object p0
.end method

.method private setAlphaAnimator(FFJLandroid/animation/TimeInterpolator;Landroid/animation/Animator$AnimatorListener;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p7, p1}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p7}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p3, p4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p6}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilInOutAnimation;->mTarget:Ljava/util/List;

    return-void
.end method

.method public hideAnimation()V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilInOutAnimation;->mAlphaDuration:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    iget v2, p0, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilInOutAnimation;->mAlphaInterpolator:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilInOutAnimation;->hideAnimation(JI)V

    :cond_0
    return-void
.end method

.method public hideAnimation(JI)V
    .locals 11

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilInOutAnimation;->mTarget:Ljava/util/List;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilInOutAnimation;->mTarget:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilInOutAnimation;->mTarget:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/view/View;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilInOutAnimation;->mTarget:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ne v1, v2, :cond_0

    goto :goto_1

    :cond_0
    move v3, v0

    :goto_1
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    invoke-static {p3}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilAnimation;->getInterpolator(I)Landroid/view/animation/PathInterpolator;

    move-result-object v8

    if-eqz v3, :cond_1

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilInOutAnimation;->mHideListenerAdapter:Landroid/animation/AnimatorListenerAdapter;

    goto :goto_2

    :cond_1
    const/4 v2, 0x0

    :goto_2
    move-object v9, v2

    move-object v3, p0

    move-wide v6, p1

    invoke-direct/range {v3 .. v10}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilInOutAnimation;->setAlphaAnimator(FFJLandroid/animation/TimeInterpolator;Landroid/animation/Animator$AnimatorListener;Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public varargs registerViewForAni([Landroid/view/View;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilInOutAnimation;->mTarget:Ljava/util/List;

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilInOutAnimation;->mTarget:Ljava/util/List;

    :cond_1
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilInOutAnimation;->mTarget:Ljava/util/List;

    aget-object v2, p1, v0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_1
    return v0
.end method

.method public setAlphaValue(JI)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilInOutAnimation;->mAlphaDuration:J

    iput p3, p0, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilInOutAnimation;->mAlphaInterpolator:I

    return-void
.end method

.method public setAnimationEndListener(Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilInOutAnimation$AnimationEndListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilInOutAnimation;->mAnimationEndListener:Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilInOutAnimation$AnimationEndListener;

    return-void
.end method

.method public setObjectVisibility(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilInOutAnimation;->mTarget:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilInOutAnimation;->mTarget:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilInOutAnimation;->mTarget:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public showAnimation()V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilInOutAnimation;->mAlphaDuration:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    iget v2, p0, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilInOutAnimation;->mAlphaInterpolator:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilInOutAnimation;->showAnimation(JI)V

    :cond_0
    return-void
.end method

.method public showAnimation(JI)V
    .locals 11

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilInOutAnimation;->mTarget:Ljava/util/List;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilInOutAnimation;->mTarget:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilInOutAnimation;->mTarget:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/view/View;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilInOutAnimation;->mTarget:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ne v1, v2, :cond_0

    goto :goto_1

    :cond_0
    move v3, v0

    :goto_1
    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {p3}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilAnimation;->getInterpolator(I)Landroid/view/animation/PathInterpolator;

    move-result-object v8

    if-eqz v3, :cond_1

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilInOutAnimation;->mShowListenerAdapter:Landroid/animation/AnimatorListenerAdapter;

    goto :goto_2

    :cond_1
    const/4 v2, 0x0

    :goto_2
    move-object v9, v2

    move-object v3, p0

    move-wide v6, p1

    invoke-direct/range {v3 .. v10}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilInOutAnimation;->setAlphaAnimator(FFJLandroid/animation/TimeInterpolator;Landroid/animation/Animator$AnimatorListener;Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public varargs unRegisterViewForAni([Landroid/view/View;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    array-length v1, p1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilInOutAnimation;->mTarget:Ljava/util/List;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilInOutAnimation;->mTarget:Ljava/util/List;

    aget-object v2, p1, v0

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_1
    return v0
.end method
