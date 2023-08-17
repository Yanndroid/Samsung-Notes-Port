.class public Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushZoomModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushZoomModel$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0012\u0008\u0010\u0018\u0000  2\u00020\u0001:\u0001 B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\n\u001a\u00020\u0004H\u0016J\u0008\u0010\u000b\u001a\u00020\u0004H\u0016J\u0006\u0010\u000c\u001a\u00020\rJ\u0008\u0010\u000e\u001a\u00020\u000fH\u0016J\u0010\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u0004H\u0016J\u0016\u0010\u0012\u001a\u00020\r2\u0006\u0010\u0013\u001a\u00020\u00072\u0006\u0010\u0014\u001a\u00020\u0007J\u0006\u0010\u0015\u001a\u00020\rJ.\u0010\u0016\u001a\u00020\r2\u0006\u0010\u0017\u001a\u00020\u00072\u0006\u0010\u0018\u001a\u00020\u00072\u0006\u0010\u0019\u001a\u00020\u00042\u0006\u0010\u001a\u001a\u00020\u00042\u0006\u0010\u001b\u001a\u00020\u0007J \u0010\u001c\u001a\u00020\r2\u0006\u0010\u001d\u001a\u00020\u00042\u0006\u0010\u001e\u001a\u00020\u00042\u0006\u0010\u001b\u001a\u00020\u0007H\u0002J0\u0010\u001f\u001a\u00020\r2\u0006\u0010\u001d\u001a\u00020\u00042\u0006\u0010\u001e\u001a\u00020\u00042\u0006\u0010\u0019\u001a\u00020\u00042\u0006\u0010\u001a\u001a\u00020\u00042\u0006\u0010\u001b\u001a\u00020\u0007H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006!"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushZoomModel;",
        "",
        "()V",
        "mFitZoomRatio",
        "",
        "mMinZoomRatio",
        "mPageDocHeight",
        "",
        "mPageDocWidth",
        "mPrevFitZoomRatio",
        "getFitZoomRatio",
        "getMinZoomRatio",
        "initialize",
        "",
        "isInitZoomRatios",
        "",
        "isNeedSetFitZoom",
        "zoomRatio",
        "setDocSize",
        "pageDocWidth",
        "pageDocHeight",
        "setFitZoomUpdated",
        "setZoomRatios",
        "viewWidth",
        "viewHeight",
        "widthExceptEdge",
        "heightExceptEdge",
        "orientation",
        "updateFitZoomRatio",
        "fitScaleX",
        "fitScaleY",
        "updateMinZoomRatio",
        "Companion",
        "ntAddons_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushZoomModel$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final ZOOM_VALUE_NOT_INITIALIZED:F = -1.0f


# instance fields
.field private mFitZoomRatio:F

.field private mMinZoomRatio:F

.field private mPageDocHeight:I

.field private mPageDocWidth:I

.field private mPrevFitZoomRatio:F


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushZoomModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushZoomModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushZoomModel;->Companion:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushZoomModel$Companion;

    const-string v0, "BrushZoomModel"

    invoke-static {v0}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->createBrushTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushZoomModel;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushZoomModel;->mMinZoomRatio:F

    iput v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushZoomModel;->mFitZoomRatio:F

    iput v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushZoomModel;->mPrevFitZoomRatio:F

    return-void
.end method

