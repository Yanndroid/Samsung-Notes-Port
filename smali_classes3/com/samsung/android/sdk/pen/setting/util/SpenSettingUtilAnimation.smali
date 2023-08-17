.class public Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilAnimation;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CUSTOM_INTERPOLATOR_BRUSH_SELECT:I = 0xb

.field public static final CUSTOM_INTERPOLATOR_BRUSH_TRANSITION:I = 0xc

.field public static final CUSTOM_INTERPOLATOR_LINEAR:I = 0xf

.field public static final DEFAULT_INTERPOLATOR:I = 0x0

.field public static final SINE_IN_OUT_33:I = 0x1

.field public static final SINE_IN_OUT_70:I = 0x2

.field public static final SINE_IN_OUT_80:I = 0x3

.field public static final SINE_IN_OUT_90:I = 0x4

.field public static final SINE_OUT_60:I = 0x5

.field public static final SIN_IN_90:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static alphaGoneAnimation(Landroid/view/View;IJLandroid/view/animation/Animation$AnimationListener;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v0, p2, p3}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilAnimation;->getInterpolator(I)Landroid/view/animation/PathInterpolator;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v0, p4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public static alphaVisibleAnimation(Landroid/view/View;IJ)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilAnimation;->alphaVisibleAnimation(Landroid/view/View;IJLandroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method public static alphaVisibleAnimation(Landroid/view/View;IJLandroid/view/animation/Animation$AnimationListener;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v0, p2, p3}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilAnimation;->getInterpolator(I)Landroid/view/animation/PathInterpolator;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v0, p4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public static colorSelectAnimation(Landroid/view/View;)V
    .locals 9

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/view/View;->measure(II)V

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const v2, 0x3dcccccd    # 0.1f

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3dcccccd    # 0.1f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v6, 0x40000000    # 2.0f

    div-float v7, v1, v6

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    div-float v8, v1, v6

    move-object v1, v0

    move v6, v7

    move v7, v8

    invoke-direct/range {v1 .. v7}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v2, Landroid/view/animation/PathInterpolator;

    const v3, 0x3db851ec    # 0.09f

    const v4, 0x3f68f5c3    # 0.91f

    const v5, 0x3eeb851f    # 0.46f

    const v6, 0x3fab851f    # 1.34f

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v2, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    invoke-virtual {v2, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v2, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {p0, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public static getInterpolator(I)Landroid/view/animation/PathInterpolator;
    .locals 5

    const/16 v0, 0xb

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-eq p0, v0, :cond_2

    const/16 v0, 0xc

    const v3, 0x3ecccccd    # 0.4f

    if-eq p0, v0, :cond_1

    const/16 v0, 0xf

    if-eq p0, v0, :cond_0

    const v0, 0x3f2b851f    # 0.67f

    const v4, 0x3ea8f5c3    # 0.33f

    packed-switch p0, :pswitch_data_0

    new-instance p0, Landroid/view/animation/PathInterpolator;

    invoke-direct {p0, v4, v2, v0, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    goto :goto_0

    :pswitch_0
    new-instance p0, Landroid/view/animation/PathInterpolator;

    const v0, 0x3f666666    # 0.9f

    const v1, 0x3f547ae1    # 0.83f

    invoke-direct {p0, v0, v2, v1, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    goto :goto_0

    :pswitch_1
    new-instance p0, Landroid/view/animation/PathInterpolator;

    const v0, 0x3e2e147b    # 0.17f

    invoke-direct {p0, v0, v0, v3, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    goto :goto_0

    :pswitch_2
    new-instance p0, Landroid/view/animation/PathInterpolator;

    const v0, 0x3dcccccd    # 0.1f

    invoke-direct {p0, v4, v2, v0, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    goto :goto_0

    :pswitch_3
    new-instance p0, Landroid/view/animation/PathInterpolator;

    const v0, 0x3e4ccccd    # 0.2f

    invoke-direct {p0, v4, v2, v0, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    goto :goto_0

    :pswitch_4
    new-instance p0, Landroid/view/animation/PathInterpolator;

    const v0, 0x3e99999a    # 0.3f

    invoke-direct {p0, v4, v2, v0, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    goto :goto_0

    :pswitch_5
    new-instance p0, Landroid/view/animation/PathInterpolator;

    invoke-direct {p0, v4, v2, v0, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    goto :goto_0

    :cond_0
    new-instance p0, Landroid/view/animation/PathInterpolator;

    invoke-direct {p0, v2, v2, v1, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    goto :goto_0

    :cond_1
    new-instance p0, Landroid/view/animation/PathInterpolator;

    const v0, 0x3f19999a    # 0.6f

    invoke-direct {p0, v3, v0, v2, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    goto :goto_0

    :cond_2
    new-instance p0, Landroid/view/animation/PathInterpolator;

    const v0, 0x3e6147ae    # 0.22f

    const/high16 v3, 0x3e800000    # 0.25f

    invoke-direct {p0, v0, v3, v2, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    :goto_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static scaleDownGoneAnimation(Landroid/view/View;IJLandroid/animation/Animator$AnimatorListener;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, p4}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilAnimation;->getInterpolator(I)Landroid/view/animation/PathInterpolator;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public static scaleUpDownAnimation(Landroid/view/View;FJIJIJ)V
    .locals 16

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3}, Landroid/view/View;->measure(II)V

    const/high16 v4, 0x3f800000    # 1.0f

    div-float v4, v4, p1

    new-instance v14, Landroid/view/animation/ScaleAnimation;

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v10, 0x1

    const/high16 v11, 0x3f000000    # 0.5f

    const/4 v12, 0x1

    const/high16 v13, 0x3f000000    # 0.5f

    move-object v5, v14

    move/from16 v7, p1

    move/from16 v9, p1

    invoke-direct/range {v5 .. v13}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    invoke-virtual {v14, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-static/range {p4 .. p4}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilAnimation;->getInterpolator(I)Landroid/view/animation/PathInterpolator;

    move-result-object v5

    invoke-virtual {v14, v5}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v15, Landroid/view/animation/ScaleAnimation;

    move-object v5, v15

    move v7, v4

    move v9, v4

    invoke-direct/range {v5 .. v13}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    move-wide/from16 v4, p5

    invoke-virtual {v15, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-static/range {p7 .. p7}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilAnimation;->getInterpolator(I)Landroid/view/animation/PathInterpolator;

    move-result-object v4

    invoke-virtual {v15, v4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    add-long v1, v1, p8

    invoke-virtual {v15, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    new-instance v1, Landroid/view/animation/AnimationSet;

    invoke-direct {v1, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    invoke-virtual {v1, v14}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v1, v15}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public static scaleUpVisibleAnimation(Landroid/view/View;IJLandroid/animation/Animator$AnimatorListener;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, p4}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilAnimation;->getInterpolator(I)Landroid/view/animation/PathInterpolator;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method
