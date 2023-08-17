.class public Lcom/samsung/android/support/senl/nt/app/common/util/InterpolatorUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static mSineInOut33:Landroid/view/animation/Interpolator;

.field private static mSineInOut60:Landroid/view/animation/Interpolator;

.field private static mSineInOut70:Landroid/view/animation/Interpolator;

.field private static mSineInOut80:Landroid/view/animation/Interpolator;

.field private static mSineInOut90:Landroid/view/animation/Interpolator;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSineInOut33()Landroid/view/animation/Interpolator;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/common/util/InterpolatorUtil;->mSineInOut33:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/spr/drawable/animation/interpolator/SineInOut33;

    invoke-direct {v0}, Lcom/samsung/android/spr/drawable/animation/interpolator/SineInOut33;-><init>()V

    sput-object v0, Lcom/samsung/android/support/senl/nt/app/common/util/InterpolatorUtil;->mSineInOut33:Landroid/view/animation/Interpolator;

    :cond_0
    sget-object v0, Lcom/samsung/android/support/senl/nt/app/common/util/InterpolatorUtil;->mSineInOut33:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public static getSineInOut60()Landroid/view/animation/Interpolator;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/common/util/InterpolatorUtil;->mSineInOut60:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/spr/drawable/animation/interpolator/SineInOut60;

    invoke-direct {v0}, Lcom/samsung/android/spr/drawable/animation/interpolator/SineInOut60;-><init>()V

    sput-object v0, Lcom/samsung/android/support/senl/nt/app/common/util/InterpolatorUtil;->mSineInOut60:Landroid/view/animation/Interpolator;

    :cond_0
    sget-object v0, Lcom/samsung/android/support/senl/nt/app/common/util/InterpolatorUtil;->mSineInOut60:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public static getSineInOut70()Landroid/view/animation/Interpolator;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/common/util/InterpolatorUtil;->mSineInOut70:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/spr/drawable/animation/interpolator/SineInOut70;

    invoke-direct {v0}, Lcom/samsung/android/spr/drawable/animation/interpolator/SineInOut70;-><init>()V

    sput-object v0, Lcom/samsung/android/support/senl/nt/app/common/util/InterpolatorUtil;->mSineInOut70:Landroid/view/animation/Interpolator;

    :cond_0
    sget-object v0, Lcom/samsung/android/support/senl/nt/app/common/util/InterpolatorUtil;->mSineInOut70:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public static getSineInOut80()Landroid/view/animation/Interpolator;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/common/util/InterpolatorUtil;->mSineInOut80:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/spr/drawable/animation/interpolator/SineInOut80;

    invoke-direct {v0}, Lcom/samsung/android/spr/drawable/animation/interpolator/SineInOut80;-><init>()V

    sput-object v0, Lcom/samsung/android/support/senl/nt/app/common/util/InterpolatorUtil;->mSineInOut80:Landroid/view/animation/Interpolator;

    :cond_0
    sget-object v0, Lcom/samsung/android/support/senl/nt/app/common/util/InterpolatorUtil;->mSineInOut80:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public static getSineInOut90()Landroid/view/animation/Interpolator;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/common/util/InterpolatorUtil;->mSineInOut90:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/spr/drawable/animation/interpolator/SineInOut90;

    invoke-direct {v0}, Lcom/samsung/android/spr/drawable/animation/interpolator/SineInOut90;-><init>()V

    sput-object v0, Lcom/samsung/android/support/senl/nt/app/common/util/InterpolatorUtil;->mSineInOut90:Landroid/view/animation/Interpolator;

    :cond_0
    sget-object v0, Lcom/samsung/android/support/senl/nt/app/common/util/InterpolatorUtil;->mSineInOut90:Landroid/view/animation/Interpolator;

    return-object v0
.end method
