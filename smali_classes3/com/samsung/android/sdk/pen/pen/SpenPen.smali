.class public Lcom/samsung/android/sdk/pen/pen/SpenPen;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;


# static fields
.field public static final PEN_ATTRIBUTE_ADVANCED_SETTING:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PEN_ATTRIBUTE_ALPHA:I = 0x1

.field public static final PEN_ATTRIBUTE_COLOR:I = 0x2

.field public static final PEN_ATTRIBUTE_CURVE:I = 0x3

.field public static final PEN_ATTRIBUTE_PARTICLE_DENSITY:I = 0x5

.field public static final PEN_ATTRIBUTE_PARTICLE_SIZE:I = 0x6

.field public static final PEN_ATTRIBUTE_SECONDARY_COLOR:I = 0x7

.field public static final PEN_ATTRIBUTE_SIZE:I = 0x0

.field public static final PEN_TYPE_PEN:I = 0x0

.field public static final PEN_TYPE_PREVIEWPEN:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SpenPen"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mContext:Landroid/content/Context;

.field private mNativeHandle:J

.field public mType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;JI)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/pen/SpenPen;->mContext:Landroid/content/Context;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/sdk/pen/pen/SpenPen;->mNativeHandle:J

    const/4 v2, 0x0

    iput v2, p0, Lcom/samsung/android/sdk/pen/pen/SpenPen;->mType:I

    if-eqz p1, :cond_1

    cmp-long v0, p2, v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/pen/SpenPen;->mContext:Landroid/content/Context;

    iput-wide p2, p0, Lcom/samsung/android/sdk/pen/pen/SpenPen;->mNativeHandle:J

    iput p4, p0, Lcom/samsung/android/sdk/pen/pen/SpenPen;->mType:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "E_INVALID_ARG : parameter \'nativeHandle\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "E_INVALID_ARG : parameter \'context\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static native native_close()Z
.end method

.method private static native native_command(JILjava/util/ArrayList;)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method private static native native_draw(JLcom/samsung/android/sdk/pen/view/SpenMotionEvent;Landroid/graphics/RectF;Landroid/graphics/Bitmap;)Z
.end method

.method private static native native_getAdvancedSetting(J)Ljava/lang/String;
.end method

.method private static native native_getColor(J)I
.end method

.method private static native native_getDashOffset(J)F
.end method

.method private static native native_getDashType(J)I
.end method

.method private static native native_getFixedWidth(J)F
.end method

.method private static native native_getMaxDpSettingValue(J)F
.end method

.method private static native native_getMaxSettingValue(J)F
.end method

.method private static native native_getMinDpSettingValue(J)F
.end method

.method private static native native_getMinSettingValue(J)F
.end method

.method private static native native_getParticleDensity(J)I
.end method

.method private static native native_getParticleSize(J)F
.end method

.method private static native native_getPenAttribute(JI)Z
.end method

.method private static native native_getSecondaryColor(J)I
.end method

.method private static native native_getSize(J)F
.end method

