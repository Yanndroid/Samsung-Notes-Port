.class public abstract Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorBase;
.super Landroid/animation/ValueAnimator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorBase$UpdateParameter;
    }
.end annotation


# static fields
.field public static final INTERPOLATOR_TYPE_ACCELERATE:B = 0x2t

.field public static final INTERPOLATOR_TYPE_ACCELERATE_DECELERATE:B = 0x1t

.field public static final INTERPOLATOR_TYPE_ANTICIPATE:B = 0x3t

.field public static final INTERPOLATOR_TYPE_ANTICIPATE_OVERSHOOT:B = 0x4t

.field public static final INTERPOLATOR_TYPE_BACKEASEIN:B = 0xat

.field public static final INTERPOLATOR_TYPE_BACKEASEINOUT:B = 0xct

.field public static final INTERPOLATOR_TYPE_BACKEASEOUT:B = 0xbt

.field public static final INTERPOLATOR_TYPE_BOUNCE:B = 0x5t

.field public static final INTERPOLATOR_TYPE_BOUNCEEASEIN:B = 0xdt

.field public static final INTERPOLATOR_TYPE_BOUNCEEASEINOUT:B = 0xft

.field public static final INTERPOLATOR_TYPE_BOUNCEEASEOUT:B = 0xet

.field public static final INTERPOLATOR_TYPE_CIRCEASEIN:B = 0x10t

.field public static final INTERPOLATOR_TYPE_CIRCEASEINOUT:B = 0x12t

.field public static final INTERPOLATOR_TYPE_CIRCEASEOUT:B = 0x11t

.field public static final INTERPOLATOR_TYPE_CUBICEASEIN:B = 0x13t

.field public static final INTERPOLATOR_TYPE_CUBICEASEINOUT:B = 0x15t

.field public static final INTERPOLATOR_TYPE_CUBICEASEOUT:B = 0x14t

.field public static final INTERPOLATOR_TYPE_CYCLE:B = 0x6t

.field public static final INTERPOLATOR_TYPE_DECELERATE:B = 0x7t

.field public static final INTERPOLATOR_TYPE_ELASTICEASEIN:B = 0x16t

.field public static final INTERPOLATOR_TYPE_ELASTICEASEINOUT:B = 0x18t

.field public static final INTERPOLATOR_TYPE_ELASTICEASEOUT:B = 0x17t

.field public static final INTERPOLATOR_TYPE_EXPOEASEIN:B = 0x19t

.field public static final INTERPOLATOR_TYPE_EXPOEASEINOUT:B = 0x1bt

.field public static final INTERPOLATOR_TYPE_EXPOEASEOUT:B = 0x1at

.field public static final INTERPOLATOR_TYPE_LINEAR:B = 0x8t

.field public static final INTERPOLATOR_TYPE_OVERSHOOT:B = 0x9t

.field public static final INTERPOLATOR_TYPE_QUADEASEIN:B = 0x1ct

.field public static final INTERPOLATOR_TYPE_QUADEASEINOUT:B = 0x1et

.field public static final INTERPOLATOR_TYPE_QUADEASEOUT:B = 0x1dt

.field public static final INTERPOLATOR_TYPE_QUARTEASEIN:B = 0x1ft

.field public static final INTERPOLATOR_TYPE_QUARTEASEINOUT:B = 0x21t

.field public static final INTERPOLATOR_TYPE_QUARTEASEOUT:B = 0x20t

.field public static final INTERPOLATOR_TYPE_QUINTEASEIN:B = 0x22t

.field public static final INTERPOLATOR_TYPE_QUINTEASEINOUT:B = 0x24t

.field public static final INTERPOLATOR_TYPE_QUINTEASEOUT:B = 0x23t

.field public static final INTERPOLATOR_TYPE_QUINTOUT50:B = 0x28t

.field public static final INTERPOLATOR_TYPE_QUINTOUT80:B = 0x29t

.field public static final INTERPOLATOR_TYPE_SINEEASEIN:B = 0x25t

.field public static final INTERPOLATOR_TYPE_SINEEASEINOUT:B = 0x27t

.field public static final INTERPOLATOR_TYPE_SINEEASEOUT:B = 0x26t

.field public static final INTERPOLATOR_TYPE_SINEIN33:B = 0x2at

.field public static final INTERPOLATOR_TYPE_SINEINOUT33:B = 0x2bt

