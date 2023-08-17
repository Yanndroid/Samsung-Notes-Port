.class public Lcom/samsung/android/support/senl/nt/app/main/common/view/pinchzoom/ScaleHelper$UpScale;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/main/common/view/pinchzoom/ScaleHelper$Scale;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/main/common/view/pinchzoom/ScaleHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UpScale"
.end annotation


# instance fields
.field private mScale:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/pinchzoom/ScaleHelper$UpScale;->mScale:F

    return-void
.end method


# virtual methods
.method public getScale()F
    .locals 2

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/pinchzoom/ScaleHelper$UpScale;->mScale:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    return v0
.end method

.method public getType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public updateScale(F)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/pinchzoom/ScaleHelper$UpScale;->mScale:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/pinchzoom/ScaleHelper$UpScale;->mScale:F

    const/high16 p1, 0x40000000    # 2.0f

    cmpl-float v0, v0, p1

    if-lez v0, :cond_0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/pinchzoom/ScaleHelper$UpScale;->mScale:F

    :cond_0
    iget p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/pinchzoom/ScaleHelper$UpScale;->mScale:F

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float p1, p1, v0

    if-gez p1, :cond_1

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/pinchzoom/ScaleHelper$UpScale;->mScale:F

    :cond_1
    return-void
.end method
