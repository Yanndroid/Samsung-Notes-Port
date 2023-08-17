.class public Lcom/samsung/android/sdk/pen/document/SpenObjectShapeBase;
.super Lcom/samsung/android/sdk/pen/document/SpenObjectBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/document/SpenObjectShapeBase$ConnectedInfo;
    }
.end annotation


# static fields
.field public static final CONNECTION_MODE_LOOSELY_COUPLED:I = 0x1

.field public static final CONNECTION_MODE_TIGHTLY_COUPLED:I = 0x0

.field public static final OBJECT_SHAPE_BASE_MAX_LINE_WIDTH:F = 3.519f

.field public static final OBJECT_SHAPE_BASE_MIN_LINE_WIDTH:F = 0.494f


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;-><init>(I)V

    return-void
.end method

.method private native ObjectShapeBase_copy(ILcom/samsung/android/sdk/pen/document/SpenObjectBase;I)Z
.end method

.method private native ObjectShapeBase_getConnectedInfo(II)Lcom/samsung/android/sdk/pen/document/SpenObjectShapeBase$ConnectedInfo;
.end method

.method private native ObjectShapeBase_getConnectedInfoCount(I)I
.end method

.method private native ObjectShapeBase_getConnectionMode(I)I
.end method

.method private native ObjectShapeBase_getFillEffect(ILcom/samsung/android/sdk/pen/document/shapeeffect/SpenFillEffectBase;)Z
.end method

.method private native ObjectShapeBase_getFillEffectType(I)I
.end method

.method private native ObjectShapeBase_getFollowers(I)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;"
        }
    .end annotation
.end method

.method private native ObjectShapeBase_getLineColorEffect(ILcom/samsung/android/sdk/pen/document/shapeeffect/SpenLineColorEffect;)Z
.end method

.method private native ObjectShapeBase_getLineStyleEffect(ILcom/samsung/android/sdk/pen/document/shapeeffect/SpenLineStyleEffect;)Z
.end method

.method private native ObjectShapeBase_getMagneticConnectionInfo(II)Lcom/samsung/android/sdk/pen/document/SpenObjectShapeBase$ConnectedInfo;
.end method

.method private native ObjectShapeBase_getMagneticConnectionPoint(II)Landroid/graphics/PointF;
.end method

.method private native ObjectShapeBase_getMagneticConnectionPoint2(IIF)Landroid/graphics/PointF;
.end method

.method private native ObjectShapeBase_getMagneticConnectionPointCount(I)I
.end method

.method private static native ObjectShapeBase_getMaxLineWidth()F
.end method

.method private static native ObjectShapeBase_getMinLineWidth()F
.end method

.method private native ObjectShapeBase_getNearestMagneticConnectionPointIndex(IFF)I
.end method

.method private native ObjectShapeBase_resetFillEffect(I)Z
.end method

.method private native ObjectShapeBase_resetLineColorEffect(I)Z
.end method

.method private native ObjectShapeBase_resetLineStyleEffect(I)Z
.end method

.method private native ObjectShapeBase_setConnectionMode(II)Z
.end method

.method private native ObjectShapeBase_setFillEffect(ILcom/samsung/android/sdk/pen/document/shapeeffect/SpenFillEffectBase;)Z
.end method

.method private native ObjectShapeBase_setLineColorEffect(ILcom/samsung/android/sdk/pen/document/shapeeffect/SpenLineColorEffect;)Z
.end method

.method private native ObjectShapeBase_setLineStyleEffect(ILcom/samsung/android/sdk/pen/document/shapeeffect/SpenLineStyleEffect;)Z
.end method