.field public static final INTERPOLATOR_TYPE_SINEINOUT50:B = 0x2ct

.field public static final INTERPOLATOR_TYPE_SINEINOUT60:B = 0x2dt

.field public static final INTERPOLATOR_TYPE_SINEINOUT70:B = 0x2et

.field public static final INTERPOLATOR_TYPE_SINEINOUT80:B = 0x2ft

.field public static final INTERPOLATOR_TYPE_SINEINOUT90:B = 0x30t

.field public static final INTERPOLATOR_TYPE_SINEOUT33:B = 0x31t

.field public static final REPEAT_MODE_RESTART:B = 0x2t

.field public static final REPEAT_MODE_REVERSE:B = 0x1t

.field public static final TYPE_ALPHA:B = 0x6t

.field public static final TYPE_FILL_COLOR:B = 0x5t

.field public static final TYPE_NONE:B = 0x0t

.field public static final TYPE_ROTATE:B = 0x3t

.field public static final TYPE_SCALE:B = 0x2t

.field public static final TYPE_STROKE_COLOR:B = 0x4t

.field public static final TYPE_TRANSLATE:B = 0x1t


# instance fields
.field private mInterpolatorAmplitude:F

.field private mInterpolatorCycle:F

.field private mInterpolatorOvershot:F

.field private mInterpolatorPeriod:F

.field private mInterpolatorType:B

.field public final mIntrinsic:Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorBase;

.field public final mType:B


# direct methods
.method public constructor <init>(B)V
    .locals 1

    invoke-direct {p0}, Landroid/animation/ValueAnimator;-><init>()V

    const/4 v0, 0x1

    iput-byte v0, p0, Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorBase;->mInterpolatorType:B

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorBase;->mInterpolatorCycle:F

    iput v0, p0, Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorBase;->mInterpolatorOvershot:F

    iput v0, p0, Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorBase;->mInterpolatorAmplitude:F

    iput v0, p0, Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorBase;->mInterpolatorPeriod:F

    iput-byte p1, p0, Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorBase;->mType:B

    iput-object p0, p0, Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorBase;->mIntrinsic:Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorBase;

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Landroid/animation/Animator;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorBase;->clone()Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorBase;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Landroid/animation/ValueAnimator;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorBase;->clone()Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorBase;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorBase;
    .locals 1

    invoke-super {p0}, Landroid/animation/ValueAnimator;->clone()Landroid/animation/ValueAnimator;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorBase;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorBase;->clone()Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorBase;

    move-result-object v0

    return-object v0
.end method