.method private static native native_getStrokeRect(J[Landroid/graphics/PointF;[F[IFZLjava/lang/String;)Landroid/graphics/RectF;
.end method

.method private static native native_isCurveEnabled(J)Z
.end method

.method private static native native_isEraserEnabled(J)Z
.end method

.method private static native native_isFixedWidthEnabled(J)Z
.end method

.method private static native native_preview_draw(JLcom/samsung/android/sdk/pen/view/SpenMotionEvent;Landroid/graphics/RectF;Landroid/graphics/Bitmap;)Z
.end method

.method private static native native_preview_redraw(JLcom/samsung/android/sdk/pen/view/SpenMotionEvent;Landroid/graphics/RectF;Landroid/graphics/Bitmap;)Z
.end method

.method private static native native_preview_setBitmap(JLandroid/graphics/Bitmap;)Z
.end method

.method private static native native_preview_setDepthMapBitmap(JLandroid/graphics/Bitmap;)Z
.end method

.method private static native native_preview_setReferenceBitmap(JLandroid/graphics/Bitmap;)Z
.end method

.method private static native native_redraw(JLcom/samsung/android/sdk/pen/view/SpenMotionEvent;Landroid/graphics/RectF;Landroid/graphics/Bitmap;)Z
.end method

.method private static native native_setAdvancedSetting(JLjava/lang/String;)Z
.end method

.method private static native native_setBitmap(JLandroid/graphics/Bitmap;)Z
.end method

.method private static native native_setColor(JI)Z
.end method

.method private static native native_setCurveEnabled(JZ)Z
.end method

.method private static native native_setDashOffset(JF)Z
.end method

.method private static native native_setDashType(JI)Z
.end method

.method private static native native_setDepthMapBitmap(JLandroid/graphics/Bitmap;)Z
.end method

.method private static native native_setEraserEnabled(JZ)Z
.end method

.method private static native native_setFixedWidth(JF)Z
.end method

.method private static native native_setFixedWidthEnabled(JZ)Z
.end method

.method private static native native_setParticleDensity(JI)Z
.end method

.method private static native native_setParticleSize(JF)Z
.end method

.method private static native native_setReferenceBitmap(JLandroid/graphics/Bitmap;)Z
.end method

.method private static native native_setScreenResolution(JII)Z
.end method

.method private static native native_setSecondaryColor(JI)Z
.end method

.method private static native native_setSize(JF)Z
.end method


# virtual methods
.method public close()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/pen/SpenPen;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/samsung/android/sdk/pen/pen/SpenPen;->native_close()Z

    return-void
.end method

.method public draw(Landroid/view/MotionEvent;Landroid/graphics/RectF;)V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/pen/SpenPen;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    const-string v0, "E_INVALID_STATE : event is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/pen/SpenPen;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/pen/SpenPen;->mBitmap:Landroid/graphics/Bitmap;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/pen/SpenPen;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v2}, Landroid/graphics/Bitmap;->setPixel(III)V

    new-instance v0, Lcom/samsung/android/sdk/pen/view/SpenMotionEvent;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/pen/view/SpenMotionEvent;-><init>(Landroid/view/MotionEvent;)V

    iget p1, p0, Lcom/samsung/android/sdk/pen/pen/SpenPen;->mType:I

    if-nez p1, :cond_1

    iget-wide v1, p0, Lcom/samsung/android/sdk/pen/pen/SpenPen;->mNativeHandle:J

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/pen/SpenPen;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {v1, v2, v0, p2, p1}, Lcom/samsung/android/sdk/pen/pen/SpenPen;->native_draw(JLcom/samsung/android/sdk/pen/view/SpenMotionEvent;Landroid/graphics/RectF;Landroid/graphics/Bitmap;)Z

    move-result p1

    if-nez p1, :cond_2

    :goto_0
    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(ILjava/lang/String;)V

    goto :goto_1

    :cond_1
    if-ne p1, v1, :cond_2

    iget-wide v1, p0, Lcom/samsung/android/sdk/pen/pen/SpenPen;->mNativeHandle:J

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/pen/SpenPen;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {v1, v2, v0, p2, p1}, Lcom/samsung/android/sdk/pen/pen/SpenPen;->native_preview_draw(JLcom/samsung/android/sdk/pen/view/SpenMotionEvent;Landroid/graphics/RectF;Landroid/graphics/Bitmap;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "E_INVALID_STATE : pen is not loaded"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAdvancedSetting()Ljava/lang/String;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/pen/SpenPen;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/pen/SpenPen;->native_getAdvancedSetting(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "E_INVALID_STATE : pen is not loaded"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/pen/SpenPen;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/pen/SpenPen;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "E_INVALID_STATE : pen is not loaded"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getColor()I
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/pen/SpenPen;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/pen/SpenPen;->native_getColor(J)I

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "E_INVALID_STATE : pen is not loaded"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDashOffset()F
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/pen/SpenPen;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/pen/SpenPen;->native_getDashOffset(J)F

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "E_INVALID_STATE : pen is not loaded"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDashType()I
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/pen/SpenPen;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/pen/SpenPen;->native_getDashType(J)I

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "E_INVALID_STATE : pen is not loaded"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFixedWidth()F
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/pen/SpenPen;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/pen/SpenPen;->native_getFixedWidth(J)F

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "E_INVALID_STATE : pen is not loaded"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getMaxSettingValue()F
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/pen/SpenPen;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/samsung/android/sdk/pen/pen/SpenPen;->mType:I

    if-nez v2, :cond_0

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/pen/SpenPen;->native_getMaxSettingValue(J)F

    move-result v0

    return v0

    :cond_0
    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/pen/SpenPen;->native_getMaxDpSettingValue(J)F

    move-result v0

    return v0

    :cond_1
    const/high16 v0, -0x40800000    # -1.0f

    return v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "E_INVALID_STATE : pen is not loaded"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getMinSettingValue()F
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/pen/SpenPen;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/samsung/android/sdk/pen/pen/SpenPen;->mType:I

    if-nez v2, :cond_0

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/pen/SpenPen;->native_getMinSettingValue(J)F

    move-result v0

    return v0

    :cond_0
    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/pen/SpenPen;->native_getMinDpSettingValue(J)F

    move-result v0

    return v0

    :cond_1
    const/high16 v0, -0x40800000    # -1.0f

    return v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "E_INVALID_STATE : pen is not loaded"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getParticleDensity()I
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/pen/SpenPen;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/pen/SpenPen;->native_getParticleDensity(J)I

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "E_INVALID_STATE : pen is not loaded"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getParticleSize()F
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/pen/SpenPen;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/pen/SpenPen;->native_getParticleSize(J)F

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "E_INVALID_STATE : pen is not loaded"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPenAttribute(I)Z
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/pen/SpenPen;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/pen/pen/SpenPen;->native_getPenAttribute(JI)Z

    move-result p1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "E_INVALID_STATE : pen is not loaded"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getPenNativeHandle()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/pen/SpenPen;->mNativeHandle:J

    return-wide v0
.end method

.method public getSecondaryColor()I
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/pen/SpenPen;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/pen/SpenPen;->native_getSecondaryColor(J)I

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "E_INVALID_STATE : pen is not loaded"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSize()F
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/pen/SpenPen;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/pen/SpenPen;->native_getSize(J)F

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "E_INVALID_STATE : pen is not loaded"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getStrokeRect(Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;)Landroid/graphics/RectF;
    .locals 8

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/pen/SpenPen;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->getPoints()[Landroid/graphics/PointF;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->getPressures()[F

    move-result-object v3

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->getTimeStamps()[I

    move-result-object v4

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->getPenSize()F

    move-result v5

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->isCurveEnabled()Z

    move-result v6

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->getAdvancedPenSetting()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v0 .. v7}, Lcom/samsung/android/sdk/pen/pen/SpenPen;->native_getStrokeRect(J[Landroid/graphics/PointF;[F[IFZLjava/lang/String;)Landroid/graphics/RectF;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "E_INVALID_STATE : pen is not loaded"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getStrokeRect([Landroid/graphics/PointF;[F[IFZLjava/lang/String;)Landroid/graphics/RectF;
    .locals 8

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/pen/SpenPen;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-static/range {v0 .. v7}, Lcom/samsung/android/sdk/pen/pen/SpenPen;->native_getStrokeRect(J[Landroid/graphics/PointF;[F[IFZLjava/lang/String;)Landroid/graphics/RectF;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "E_INVALID_STATE : pen is not loaded"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isCurveEnabled()Z
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/pen/SpenPen;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/pen/SpenPen;->native_isCurveEnabled(J)Z

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "E_INVALID_STATE : pen is not loaded"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isEraserEnabled()Z
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/pen/SpenPen;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/pen/SpenPen;->native_isEraserEnabled(J)Z

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "E_INVALID_STATE : pen is not loaded"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isFixedWidthEnabled()Z
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/pen/SpenPen;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/pen/SpenPen;->native_isFixedWidthEnabled(J)Z

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "E_INVALID_STATE : pen is not loaded"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public redrawPen(Landroid/view/MotionEvent;Landroid/graphics/RectF;)V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/pen/SpenPen;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    const-string v0, "E_INVALID_STATE : event is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/pen/SpenPen;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string p1, "SpenPen"

    const-string p2, "redrawPen mBitmap.isRecycled("

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/pen/SpenPen;->mBitmap:Landroid/graphics/Bitmap;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/pen/SpenPen;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v2}, Landroid/graphics/Bitmap;->setPixel(III)V

    new-instance v0, Lcom/samsung/android/sdk/pen/view/SpenMotionEvent;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/pen/view/SpenMotionEvent;-><init>(Landroid/view/MotionEvent;)V

    iget p1, p0, Lcom/samsung/android/sdk/pen/pen/SpenPen;->mType:I

    if-nez p1, :cond_1

    iget-wide v1, p0, Lcom/samsung/android/sdk/pen/pen/SpenPen;->mNativeHandle:J

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/pen/SpenPen;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {v1, v2, v0, p2, p1}, Lcom/samsung/android/sdk/pen/pen/SpenPen;->native_redraw(JLcom/samsung/android/sdk/pen/view/SpenMotionEvent;Landroid/graphics/RectF;Landroid/graphics/Bitmap;)Z

    move-result p1

    if-nez p1, :cond_2

    :goto_0
    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(ILjava/lang/String;)V

    goto :goto_1

    :cond_1
    if-ne p1, v1, :cond_2

    iget-wide v1, p0, Lcom/samsung/android/sdk/pen/pen/SpenPen;->mNativeHandle:J

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/pen/SpenPen;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {v1, v2, v0, p2, p1}, Lcom/samsung/android/sdk/pen/pen/SpenPen;->native_preview_redraw(JLcom/samsung/android/sdk/pen/view/SpenMotionEvent;Landroid/graphics/RectF;Landroid/graphics/Bitmap;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "E_INVALID_STATE : pen is not loaded"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setAdvancedSetting(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/pen/SpenPen;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/pen/pen/SpenPen;->native_setAdvancedSetting(JLjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(ILjava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "E_INVALID_STATE : pen is not loaded"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/pen/SpenPen;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_3

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/pen/SpenPen;->mBitmap:Landroid/graphics/Bitmap;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget v2, p0, Lcom/samsung/android/sdk/pen/pen/SpenPen;->mType:I

    if-nez v2, :cond_1

    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/pen/pen/SpenPen;->native_setBitmap(JLandroid/graphics/Bitmap;)Z

    move-result p1

    if-nez p1, :cond_2

    :goto_0
    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(ILjava/lang/String;)V

    goto :goto_1

    :cond_1
    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/pen/pen/SpenPen;->native_preview_setBitmap(JLandroid/graphics/Bitmap;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "E_INVALID_STATE : pen is not loaded"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setColor(I)V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/pen/SpenPen;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/pen/pen/SpenPen;->native_setColor(JI)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(ILjava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "E_INVALID_STATE : pen is not loaded"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setCurveEnabled(Z)V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/pen/SpenPen;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/pen/pen/SpenPen;->native_setCurveEnabled(JZ)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(ILjava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "E_INVALID_STATE : pen is not loaded"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDashOffset(F)V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/pen/SpenPen;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/pen/pen/SpenPen;->native_setDashOffset(JF)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(ILjava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "E_INVALID_STATE : pen is not loaded"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDashType(I)V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/pen/SpenPen;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/pen/pen/SpenPen;->native_setDashType(JI)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(ILjava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "E_INVALID_STATE : pen is not loaded"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDepthMapBitmap(Landroid/graphics/Bitmap;)V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/pen/SpenPen;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/samsung/android/sdk/pen/pen/SpenPen;->mType:I

    if-nez v2, :cond_0

    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/pen/pen/SpenPen;->native_setDepthMapBitmap(JLandroid/graphics/Bitmap;)Z

    move-result p1

    if-nez p1, :cond_1

    :goto_0
    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(ILjava/lang/String;)V

    goto :goto_1

    :cond_0
    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/pen/pen/SpenPen;->native_preview_setDepthMapBitmap(JLandroid/graphics/Bitmap;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "E_INVALID_STATE : pen is not loaded"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setEraserEnabled(Z)V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/pen/SpenPen;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/pen/pen/SpenPen;->native_setEraserEnabled(JZ)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(ILjava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "E_INVALID_STATE : pen is not loaded"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setFixedWidth(F)V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/pen/SpenPen;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/pen/pen/SpenPen;->native_setFixedWidth(JF)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(ILjava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "E_INVALID_STATE : pen is not loaded"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setFixedWidthEnabled(Z)V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/pen/SpenPen;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/pen/pen/SpenPen;->native_setFixedWidthEnabled(JZ)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(ILjava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "E_INVALID_STATE : pen is not loaded"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setParticleDensity(I)V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/pen/SpenPen;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/pen/pen/SpenPen;->native_setParticleDensity(JI)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(ILjava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "E_INVALID_STATE : pen is not loaded"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setParticleSize(F)V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/pen/SpenPen;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/pen/pen/SpenPen;->native_setParticleSize(JF)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(ILjava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "E_INVALID_STATE : pen is not loaded"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setReferenceBitmap(Landroid/graphics/Bitmap;)V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/pen/SpenPen;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/samsung/android/sdk/pen/pen/SpenPen;->mType:I

    if-nez v2, :cond_0

    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/pen/pen/SpenPen;->native_setReferenceBitmap(JLandroid/graphics/Bitmap;)Z

    move-result p1

    if-nez p1, :cond_1

    :goto_0
    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(ILjava/lang/String;)V

    goto :goto_1

    :cond_0
    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/pen/pen/SpenPen;->native_preview_setReferenceBitmap(JLandroid/graphics/Bitmap;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "E_INVALID_STATE : pen is not loaded"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setScreenResolution(II)V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/pen/SpenPen;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    invoke-static {v0, v1, p1, p2}, Lcom/samsung/android/sdk/pen/pen/SpenPen;->native_setScreenResolution(JII)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(ILjava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "E_INVALID_STATE : pen is not loaded"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setSecondaryColor(I)V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/pen/SpenPen;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/pen/pen/SpenPen;->native_setSecondaryColor(JI)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(ILjava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "E_INVALID_STATE : pen is not loaded"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setSize(F)V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/pen/SpenPen;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/16 p1, 0x8

    const-string v0, "pen is not loaded"

    :goto_0
    invoke-static {p1, v0}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(ILjava/lang/String;)V

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_1

    const/4 p1, 0x7

    const-string v0, "pen size is invalid"

    goto :goto_0

    :cond_1
    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/pen/pen/SpenPen;->native_setSize(JF)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method
