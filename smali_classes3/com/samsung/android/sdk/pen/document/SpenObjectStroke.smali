.class public final Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;
.super Lcom/samsung/android/sdk/pen/document/SpenObjectBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/document/SpenObjectStroke$PenDashType;
    }
.end annotation


# static fields
.field public static final TOOL_TYPE_ERASER:I = 0x4

.field public static final TOOL_TYPE_FINGER:I = 0x1

.field public static final TOOL_TYPE_MOUSE:I = 0x3

.field public static final TOOL_TYPE_SPEN:I = 0x2

.field public static final TOOL_TYPE_UNKNOWN:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;-><init>(I)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->ObjectStroke_init1(ILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 8

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;-><init>(I)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getHandle()I

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v3, p1

    move v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->ObjectStroke_init4(ILjava/lang/String;[Landroid/graphics/PointF;[F[IZ)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Landroid/graphics/PointF;[F[I)V
    .locals 7

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;-><init>(I)V

    if-eqz p2, :cond_1

    array-length v0, p2

    array-length v1, p3

    if-ne v0, v1, :cond_0

    array-length v0, p2

    array-length v1, p4

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x7

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getHandle()I

    move-result v2

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->ObjectStroke_init3(ILjava/lang/String;[Landroid/graphics/PointF;[F[I)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->throwUncheckedException(I)V

    :cond_2
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Landroid/graphics/PointF;[F[IZ)V
    .locals 8

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;-><init>(I)V

    if-eqz p2, :cond_1

    array-length v0, p2

    array-length v1, p3

    if-ne v0, v1, :cond_0

    array-length v0, p2

    array-length v1, p4

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x7

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getHandle()I

    move-result v2

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->ObjectStroke_init4(ILjava/lang/String;[Landroid/graphics/PointF;[F[IZ)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->throwUncheckedException(I)V

    :cond_2
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Landroid/graphics/PointF;[F[I[F[F)V
    .locals 8

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;-><init>(I)V

    const/4 v0, 0x7

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    if-eqz p4, :cond_1

    if-eqz p5, :cond_1

    if-eqz p6, :cond_1

    array-length v1, p2

    array-length v2, p3

    if-ne v1, v2, :cond_0

    array-length v1, p2

    array-length v2, p4

    if-ne v1, v2, :cond_0

    array-length v1, p2

    array-length v2, p5

    if-ne v1, v2, :cond_0

    array-length v1, p2

    array-length v2, p6

    if-eq v1, v2, :cond_1

    :cond_0
    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->throwUncheckedException(I)V

    :cond_1
    if-nez p5, :cond_2

    if-eqz p6, :cond_2

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->throwUncheckedException(I)V

    :cond_2
    if-eqz p5, :cond_3

    if-nez p6, :cond_3

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->throwUncheckedException(I)V

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getHandle()I

    move-result v1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->ObjectStroke_init5(ILjava/lang/String;[Landroid/graphics/PointF;[F[I[F[F)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->throwUncheckedException(I)V

    :cond_4
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Landroid/graphics/PointF;[F[I[F[FZ)V
    .locals 10

    move-object v9, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;-><init>(I)V

    const/4 v0, 0x7

    if-eqz v3, :cond_1

    if-eqz v4, :cond_1

    if-eqz v5, :cond_1

    if-eqz v6, :cond_1

    if-eqz v7, :cond_1

    array-length v1, v3

    array-length v2, v4

    if-ne v1, v2, :cond_0

    array-length v1, v3

    array-length v2, v5

    if-ne v1, v2, :cond_0

    array-length v1, v3

    array-length v2, v6

    if-ne v1, v2, :cond_0

    array-length v1, v3

    array-length v2, v7

    if-eq v1, v2, :cond_1

    :cond_0
    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->throwUncheckedException(I)V

    :cond_1
    if-nez v6, :cond_2

    if-eqz v7, :cond_2

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->throwUncheckedException(I)V

    :cond_2
    if-eqz v6, :cond_3

    if-nez v7, :cond_3

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->throwUncheckedException(I)V

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getHandle()I

    move-result v1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->ObjectStroke_init6(ILjava/lang/String;[Landroid/graphics/PointF;[F[I[F[FZ)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->throwUncheckedException(I)V

    :cond_4
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 8

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;-><init>(I)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getHandle()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->ObjectStroke_init4(ILjava/lang/String;[Landroid/graphics/PointF;[F[IZ)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method private native ObjectStroke_addPoint4(ILandroid/graphics/PointF;FI)Z
.end method

.method private native ObjectStroke_addPoint5(ILandroid/graphics/PointF;FIFF)Z
.end method

.method private native ObjectStroke_copy(ILcom/samsung/android/sdk/pen/document/SpenObjectBase;I)Z
.end method

.method private native ObjectStroke_enableCurve(IZ)Z
.end method

.method private native ObjectStroke_getAdvancedPenSetting(I)Ljava/lang/String;
.end method

.method private native ObjectStroke_getColor(I)I
.end method

.method private native ObjectStroke_getDashOffset(I)F
.end method

.method private native ObjectStroke_getDashType(I)I
.end method

.method private native ObjectStroke_getFixedWidth(I)F
.end method

.method private native ObjectStroke_getInputType(I)I
.end method

.method private native ObjectStroke_getOrientations(I)[F
.end method

.method private native ObjectStroke_getPenName(I)Ljava/lang/String;
.end method

.method private native ObjectStroke_getPenSize(I)F
.end method

.method private native ObjectStroke_getPoints(I)[Landroid/graphics/PointF;
.end method

.method private native ObjectStroke_getPressures(I)[F
.end method

.method private native ObjectStroke_getTilts(I)[F
.end method

.method private native ObjectStroke_getTimeStamps(I)[I
.end method

.method private native ObjectStroke_getToolType(I)I
.end method

.method private native ObjectStroke_getXPoints(I)[F
.end method

.method private native ObjectStroke_getYPoints(I)[F
.end method

.method private native ObjectStroke_init1(ILjava/lang/String;)Z
.end method

.method private native ObjectStroke_init3(ILjava/lang/String;[Landroid/graphics/PointF;[F[I)Z
.end method

.method private native ObjectStroke_init4(ILjava/lang/String;[Landroid/graphics/PointF;[F[IZ)Z
.end method

.method private native ObjectStroke_init5(ILjava/lang/String;[Landroid/graphics/PointF;[F[I[F[F)Z
.end method

.method private native ObjectStroke_init6(ILjava/lang/String;[Landroid/graphics/PointF;[F[I[F[FZ)Z
.end method

.method private native ObjectStroke_isCurvable(I)Z
.end method

.method private native ObjectStroke_isEraserEnabled(I)Z
.end method

.method private native ObjectStroke_isFixedWidthEnabled(I)Z
.end method

.method private native ObjectStroke_move(IFF)Z
.end method

.method private native ObjectStroke_resize(IFF)Z
.end method

.method private native ObjectStroke_setAdvancedPenSetting(ILjava/lang/String;)Z
.end method

.method private native ObjectStroke_setColor(II)Z
.end method

.method private native ObjectStroke_setDashOffset(IF)Z
.end method

.method private native ObjectStroke_setDashType(II)Z
.end method

.method private native ObjectStroke_setEraserEnabled(IZ)Z
.end method

.method private native ObjectStroke_setFixedWidth(IF)Z
.end method

.method private native ObjectStroke_setFixedWidthEnabled(IZ)Z
.end method

.method private native ObjectStroke_setInputType(II)Z
.end method

.method private native ObjectStroke_setPenName(ILjava/lang/String;)Z
.end method

.method private native ObjectStroke_setPenSize(IF)Z
.end method

.method private native ObjectStroke_setPoints(I[Landroid/graphics/PointF;[F[I)Z
.end method

.method private native ObjectStroke_setPoints2(I[Landroid/graphics/PointF;[F[I[F[F)Z
.end method

.method private native ObjectStroke_setRotation(IF)Z
.end method

.method private native ObjectStroke_setToolType(II)Z
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

    const-string v1, "SpenObjectStroke("

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
.method public addPoint(Landroid/graphics/PointF;FI)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->ObjectStroke_addPoint4(ILandroid/graphics/PointF;FI)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public addPoint(Landroid/graphics/PointF;FIFF)V
    .locals 7

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getHandle()I

    move-result v1

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->ObjectStroke_addPoint5(ILandroid/graphics/PointF;FIFF)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public copy(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getHandle()I

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getHandle()I

    move-result v1

    invoke-direct {p0, v0, p1, v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->ObjectStroke_copy(ILcom/samsung/android/sdk/pen/document/SpenObjectBase;I)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public getAdvancedPenSetting()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->ObjectStroke_getAdvancedPenSetting(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getColor()I
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->ObjectStroke_getColor(I)I

    move-result v0

    return v0
.end method

.method public getDashOffset()F
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->ObjectStroke_getDashOffset(I)F

    move-result v0

    return v0
.end method

.method public getDashType()Lcom/samsung/android/sdk/pen/document/SpenObjectStroke$PenDashType;
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->ObjectStroke_getDashType(I)I

    move-result v0

    invoke-static {}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke$PenDashType;->values()[Lcom/samsung/android/sdk/pen/document/SpenObjectStroke$PenDashType;

    move-result-object v1

    aget-object v0, v1, v0

    return-object v0
.end method

.method public getFixedWidth()F
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->ObjectStroke_getFixedWidth(I)F

    move-result v0

    return v0
.end method

.method public getOrientations()[F
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->ObjectStroke_getOrientations(I)[F

    move-result-object v0

    return-object v0
.end method

.method public getPenName()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->ObjectStroke_getPenName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPenSize()F
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->ObjectStroke_getPenSize(I)F

    move-result v0

    return v0
.end method

.method public getPoints()[Landroid/graphics/PointF;
    .locals 8

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->ObjectStroke_getXPoints(I)[F

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getHandle()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->ObjectStroke_getYPoints(I)[F

    move-result-object v1

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    array-length v2, v0

    if-eqz v2, :cond_2

    array-length v2, v1

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    array-length v2, v0

    new-array v3, v2, [Landroid/graphics/PointF;

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    new-instance v5, Landroid/graphics/PointF;

    aget v6, v0, v4

    aget v7, v1, v4

    invoke-direct {v5, v6, v7}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v3

    :cond_2
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPressures()[F
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->ObjectStroke_getPressures(I)[F

    move-result-object v0

    return-object v0
.end method

.method public getTilts()[F
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->ObjectStroke_getTilts(I)[F

    move-result-object v0

    return-object v0
.end method

.method public getTimeStamps()[I
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->ObjectStroke_getTimeStamps(I)[I

    move-result-object v0

    return-object v0
.end method

.method public getToolType()I
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->ObjectStroke_getToolType(I)I

    move-result v0

    return v0
.end method

.method public getXPoints()[F
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->ObjectStroke_getXPoints(I)[F

    move-result-object v0

    return-object v0
.end method

.method public getYPoints()[F
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->ObjectStroke_getYPoints(I)[F

    move-result-object v0

    return-object v0
.end method

.method public isCurveEnabled()Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->ObjectStroke_isCurvable(I)Z

    move-result v0

    return v0
.end method

.method public isEraserEnabled()Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->ObjectStroke_isEraserEnabled(I)Z

    move-result v0

    return v0
.end method

.method public isFixedWidthEnabled()Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->ObjectStroke_isFixedWidthEnabled(I)Z

    move-result v0

    return v0
.end method

.method public setAdvancedPenSetting(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->ObjectStroke_setAdvancedPenSetting(ILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setColor(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->ObjectStroke_setColor(II)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setCurveEnabled(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->ObjectStroke_enableCurve(IZ)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setDashOffset(F)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->ObjectStroke_setDashOffset(IF)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setDashType(Lcom/samsung/android/sdk/pen/document/SpenObjectStroke$PenDashType;)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getHandle()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->ObjectStroke_setDashType(II)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setEraserEnabled(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->ObjectStroke_setEraserEnabled(IZ)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setFixedWidth(F)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->ObjectStroke_setFixedWidth(IF)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setFixedWidthEnabled(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->ObjectStroke_setFixedWidthEnabled(IZ)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setPenName(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->ObjectStroke_setPenName(ILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setPenSize(F)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->ObjectStroke_setPenSize(IF)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setPoints([Landroid/graphics/PointF;[F[I)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->setPoints([Landroid/graphics/PointF;[F[I[F[F)V

    return-void
.end method

.method public setPoints([Landroid/graphics/PointF;[F[I[F[F)V
    .locals 10

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getHandle()I

    move-result v1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->ObjectStroke_setPoints2(I[Landroid/graphics/PointF;[F[I[F[F)Z

    move-result p1

    goto :goto_0

    :cond_0
    array-length v0, p1

    array-length v1, p2

    const/4 v2, 0x7

    if-ne v0, v1, :cond_1

    array-length v0, p1

    array-length v1, p3

    if-eq v0, v1, :cond_2

    :cond_1
    invoke-static {v2}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(I)V

    :cond_2
    if-nez p4, :cond_3

    if-nez p5, :cond_5

    :cond_3
    if-eqz p4, :cond_4

    if-eqz p5, :cond_5

    :cond_4
    if-eqz p4, :cond_6

    if-eqz p5, :cond_6

    array-length v0, p1

    array-length v1, p4

    if-ne v0, v1, :cond_5

    array-length v0, p1

    array-length v1, p5

    if-eq v0, v1, :cond_6

    :cond_5
    invoke-static {v2}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(I)V

    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getHandle()I

    move-result v4

    move-object v3, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    move-object v9, p5

    invoke-direct/range {v3 .. v9}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->ObjectStroke_setPoints2(I[Landroid/graphics/PointF;[F[I[F[F)Z

    move-result p1

    :goto_0
    if-nez p1, :cond_7

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->throwUncheckedException(I)V

    :cond_7
    return-void
.end method

.method public setRect(Landroid/graphics/RectF;Z)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->setRect(Landroid/graphics/RectF;Z)V

    return-void
.end method

.method public setRotation(F)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->ObjectStroke_setRotation(IF)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setToolType(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->ObjectStroke_setToolType(II)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method