.method public fromSPR(Lcom/samsung/android/spr/drawable/document/SprInputStream;)V
    .locals 4

    invoke-virtual {p1}, Lcom/samsung/android/spr/drawable/document/SprInputStream;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorBase;->mInterpolatorType:B

    invoke-virtual {p1}, Lcom/samsung/android/spr/drawable/document/SprInputStream;->readInt()I

    move-result v0

    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Lcom/samsung/android/spr/drawable/document/SprInputStream;->read([BII)I

    iget-byte v0, p0, Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorBase;->mInterpolatorType:B

    const/4 v2, 0x6

    if-ne v0, v2, :cond_0

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorBase;->mInterpolatorCycle:F

    iget-byte v1, p0, Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorBase;->mInterpolatorType:B

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorBase;->setInterpolatorCycle(BF)V

    goto :goto_0

    :cond_0
    const/16 v2, 0xa

    if-lt v0, v2, :cond_1

    const/16 v2, 0xb

    if-gt v0, v2, :cond_1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorBase;->mInterpolatorOvershot:F

    iget-byte v1, p0, Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorBase;->mInterpolatorType:B

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorBase;->setInterpolatorBackEase(BF)V

    goto :goto_0

    :cond_1
    const/16 v2, 0x16

    if-lt v0, v2, :cond_2

    const/16 v2, 0x17

    if-gt v0, v2, :cond_2

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorBase;->mInterpolatorAmplitude:F

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorBase;->mInterpolatorPeriod:F

    iget-byte v1, p0, Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorBase;->mInterpolatorType:B

    iget v2, p0, Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorBase;->mInterpolatorAmplitude:F

    invoke-virtual {p0, v1, v2, v0}, Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorBase;->setInterpolatorElastic(BFF)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0}, Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorBase;->setInterpolator(B)V

    :goto_0
    invoke-virtual {p1}, Lcom/samsung/android/spr/drawable/document/SprInputStream;->readInt()I

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/android/spr/drawable/document/SprInputStream;->readInt()I

    move-result v1

    int-to-long v2, v0

    invoke-virtual {p0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    int-to-long v0, v1

    invoke-virtual {p0, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Lcom/samsung/android/spr/drawable/document/SprInputStream;->readByte()B

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    invoke-virtual {p0, v2}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    :goto_1
    invoke-virtual {p1}, Lcom/samsung/android/spr/drawable/document/SprInputStream;->readInt()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    return-void
.end method

.method public getSPRSize()I
    .locals 2

    iget-byte v0, p0, Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorBase;->mInterpolatorType:B

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/16 v0, 0x16

    return v0

    :cond_0
    const/16 v0, 0x12

    return v0
.end method

.method public setInterpolator(B)V
    .locals 3

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected interpolatorType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    new-instance v0, Lcom/samsung/android/spr/drawable/animation/interpolator/SineOut33;

    invoke-direct {v0}, Lcom/samsung/android/spr/drawable/animation/interpolator/SineOut33;-><init>()V

    goto/16 :goto_0

    :pswitch_2
    new-instance v0, Lcom/samsung/android/spr/drawable/animation/interpolator/SineInOut90;

    invoke-direct {v0}, Lcom/samsung/android/spr/drawable/animation/interpolator/SineInOut90;-><init>()V

    goto/16 :goto_0

    :pswitch_3
    new-instance v0, Lcom/samsung/android/spr/drawable/animation/interpolator/SineInOut80;

    invoke-direct {v0}, Lcom/samsung/android/spr/drawable/animation/interpolator/SineInOut80;-><init>()V

    goto/16 :goto_0

    :pswitch_4
    new-instance v0, Lcom/samsung/android/spr/drawable/animation/interpolator/SineInOut70;

    invoke-direct {v0}, Lcom/samsung/android/spr/drawable/animation/interpolator/SineInOut70;-><init>()V

    goto/16 :goto_0

    :pswitch_5
    new-instance v0, Lcom/samsung/android/spr/drawable/animation/interpolator/SineInOut60;

    invoke-direct {v0}, Lcom/samsung/android/spr/drawable/animation/interpolator/SineInOut60;-><init>()V

    goto/16 :goto_0

    :pswitch_6
    new-instance v0, Lcom/samsung/android/spr/drawable/animation/interpolator/SineInOut50;

    invoke-direct {v0}, Lcom/samsung/android/spr/drawable/animation/interpolator/SineInOut50;-><init>()V

    goto/16 :goto_0

    :pswitch_7
    new-instance v0, Lcom/samsung/android/spr/drawable/animation/interpolator/SineInOut33;

    invoke-direct {v0}, Lcom/samsung/android/spr/drawable/animation/interpolator/SineInOut33;-><init>()V

    goto/16 :goto_0

    :pswitch_8
    new-instance v0, Lcom/samsung/android/spr/drawable/animation/interpolator/SineIn33;

    invoke-direct {v0}, Lcom/samsung/android/spr/drawable/animation/interpolator/SineIn33;-><init>()V

    goto/16 :goto_0

    :pswitch_9
    new-instance v0, Lcom/samsung/android/spr/drawable/animation/interpolator/QuintOut80;

    invoke-direct {v0}, Lcom/samsung/android/spr/drawable/animation/interpolator/QuintOut80;-><init>()V

    goto/16 :goto_0

    :pswitch_a
    new-instance v0, Lcom/samsung/android/spr/drawable/animation/interpolator/QuintOut50;

    invoke-direct {v0}, Lcom/samsung/android/spr/drawable/animation/interpolator/QuintOut50;-><init>()V

    goto/16 :goto_0

    :pswitch_b
    new-instance v0, Lcom/samsung/android/spr/drawable/animation/interpolator/SineEaseInOut;

    invoke-direct {v0}, Lcom/samsung/android/spr/drawable/animation/interpolator/SineEaseInOut;-><init>()V

    goto/16 :goto_0

    :pswitch_c
    new-instance v0, Lcom/samsung/android/spr/drawable/animation/interpolator/SineEaseOut;

    invoke-direct {v0}, Lcom/samsung/android/spr/drawable/animation/interpolator/SineEaseOut;-><init>()V

    goto/16 :goto_0

    :pswitch_d
    new-instance v0, Lcom/samsung/android/spr/drawable/animation/interpolator/SineEaseIn;

    invoke-direct {v0}, Lcom/samsung/android/spr/drawable/animation/interpolator/SineEaseIn;-><init>()V

    goto/16 :goto_0

    :pswitch_e
    new-instance v0, Lcom/samsung/android/spr/drawable/animation/interpolator/QuintEaseInOut;

    invoke-direct {v0}, Lcom/samsung/android/spr/drawable/animation/interpolator/QuintEaseInOut;-><init>()V

    goto/16 :goto_0

    :pswitch_f
    new-instance v0, Lcom/samsung/android/spr/drawable/animation/interpolator/QuintEaseOut;

    invoke-direct {v0}, Lcom/samsung/android/spr/drawable/animation/interpolator/QuintEaseOut;-><init>()V

    goto/16 :goto_0

    :pswitch_10
    new-instance v0, Lcom/samsung/android/spr/drawable/animation/interpolator/QuintEaseIn;

    invoke-direct {v0}, Lcom/samsung/android/spr/drawable/animation/interpolator/QuintEaseIn;-><init>()V

    goto/16 :goto_0

    :pswitch_11
    new-instance v0, Lcom/samsung/android/spr/drawable/animation/interpolator/QuartEaseInOut;

    invoke-direct {v0}, Lcom/samsung/android/spr/drawable/animation/interpolator/QuartEaseInOut;-><init>()V

    goto/16 :goto_0

    :pswitch_12
    new-instance v0, Lcom/samsung/android/spr/drawable/animation/interpolator/QuartEaseOut;

    invoke-direct {v0}, Lcom/samsung/android/spr/drawable/animation/interpolator/QuartEaseOut;-><init>()V

    goto/16 :goto_0

    :pswitch_13
    new-instance v0, Lcom/samsung/android/spr/drawable/animation/interpolator/QuartEaseIn;

    invoke-direct {v0}, Lcom/samsung/android/spr/drawable/animation/interpolator/QuartEaseIn;-><init>()V

    goto/16 :goto_0

    :pswitch_14
    new-instance v0, Lcom/samsung/android/spr/drawable/animation/interpolator/QuadEaseInOut;

    invoke-direct {v0}, Lcom/samsung/android/spr/drawable/animation/interpolator/QuadEaseInOut;-><init>()V

    goto/16 :goto_0

    :pswitch_15
    new-instance v0, Lcom/samsung/android/spr/drawable/animation/interpolator/QuadEaseOut;

    invoke-direct {v0}, Lcom/samsung/android/spr/drawable/animation/interpolator/QuadEaseOut;-><init>()V

    goto/16 :goto_0

    :pswitch_16
    new-instance v0, Lcom/samsung/android/spr/drawable/animation/interpolator/QuadEaseIn;

    invoke-direct {v0}, Lcom/samsung/android/spr/drawable/animation/interpolator/QuadEaseIn;-><init>()V

    goto/16 :goto_0

    :pswitch_17
    new-instance v0, Lcom/samsung/android/spr/drawable/animation/interpolator/ExpoEaseInOut;

    invoke-direct {v0}, Lcom/samsung/android/spr/drawable/animation/interpolator/ExpoEaseInOut;-><init>()V

    goto/16 :goto_0

    :pswitch_18
    new-instance v0, Lcom/samsung/android/spr/drawable/animation/interpolator/ExpoEaseOut;

    invoke-direct {v0}, Lcom/samsung/android/spr/drawable/animation/interpolator/ExpoEaseOut;-><init>()V

    goto/16 :goto_0

    :pswitch_19
    new-instance v0, Lcom/samsung/android/spr/drawable/animation/interpolator/ExpoEaseIn;

    invoke-direct {v0}, Lcom/samsung/android/spr/drawable/animation/interpolator/ExpoEaseIn;-><init>()V

    goto/16 :goto_0

    :pswitch_1a
    new-instance v0, Lcom/samsung/android/spr/drawable/animation/interpolator/ElasticEaseInOut;

    invoke-direct {v0}, Lcom/samsung/android/spr/drawable/animation/interpolator/ElasticEaseInOut;-><init>()V

    goto/16 :goto_0

    :pswitch_1b
    new-instance v0, Lcom/samsung/android/spr/drawable/animation/interpolator/ElasticEaseOut;

    invoke-direct {v0}, Lcom/samsung/android/spr/drawable/animation/interpolator/ElasticEaseOut;-><init>()V

    goto/16 :goto_0

    :pswitch_1c
    new-instance v0, Lcom/samsung/android/spr/drawable/animation/interpolator/ElasticEaseIn;

    invoke-direct {v0}, Lcom/samsung/android/spr/drawable/animation/interpolator/ElasticEaseIn;-><init>()V

    goto/16 :goto_0

    :pswitch_1d
    new-instance v0, Lcom/samsung/android/spr/drawable/animation/interpolator/CubicEaseInOut;

    invoke-direct {v0}, Lcom/samsung/android/spr/drawable/animation/interpolator/CubicEaseInOut;-><init>()V

    goto/16 :goto_0

    :pswitch_1e
    new-instance v0, Lcom/samsung/android/spr/drawable/animation/interpolator/CubicEaseOut;

    invoke-direct {v0}, Lcom/samsung/android/spr/drawable/animation/interpolator/CubicEaseOut;-><init>()V

    goto/16 :goto_0

    :pswitch_1f
    new-instance v0, Lcom/samsung/android/spr/drawable/animation/interpolator/CubicEaseIn;

    invoke-direct {v0}, Lcom/samsung/android/spr/drawable/animation/interpolator/CubicEaseIn;-><init>()V

    goto/16 :goto_0

    :pswitch_20
    new-instance v0, Lcom/samsung/android/spr/drawable/animation/interpolator/CircEaseInOut;

    invoke-direct {v0}, Lcom/samsung/android/spr/drawable/animation/interpolator/CircEaseInOut;-><init>()V

    goto :goto_0

    :pswitch_21
    new-instance v0, Lcom/samsung/android/spr/drawable/animation/interpolator/CircEaseOut;

    invoke-direct {v0}, Lcom/samsung/android/spr/drawable/animation/interpolator/CircEaseOut;-><init>()V

    goto :goto_0

    :pswitch_22
    new-instance v0, Lcom/samsung/android/spr/drawable/animation/interpolator/CircEaseIn;

    invoke-direct {v0}, Lcom/samsung/android/spr/drawable/animation/interpolator/CircEaseIn;-><init>()V

    goto :goto_0

    :pswitch_23
    new-instance v0, Lcom/samsung/android/spr/drawable/animation/interpolator/BounceEaseInOut;

    invoke-direct {v0}, Lcom/samsung/android/spr/drawable/animation/interpolator/BounceEaseInOut;-><init>()V

    goto :goto_0

    :pswitch_24
    new-instance v0, Lcom/samsung/android/spr/drawable/animation/interpolator/BounceEaseOut;

    invoke-direct {v0}, Lcom/samsung/android/spr/drawable/animation/interpolator/BounceEaseOut;-><init>()V

    goto :goto_0

    :pswitch_25
    new-instance v0, Lcom/samsung/android/spr/drawable/animation/interpolator/BounceEaseIn;

    invoke-direct {v0}, Lcom/samsung/android/spr/drawable/animation/interpolator/BounceEaseIn;-><init>()V

    goto :goto_0

    :pswitch_26
    new-instance v0, Lcom/samsung/android/spr/drawable/animation/interpolator/BackEaseInOut;

    invoke-direct {v0}, Lcom/samsung/android/spr/drawable/animation/interpolator/BackEaseInOut;-><init>()V

    goto :goto_0

    :pswitch_27
    new-instance v0, Lcom/samsung/android/spr/drawable/animation/interpolator/BackEaseOut;

    invoke-direct {v0}, Lcom/samsung/android/spr/drawable/animation/interpolator/BackEaseOut;-><init>()V

    goto :goto_0

    :pswitch_28
    new-instance v0, Lcom/samsung/android/spr/drawable/animation/interpolator/BackEaseIn;

    invoke-direct {v0}, Lcom/samsung/android/spr/drawable/animation/interpolator/BackEaseIn;-><init>()V

    goto :goto_0

    :pswitch_29
    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v0}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    goto :goto_0

    :pswitch_2a
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    goto :goto_0

    :pswitch_2b
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    goto :goto_0

    :pswitch_2c
    new-instance v0, Landroid/view/animation/BounceInterpolator;

    invoke-direct {v0}, Landroid/view/animation/BounceInterpolator;-><init>()V

    goto :goto_0

    :pswitch_2d
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    goto :goto_0

    :pswitch_2e
    new-instance v0, Landroid/view/animation/AnticipateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AnticipateInterpolator;-><init>()V

    goto :goto_0

    :pswitch_2f
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    :goto_0
    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iput-byte p1, p0, Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorBase;->mInterpolatorType:B

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2f
        :pswitch_0
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_0
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setInterpolatorBackEase(BF)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    new-instance p2, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected interpolatorType : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    :pswitch_0
    new-instance v0, Lcom/samsung/android/spr/drawable/animation/interpolator/BackEaseInOut;

    invoke-direct {v0, p2}, Lcom/samsung/android/spr/drawable/animation/interpolator/BackEaseInOut;-><init>(F)V

    goto :goto_0

    :pswitch_1
    new-instance v0, Lcom/samsung/android/spr/drawable/animation/interpolator/BackEaseOut;

    invoke-direct {v0, p2}, Lcom/samsung/android/spr/drawable/animation/interpolator/BackEaseOut;-><init>(F)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/samsung/android/spr/drawable/animation/interpolator/BackEaseIn;

    invoke-direct {v0, p2}, Lcom/samsung/android/spr/drawable/animation/interpolator/BackEaseIn;-><init>(F)V

    :goto_0
    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iput-byte p1, p0, Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorBase;->mInterpolatorType:B

    iput p2, p0, Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorBase;->mInterpolatorOvershot:F

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setInterpolatorCycle(BF)V
    .locals 2

    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    new-instance v0, Landroid/view/animation/CycleInterpolator;

    invoke-direct {v0, p2}, Landroid/view/animation/CycleInterpolator;-><init>(F)V

    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iput-byte p1, p0, Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorBase;->mInterpolatorType:B

    iput p2, p0, Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorBase;->mInterpolatorCycle:F

    return-void

    :cond_0
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected interpolatorType : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public setInterpolatorElastic(BFF)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected interpolatorType : "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    :pswitch_0
    new-instance v0, Lcom/samsung/android/spr/drawable/animation/interpolator/ElasticEaseInOut;

    invoke-direct {v0, p2, p3}, Lcom/samsung/android/spr/drawable/animation/interpolator/ElasticEaseInOut;-><init>(FF)V

    goto :goto_0

    :pswitch_1
    new-instance v0, Lcom/samsung/android/spr/drawable/animation/interpolator/ElasticEaseOut;

    invoke-direct {v0, p2, p3}, Lcom/samsung/android/spr/drawable/animation/interpolator/ElasticEaseOut;-><init>(FF)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/samsung/android/spr/drawable/animation/interpolator/ElasticEaseIn;

    invoke-direct {v0, p2, p3}, Lcom/samsung/android/spr/drawable/animation/interpolator/ElasticEaseIn;-><init>(FF)V

    :goto_0
    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iput-byte p1, p0, Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorBase;->mInterpolatorType:B

    iput p2, p0, Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorBase;->mInterpolatorAmplitude:F

    iput p3, p0, Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorBase;->mInterpolatorPeriod:F

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x16
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public toSPR(Ljava/io/DataOutputStream;)V
    .locals 3

    iget-byte v0, p0, Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorBase;->mInterpolatorType:B

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iget-byte v1, p0, Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorBase;->mInterpolatorType:B

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget v2, p0, Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorBase;->mInterpolatorCycle:F

    :goto_0
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    goto :goto_1

    :cond_0
    const/16 v2, 0xa

    if-lt v1, v2, :cond_1

    const/16 v2, 0xb

    if-gt v1, v2, :cond_1

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget v2, p0, Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorBase;->mInterpolatorOvershot:F

    goto :goto_0

    :cond_1
    const/16 v2, 0x16

    if-lt v1, v2, :cond_2

    const/16 v2, 0x17

    if-gt v1, v2, :cond_2

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget v2, p0, Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorBase;->mInterpolatorAmplitude:F

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v2, p0, Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorBase;->mInterpolatorPeriod:F

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write([B)V

    :cond_3
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getStartDelay()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getRepeatMode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v1, :cond_5

    if-eq v0, v2, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    goto :goto_3

    :cond_5
    :goto_2
    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    :goto_3
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getRepeatCount()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    return-void
.end method

.method public update(Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorBase$UpdateParameter;)Z
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    iget-boolean v0, p1, Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorBase$UpdateParameter;->isLastFrame:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    monitor-exit p0

    return p1

    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorBase;->updateValues(Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorBase$UpdateParameter;)Z

    move-result p1

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public abstract updateValues(Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorBase$UpdateParameter;)Z
.end method