.method private final updateFitZoomRatio(FFI)V
    .locals 1

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    cmpl-float p3, p1, p2

    if-lez p3, :cond_2

    const/high16 p3, 0x3f800000    # 1.0f

    sub-float v0, p1, p3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sub-float p3, p2, p3

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    cmpl-float p3, v0, p3

    if-lez p3, :cond_2

    goto :goto_0

    :cond_0
    cmpl-float p3, p1, p2

    if-lez p3, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    move p1, p2

    :cond_2
    :goto_1
    iget p2, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushZoomModel;->mFitZoomRatio:F

    sub-float p2, p1, p2

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    const p3, 0x3a83126f    # 0.001f

    cmpl-float p2, p2, p3

    if-lez p2, :cond_3

    iget p2, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushZoomModel;->mFitZoomRatio:F

    iput p2, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushZoomModel;->mPrevFitZoomRatio:F

    iput p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushZoomModel;->mFitZoomRatio:F

    sget-object p1, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushZoomModel;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "update fit zoom ratio : set "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushZoomModel;->mFitZoomRatio:F

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p3, " from "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushZoomModel;->mPrevFitZoomRatio:F

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private final updateMinZoomRatio(FFFFI)V
    .locals 3

    const/high16 v0, 0x447a0000    # 1000.0f

    const/4 v1, 0x1

    if-ne p5, v1, :cond_3

    iget p5, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushZoomModel;->mPageDocWidth:I

    int-to-float p5, p5

    div-float/2addr p3, p5

    mul-float/2addr p3, v0

    float-to-double v1, p3

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-float p3, v1

    div-float/2addr p3, v0

    iget p5, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushZoomModel;->mPageDocHeight:I

    int-to-float p5, p5

    div-float/2addr p4, p5

    mul-float/2addr p4, v0

    float-to-double p4, p4

    invoke-static {p4, p5}, Ljava/lang/Math;->floor(D)D

    move-result-wide p4

    double-to-float p4, p4

    div-float/2addr p4, v0

    cmpl-float p5, p3, p4

    if-lez p5, :cond_0

    move p3, p4

    :cond_0
    cmpg-float p4, p1, p3

    if-gez p4, :cond_1

    goto :goto_0

    :cond_1
    move p1, p3

    :goto_0
    cmpg-float p3, p1, p2

    if-gez p3, :cond_2

    move p2, p1

    :cond_2
    iput p2, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushZoomModel;->mMinZoomRatio:F

    goto :goto_3

    :cond_3
    iget p5, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushZoomModel;->mPageDocHeight:I

    int-to-float p5, p5

    div-float/2addr p3, p5

    mul-float/2addr p3, v0

    float-to-double v1, p3

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-float p3, v1

    div-float/2addr p3, v0

    iget p5, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushZoomModel;->mPageDocWidth:I

    int-to-float p5, p5

    div-float/2addr p4, p5

    mul-float/2addr p4, v0

    float-to-double p4, p4

    invoke-static {p4, p5}, Ljava/lang/Math;->floor(D)D

    move-result-wide p4

    double-to-float p4, p4

    div-float/2addr p4, v0

    cmpl-float p5, p3, p4

    if-lez p5, :cond_4

    move p3, p4

    :cond_4
    cmpg-float p4, p2, p3

    if-gez p4, :cond_5

    goto :goto_1

    :cond_5
    move p2, p3

    :goto_1
    cmpg-float p3, p1, p2

    if-gez p3, :cond_6

    goto :goto_2

    :cond_6
    move p1, p2

    :goto_2
    iput p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushZoomModel;->mMinZoomRatio:F

    :goto_3
    iget p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushZoomModel;->mMinZoomRatio:F

    iget p2, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushZoomModel;->mFitZoomRatio:F

    const p3, 0x3f666666    # 0.9f

    mul-float p4, p2, p3

    cmpl-float p1, p1, p4

    if-ltz p1, :cond_7

    mul-float/2addr p2, p3

    iput p2, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushZoomModel;->mMinZoomRatio:F

    :cond_7
    sget-object p1, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushZoomModel;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "update min zoom ratio : set "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushZoomModel;->mMinZoomRatio:F

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getFitZoomRatio()F
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushZoomModel;->mFitZoomRatio:F

    return v0
.end method

.method public getMinZoomRatio()F
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushZoomModel;->mMinZoomRatio:F

    return v0
.end method

.method public final initialize()V
    .locals 1

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushZoomModel;->mMinZoomRatio:F

    iput v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushZoomModel;->mFitZoomRatio:F

    iput v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushZoomModel;->mPrevFitZoomRatio:F

    return-void
.end method

.method public isInitZoomRatios()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushZoomModel;->mMinZoomRatio:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushZoomModel;->mFitZoomRatio:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNeedSetFitZoom(F)Z
    .locals 6

    iget v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushZoomModel;->mPrevFitZoomRatio:F

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const v0, 0x3a83126f    # 0.001f

    cmpg-float p1, p1, v0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-gez p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    iget v2, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushZoomModel;->mPrevFitZoomRatio:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    sget-object v3, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushZoomModel;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isNeedSetFitZoom : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_3

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    move v0, v1

    :cond_3
    :goto_2
    return v0
.end method

.method public final setDocSize(II)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushZoomModel;->mPageDocWidth:I

    iput p2, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushZoomModel;->mPageDocHeight:I

    return-void
.end method

.method public final setFitZoomUpdated()V
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushZoomModel;->mFitZoomRatio:F

    iput v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushZoomModel;->mPrevFitZoomRatio:F

    return-void
.end method

.method public final setZoomRatios(IIFFI)V
    .locals 7

    int-to-float p1, p1

    iget v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushZoomModel;->mPageDocWidth:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float/2addr p1, v0

    float-to-double v1, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-float p1, v1

    div-float v2, p1, v0

    int-to-float p1, p2

    iget p2, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushZoomModel;->mPageDocHeight:I

    int-to-float p2, p2

    div-float/2addr p1, p2

    mul-float/2addr p1, v0

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->floor(D)D

    move-result-wide p1

    double-to-float p1, p1

    div-float v3, p1, v0

    sget-object p1, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushZoomModel;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "update zoom ratios : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " x "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    cmpl-float p2, v2, p1

    if-lez p2, :cond_0

    cmpl-float p1, v3, p1

    if-lez p1, :cond_0

    invoke-direct {p0, v2, v3, p5}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushZoomModel;->updateFitZoomRatio(FFI)V

    move-object v1, p0

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushZoomModel;->updateMinZoomRatio(FFFFI)V

    :cond_0
    return-void
.end method
