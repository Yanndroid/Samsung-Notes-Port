.class public interface abstract Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final PEN_ATTRIBUTE_ADVANCED_SETTING:I = 0x4

.field public static final PEN_ATTRIBUTE_ALPHA:I = 0x1

.field public static final PEN_ATTRIBUTE_COLOR:I = 0x2

.field public static final PEN_ATTRIBUTE_CURVE:I = 0x3

.field public static final PEN_ATTRIBUTE_PARTICLE_DENSITY:I = 0x5

.field public static final PEN_ATTRIBUTE_PARTICLE_SIZE:I = 0x6

.field public static final PEN_ATTRIBUTE_SECONDARY_COLOR:I = 0x7

.field public static final PEN_ATTRIBUTE_SIZE:I


# virtual methods
.method public abstract draw(Landroid/view/MotionEvent;Landroid/graphics/RectF;)V
.end method

.method public abstract getAdvancedSetting()Ljava/lang/String;
.end method

.method public abstract getBitmap()Landroid/graphics/Bitmap;
.end method

.method public abstract getColor()I
.end method

.method public abstract getMaxSettingValue()F
.end method

.method public abstract getMinSettingValue()F
.end method

.method public abstract getParticleDensity()I
.end method

.method public abstract getPenAttribute(I)Z
.end method

.method public abstract getSize()F
.end method

.method public abstract getStrokeRect([Landroid/graphics/PointF;[F[IFZLjava/lang/String;)Landroid/graphics/RectF;
.end method

.method public abstract isCurveEnabled()Z
.end method

.method public abstract isEraserEnabled()Z
.end method

.method public abstract redrawPen(Landroid/view/MotionEvent;Landroid/graphics/RectF;)V
.end method

.method public abstract setAdvancedSetting(Ljava/lang/String;)V
.end method

.method public abstract setBitmap(Landroid/graphics/Bitmap;)V
.end method

.method public abstract setColor(I)V
.end method

.method public abstract setCurveEnabled(Z)V
.end method

.method public abstract setDepthMapBitmap(Landroid/graphics/Bitmap;)V
.end method

.method public abstract setEraserEnabled(Z)V
.end method

.method public abstract setParticleDensity(I)V
.end method

.method public abstract setReferenceBitmap(Landroid/graphics/Bitmap;)V
.end method

.method public abstract setScreenResolution(II)V
.end method

.method public abstract setSize(F)V
.end method
