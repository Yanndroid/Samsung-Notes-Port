.class public Lcom/samsung/android/spr/drawable/animation/interpolator/SprTimeInterpolator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/TimeInterpolator;


# static fields
.field public static final DAY_MILLISECONDS:I = 0x5265c00

.field public static final DAY_TYPE:I = 0x1

.field public static final WEEK_MILLISECONDS:I = 0x240c8400

.field public static final WEEK_TYPE:I = 0x2


# instance fields
.field private mDuration:I

.field private mPeriodType:I

.field private mQuotient:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/spr/drawable/animation/interpolator/SprTimeInterpolator;->mDuration:I

    iput v0, p0, Lcom/samsung/android/spr/drawable/animation/interpolator/SprTimeInterpolator;->mPeriodType:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/spr/drawable/animation/interpolator/SprTimeInterpolator;->mQuotient:I

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/spr/drawable/animation/interpolator/SprTimeInterpolator;->mDuration:I

    iput p2, p0, Lcom/samsung/android/spr/drawable/animation/interpolator/SprTimeInterpolator;->mPeriodType:I

    iput p3, p0, Lcom/samsung/android/spr/drawable/animation/interpolator/SprTimeInterpolator;->mQuotient:I

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Ljava/util/TimeZone;->getOffset(J)I

    move-result p1

    int-to-long v2, p1

    add-long/2addr v0, v2

    iget p1, p0, Lcom/samsung/android/spr/drawable/animation/interpolator/SprTimeInterpolator;->mPeriodType:I

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    const-wide/32 v3, 0x5265c00

    goto :goto_0

    :cond_0
    const-wide/32 v3, 0xf731400

    sub-long/2addr v0, v3

    const-wide/32 v3, 0x240c8400

    :goto_0
    rem-long/2addr v0, v3

    iget p1, p0, Lcom/samsung/android/spr/drawable/animation/interpolator/SprTimeInterpolator;->mDuration:I

    int-to-long v3, p1

    rem-long/2addr v0, v3

    iget v3, p0, Lcom/samsung/android/spr/drawable/animation/interpolator/SprTimeInterpolator;->mQuotient:I

    if-le v3, v2, :cond_1

    int-to-long v4, v3

    div-long/2addr v0, v4

    int-to-long v2, v3

    mul-long/2addr v0, v2

    :cond_1
    long-to-float v0, v0

    int-to-float p1, p1

    div-float/2addr v0, p1

    return v0
.end method

.method public setDuration(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/spr/drawable/animation/interpolator/SprTimeInterpolator;->mDuration:I

    return-void
.end method

.method public setPeriodType(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/spr/drawable/animation/interpolator/SprTimeInterpolator;->mPeriodType:I

    return-void
.end method

.method public setQuotient(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/spr/drawable/animation/interpolator/SprTimeInterpolator;->mQuotient:I

    return-void
.end method