.method private native ObjectShapeBase_setMagneticConnectionPoint(I[Landroid/graphics/PointF;I)Z
.end method

.method private getConnectedInfo(I)Lcom/samsung/android/sdk/pen/document/SpenObjectShapeBase$ConnectedInfo;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectShapeBase;->ObjectShapeBase_getConnectedInfo(II)Lcom/samsung/android/sdk/pen/document/SpenObjectShapeBase$ConnectedInfo;

    move-result-object p1

    return-object p1
.end method

.method public static getMaxLineWidth()F
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/pen/document/SpenObjectShapeBase;->ObjectShapeBase_getMaxLineWidth()F

    move-result v0

    return v0
.end method

.method public static getMinLineWidth()F
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/pen/document/SpenObjectShapeBase;->ObjectShapeBase_getMinLineWidth()F

    move-result v0

    return v0
.end method

.method private setMagneticConnectionPoint([Landroid/graphics/PointF;I)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/sdk/pen/document/SpenObjectShapeBase;->ObjectShapeBase_setMagneticConnectionPoint(I[Landroid/graphics/PointF;I)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectShapeBase;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method private throwUncheckedException(I)V
    .locals 2

    const/16 v0, 0x13

    if-eq p1, v0, :cond_0

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(I)V

    return-void

    :cond_0
    new-instance p1, Lcom/samsung/android/sdk/pen/document/SpenAlreadyClosedException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SpenObjectShapeBase("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ") is already closed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/samsung/android/sdk/pen/document/SpenAlreadyClosedException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public copy(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getHandle()I

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getHandle()I

    move-result v1

    invoke-direct {p0, v0, p1, v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectShapeBase;->ObjectShapeBase_copy(ILcom/samsung/android/sdk/pen/document/SpenObjectBase;I)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectShapeBase;->throwUncheckedException(I)V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid source"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getConnectedInfoCount()I
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectShapeBase;->ObjectShapeBase_getConnectedInfoCount(I)I

    move-result v0

    return v0
.end method

.method public getConnectionMode()I
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectShapeBase;->ObjectShapeBase_getConnectionMode(I)I

    move-result v0

    return v0
.end method

.method public getFollowers()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectShapeBase;->ObjectShapeBase_getFollowers(I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getLineColorEffect(Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenLineColorEffect;)V
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectShapeBase;->ObjectShapeBase_getLineColorEffect(ILcom/samsung/android/sdk/pen/document/shapeeffect/SpenLineColorEffect;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectShapeBase;->throwUncheckedException(I)V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "effect is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getLineStyleEffect(Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenLineStyleEffect;)V
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectShapeBase;->ObjectShapeBase_getLineStyleEffect(ILcom/samsung/android/sdk/pen/document/shapeeffect/SpenLineStyleEffect;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectShapeBase;->throwUncheckedException(I)V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "effect is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getMagneticConnectionInfo(I)Lcom/samsung/android/sdk/pen/document/SpenObjectShapeBase$ConnectedInfo;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectShapeBase;->ObjectShapeBase_getMagneticConnectionInfo(II)Lcom/samsung/android/sdk/pen/document/SpenObjectShapeBase$ConnectedInfo;

    move-result-object p1

    return-object p1
.end method

.method public getMagneticConnectionPoint(I)Landroid/graphics/PointF;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectShapeBase;->ObjectShapeBase_getMagneticConnectionPoint(II)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method public getMagneticConnectionPoint(IF)Landroid/graphics/PointF;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/sdk/pen/document/SpenObjectShapeBase;->ObjectShapeBase_getMagneticConnectionPoint2(IIF)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method public getMagneticConnectionPointCount()I
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectShapeBase;->ObjectShapeBase_getMagneticConnectionPointCount(I)I

    move-result v0

    return v0
.end method

.method public getNearestMagneticConnectionPointIndex(FF)I
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/sdk/pen/document/SpenObjectShapeBase;->ObjectShapeBase_getNearestMagneticConnectionPointIndex(IFF)I

    move-result p1

    return p1
.end method

.method public getPenName()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public resetLineColorEffect()V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectShapeBase;->ObjectShapeBase_resetLineColorEffect(I)Z

    return-void
.end method

.method public resetLineStyleEffect()Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectShapeBase;->ObjectShapeBase_resetLineStyleEffect(I)Z

    move-result v0

    return v0
.end method

.method public setConnectionMode(I)V
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, ""

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectShapeBase;->ObjectShapeBase_setConnectionMode(II)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectShapeBase;->throwUncheckedException(I)V

    :cond_2
    return-void
.end method

.method public setLineColorEffect(Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenLineColorEffect;)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectShapeBase;->ObjectShapeBase_setLineColorEffect(ILcom/samsung/android/sdk/pen/document/shapeeffect/SpenLineColorEffect;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectShapeBase;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setLineStyleEffect(Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenLineStyleEffect;)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectShapeBase;->ObjectShapeBase_setLineStyleEffect(ILcom/samsung/android/sdk/pen/document/shapeeffect/SpenLineStyleEffect;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectShapeBase;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method
