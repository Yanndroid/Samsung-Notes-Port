.class public Lcom/samsung/android/sdk/pen/document/SpenObjectBase;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final LAYOUT_BLOCK:I = 0x2

.field public static final LAYOUT_FLOW:I = 0x1

.field public static final LAYOUT_NORMAL:I = 0x0

.field public static final LAYOUT_UNDEFINED:I = 0x3

.field public static final OBJECT_MINIMUM_SIZE:F = 10.0f

.field public static final RESIZE_OPTION_DISABLE:I = 0x2

.field public static final RESIZE_OPTION_FREE:I = 0x0

.field public static final RESIZE_OPTION_KEEP_RATIO:I = 0x1

.field public static final SPEN_INFINITY_FLOAT:F = 3.4028235E38f

.field public static final SPEN_INFINITY_INT:I = 0x7fffffff

.field public static final STATE_CANCELED:I = 0x7

.field public static final STATE_DONE:I = 0x4

.field public static final STATE_EXCEPTION:I = 0x6

.field public static final STATE_FAIL:I = 0x5

.field public static final STATE_INIT:I = 0x1

.field public static final STATE_NONE:I = 0x0

.field public static final STATE_READY:I = 0x2

.field public static final STATE_RUNNING:I = 0x3

.field public static final TYPE_CONTAINER:I = 0x4

.field public static final TYPE_DEPRECATED_DUMMY_STROKE:I = 0x9

.field public static final TYPE_FORMULA:I = 0xb

.field public static final TYPE_IMAGE:I = 0x3

.field public static final TYPE_LINE:I = 0x8

.field public static final TYPE_LINK:I = 0x11

.field public static final TYPE_NONE:I = 0x0

.field public static final TYPE_PAINTING:I = 0xe

.field public static final TYPE_SHAPE:I = 0x7

.field public static final TYPE_STROKE:I = 0x1

.field public static final TYPE_STROKE_BRUSH:I = 0x12

.field public static final TYPE_STROKE_DEV_VERSION:I = 0xf

.field public static final TYPE_TABLE:I = 0xc

.field public static final TYPE_TEXT_BOX:I = 0x2

.field public static final TYPE_VIDEO:I = 0x10

.field public static final TYPE_VOICE:I = 0xa

.field public static final TYPE_WEB:I = 0xd


# instance fields
.field private mHandle:I

.field private final mType:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->mType:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->mHandle:I

    return-void
.end method

.method private native ObjectBase_attachFile(ILjava/lang/String;)Z
.end method

.method private native ObjectBase_belongsToSpan(I)Z
.end method

.method private native ObjectBase_clearChangedFlag(I)V
.end method

.method private native ObjectBase_copy(IILcom/samsung/android/sdk/pen/document/SpenObjectBase;)Z
.end method

.method private native ObjectBase_copyExtraData(IILcom/samsung/android/sdk/pen/document/SpenObjectBase;)Z
.end method

.method private native ObjectBase_detachFile(I)Z
.end method

.method private native ObjectBase_enableClip(IZ)Z
.end method

.method private native ObjectBase_enableMovement(IZ)Z
.end method

.method private native ObjectBase_enableRotation(IZ)Z
.end method

.method private native ObjectBase_enableSelection(IZ)Z
.end method

.method private native ObjectBase_finalize(I)V
.end method

.method private native ObjectBase_getAttachedFile(I)Ljava/lang/String;
.end method

.method private native ObjectBase_getDrawnRect(I)Landroid/graphics/RectF;
.end method

.method private native ObjectBase_getExtraDataByteArray(ILjava/lang/String;)[B
.end method

.method private native ObjectBase_getExtraDataInt(ILjava/lang/String;)I
.end method

.method private native ObjectBase_getExtraDataString(ILjava/lang/String;)Ljava/lang/String;
.end method

.method private native ObjectBase_getExtraDataStringArray(ILjava/lang/String;)[Ljava/lang/String;
.end method

.method private native ObjectBase_getId(I)Ljava/lang/String;
.end method

.method private native ObjectBase_getLayerId(I)I
.end method

.method private native ObjectBase_getLayoutType(I)I
.end method

.method private native ObjectBase_getLockState(I)Z
.end method

.method private native ObjectBase_getMaxHeight(I)F
.end method

.method private native ObjectBase_getMaxWidth(I)F
.end method

.method private native ObjectBase_getMinHeight(I)F
.end method

.method private native ObjectBase_getMinWidth(I)F
.end method

.method private native ObjectBase_getModifiedTime(I)J
.end method

.method private native ObjectBase_getPageIndex(I)I
.end method

.method private native ObjectBase_getRect(I)Landroid/graphics/RectF;
.end method

.method private native ObjectBase_getReplayTimeStamp(I)I
.end method

.method private native ObjectBase_getResizeOption(I)I
.end method

.method private native ObjectBase_getRotation(I)F
.end method

.method private native ObjectBase_getRuntimeHandle(I)I
.end method

.method private native ObjectBase_getSorDataByteArray(ILjava/lang/String;)[B
.end method

.method private native ObjectBase_getSorDataInt(ILjava/lang/String;)I
.end method

.method private native ObjectBase_getSorDataString(ILjava/lang/String;)Ljava/lang/String;
.end method

.method private native ObjectBase_getSorDataStringArray(ILjava/lang/String;)[Ljava/lang/String;
.end method

.method private native ObjectBase_getSorInfo(I)Ljava/lang/String;
.end method

.method private native ObjectBase_getSorPackageLink(I)Ljava/lang/String;
.end method

.method private native ObjectBase_getTemplateProperty(I)Z
.end method

.method private native ObjectBase_getType(I)I
.end method

.method private native ObjectBase_getUserId(I)I
.end method

.method private native ObjectBase_hasExtraDataByteArray(ILjava/lang/String;)Z
.end method

.method private native ObjectBase_hasExtraDataInt(ILjava/lang/String;)Z
.end method

.method private native ObjectBase_hasExtraDataString(ILjava/lang/String;)Z
.end method

.method private native ObjectBase_hasExtraDataStringArray(ILjava/lang/String;)Z
.end method

.method private native ObjectBase_hasSorDataByteArray(ILjava/lang/String;)Z
.end method

.method private native ObjectBase_hasSorDataInt(ILjava/lang/String;)Z
.end method

.method private native ObjectBase_hasSorDataString(ILjava/lang/String;)Z
.end method

.method private native ObjectBase_hasSorDataStringArray(ILjava/lang/String;)Z
.end method

.method private native ObjectBase_isAllContentFileAvailable(I)Z
.end method

.method private native ObjectBase_isBelongableToSpan(I)Z
.end method

.method private native ObjectBase_isChanged(I)Z
.end method

.method private native ObjectBase_isClippable(I)Z
.end method

.method private native ObjectBase_isEditingByCoedit(I)Z
.end method

.method private native ObjectBase_isFlipEnabled(I)Z
.end method

.method private native ObjectBase_isMovable(I)Z
.end method

.method private native ObjectBase_isReplayable(I)Z
.end method

.method private native ObjectBase_isRotatable(I)Z
.end method

.method private native ObjectBase_isSelectable(I)Z
.end method

.method private native ObjectBase_isVisible(I)Z
.end method

.method private native ObjectBase_move(IFF)Z
.end method

.method private native ObjectBase_removeExtraDataByteArray(ILjava/lang/String;)Z
.end method

.method private native ObjectBase_removeExtraDataInt(ILjava/lang/String;)Z
.end method

.method private native ObjectBase_removeExtraDataString(ILjava/lang/String;)Z
.end method

.method private native ObjectBase_removeExtraDataStringArray(ILjava/lang/String;)Z
.end method

.method private native ObjectBase_removeSorDataByteArray(ILjava/lang/String;)Z
.end method

.method private native ObjectBase_removeSorDataInt(ILjava/lang/String;)Z
.end method

.method private native ObjectBase_removeSorDataString(ILjava/lang/String;)Z
.end method

.method private native ObjectBase_removeSorDataStringArray(ILjava/lang/String;)Z
.end method

.method private native ObjectBase_resize(IFF)Z
.end method

.method private native ObjectBase_setExtraDataByteArray(ILjava/lang/String;[BI)Z
.end method

.method private native ObjectBase_setExtraDataInt(ILjava/lang/String;I)Z
.end method

.method private native ObjectBase_setExtraDataString(ILjava/lang/String;Ljava/lang/String;)Z
.end method

.method private native ObjectBase_setExtraDataStringArray(ILjava/lang/String;[Ljava/lang/String;I)Z
.end method

.method private native ObjectBase_setFlipEnabled(IZ)Z
.end method

.method private native ObjectBase_setLayoutType(II)Z
.end method

.method private native ObjectBase_setLockState(IZ)Z
.end method

.method private native ObjectBase_setMaxSize(IFF)Z
.end method

.method private native ObjectBase_setMinSize(IFF)Z
.end method

.method private native ObjectBase_setRect(ILandroid/graphics/RectF;Z)Z
.end method

.method private native ObjectBase_setReplayTimeStamp(II)Z
.end method

.method private native ObjectBase_setReplayable(IZ)Z
.end method

.method private native ObjectBase_setResizeOption(II)Z
.end method

.method private native ObjectBase_setRotation(IF)Z
.end method

.method private native ObjectBase_setSorDataByteArray(ILjava/lang/String;[BI)Z
.end method

.method private native ObjectBase_setSorDataInt(ILjava/lang/String;I)Z
.end method

.method private native ObjectBase_setSorDataString(ILjava/lang/String;Ljava/lang/String;)Z
.end method

.method private native ObjectBase_setSorDataStringArray(ILjava/lang/String;[Ljava/lang/String;I)Z
.end method

.method private native ObjectBase_setSorInfo(ILjava/lang/String;)Z
.end method

.method private native ObjectBase_setSorPackageLink(ILjava/lang/String;)Z
.end method

.method private native ObjectBase_setUserId(II)Z
.end method

.method private native ObjectBase_setVisibility(IZ)Z
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

    const-string v1, "SpenObjectBase("

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
.method public attachFile(Ljava/lang/String;)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->ObjectBase_attachFile(ILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public belongsToSpan()Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->ObjectBase_belongsToSpan(I)Z

    move-result v0

    return v0
.end method

.method public clearChangedFlag()V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->ObjectBase_clearChangedFlag(I)V

    return-void
.end method

.method public copy(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)V
    .locals 2

    if-eqz p1, :cond_1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->mHandle:I

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getHandle()I

    move-result v1

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->ObjectBase_copy(IILcom/samsung/android/sdk/pen/document/SpenObjectBase;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->throwUncheckedException(I)V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid source"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public detachFile()V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->ObjectBase_detachFile(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->mHandle:I

    check-cast p1, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    iget p1, p1, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->mHandle:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public finalize()V
    .locals 1

    :try_start_0
    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->ObjectBase_finalize(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->mHandle:I

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getAttachedFile()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->ObjectBase_getAttachedFile(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDrawnRect()Landroid/graphics/RectF;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->ObjectBase_getDrawnRect(I)Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public getExtraDataByteArray(Ljava/lang/String;)[B
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->ObjectBase_getExtraDataByteArray(ILjava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method public getExtraDataInt(Ljava/lang/String;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->ObjectBase_getExtraDataInt(ILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getExtraDataString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->ObjectBase_getExtraDataString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getExtraDataStringArray(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->ObjectBase_getExtraDataStringArray(ILjava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getHandle()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->mHandle:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->ObjectBase_getId(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLayerId()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->ObjectBase_getLayerId(I)I

    move-result v0

    return v0
.end method

.method public getLayoutType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->ObjectBase_getLayoutType(I)I

    move-result v0

    return v0
.end method

.method public getLockState()Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->ObjectBase_getLockState(I)Z

    move-result v0

    return v0
.end method

.method public getMaxHeight()F
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->ObjectBase_getMaxHeight(I)F

    move-result v0

    return v0
.end method

.method public getMaxWidth()F
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->ObjectBase_getMaxWidth(I)F

    move-result v0

    return v0
.end method

.method public getMinHeight()F
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->ObjectBase_getMinHeight(I)F

    move-result v0

    return v0
.end method

.method public getMinWidth()F
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->ObjectBase_getMinWidth(I)F

    move-result v0

    return v0
.end method

.method public getModifiedTime()J
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->ObjectBase_getModifiedTime(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPageIndex()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->ObjectBase_getPageIndex(I)I

    move-result v0

    return v0
.end method

.method public getRect()Landroid/graphics/RectF;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->ObjectBase_getRect(I)Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public getResizeOption()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->ObjectBase_getResizeOption(I)I

    move-result v0

    return v0
.end method

.method public getRotation()F
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->ObjectBase_getRotation(I)F

    move-result v0

    return v0
.end method

.method public getRuntimeHandle()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->ObjectBase_getRuntimeHandle(I)I

    move-result v0

    return v0
.end method

.method public getSorDataInt(Ljava/lang/String;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->ObjectBase_getSorDataInt(ILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getSorDataString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->ObjectBase_getSorDataString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSorInfo()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->ObjectBase_getSorInfo(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSorPackageLink()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->ObjectBase_getSorPackageLink(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTemplateProperty()Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->ObjectBase_getTemplateProperty(I)Z

    move-result v0

    return v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->ObjectBase_getType(I)I

    move-result v0

    return v0
.end method

.method public getUserId()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->ObjectBase_getUserId(I)I

    move-result v0

    return v0
.end method

.method public hasExtraDataByteArray(Ljava/lang/String;)Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->ObjectBase_hasExtraDataByteArray(ILjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public hasExtraDataInt(Ljava/lang/String;)Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->ObjectBase_hasExtraDataInt(ILjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public hasExtraDataString(Ljava/lang/String;)Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->ObjectBase_hasExtraDataString(ILjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public hasExtraDataStringArray(Ljava/lang/String;)Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->ObjectBase_hasExtraDataStringArray(ILjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public hasSorDataInt(Ljava/lang/String;)Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->ObjectBase_hasSorDataInt(ILjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public hasSorDataString(Ljava/lang/String;)Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->ObjectBase_hasSorDataString(ILjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->mHandle:I

    return v0
.end method

.method public isAllContentFileAvailable()Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->ObjectBase_isAllContentFileAvailable(I)Z

    move-result v0

    return v0
.end method

.method public isBelongableToSpan()Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->ObjectBase_isBelongableToSpan(I)Z

    move-result v0

    return v0
.end method

.method public isChanged()Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->ObjectBase_isChanged(I)Z

    move-result v0

    return v0
.end method

.method public isEditingByCoedit()Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->ObjectBase_isEditingByCoedit(I)Z

    move-result v0

    return v0
.end method

.method public isFlipEnabled()Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->ObjectBase_isFlipEnabled(I)Z

    move-result v0

    return v0
.end method

.method public isMovable()Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->ObjectBase_isMovable(I)Z

    move-result v0

    return v0
.end method

.method public isOutOfViewEnabled()Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->ObjectBase_isClippable(I)Z

    move-result v0

    return v0
.end method

.method public isReplayable()Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->ObjectBase_isReplayable(I)Z

    move-result v0

    return v0
.end method

.method public isRotatable()Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->ObjectBase_isRotatable(I)Z

    move-result v0

    return v0
.end method

.method public isSelectable()Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->ObjectBase_isSelectable(I)Z

    move-result v0

    return v0
.end method

.method public isVisible()Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->ObjectBase_isVisible(I)Z

    move-result v0

    return v0
.end method

.method public removeExtraDataByteArray(Ljava/lang/String;)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->ObjectBase_removeExtraDataByteArray(ILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public removeExtraDataInt(Ljava/lang/String;)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->ObjectBase_removeExtraDataInt(ILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public removeExtraDataString(Ljava/lang/String;)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->ObjectBase_removeExtraDataString(ILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public removeExtraDataStringArray(Ljava/lang/String;)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->ObjectBase_removeExtraDataStringArray(ILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public removeSorDataInt(Ljava/lang/String;)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->ObjectBase_removeSorDataInt(ILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public removeSorDataString(Ljava/lang/String;)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->ObjectBase_removeSorDataString(ILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setExtraDataByteArray(Ljava/lang/String;[B)V
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->mHandle:I

    if-nez p2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    array-length v1, p2

    :goto_0
    invoke-direct {p0, v0, p1, p2, v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->ObjectBase_setExtraDataByteArray(ILjava/lang/String;[BI)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->throwUncheckedException(I)V

    :cond_1
    return-void
.end method

.method public setExtraDataInt(Ljava/lang/String;I)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->mHandle:I

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->ObjectBase_setExtraDataInt(ILjava/lang/String;I)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setExtraDataString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->mHandle:I

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->ObjectBase_setExtraDataString(ILjava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setExtraDataStringArray(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->mHandle:I

    if-nez p2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    array-length v1, p2

    :goto_0
    invoke-direct {p0, v0, p1, p2, v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->ObjectBase_setExtraDataStringArray(ILjava/lang/String;[Ljava/lang/String;I)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->throwUncheckedException(I)V

    :cond_1
    return-void
.end method

.method public setFlipEnabled(Z)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->ObjectBase_setFlipEnabled(IZ)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setLayoutType(I)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->ObjectBase_setLayoutType(II)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setLockState(Z)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->ObjectBase_setLockState(IZ)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setMaxSize(FF)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->mHandle:I

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->ObjectBase_setMaxSize(IFF)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setMinSize(FF)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->mHandle:I

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->ObjectBase_setMinSize(IFF)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setMovable(Z)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->ObjectBase_enableMovement(IZ)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setOutOfViewEnabled(Z)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->ObjectBase_enableClip(IZ)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setRect(Landroid/graphics/RectF;Z)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->mHandle:I

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->ObjectBase_setRect(ILandroid/graphics/RectF;Z)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setReplayable(Z)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->ObjectBase_setReplayable(IZ)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setResizeOption(I)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->ObjectBase_setResizeOption(II)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setRotatable(Z)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->ObjectBase_enableRotation(IZ)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setRotation(F)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->ObjectBase_setRotation(IF)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setSelectable(Z)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->ObjectBase_enableSelection(IZ)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setSorDataInt(Ljava/lang/String;I)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->mHandle:I

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->ObjectBase_setSorDataInt(ILjava/lang/String;I)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setSorDataString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->mHandle:I

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->ObjectBase_setSorDataString(ILjava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setSorInfo(Ljava/lang/String;)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->ObjectBase_setSorInfo(ILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setSorPackageLink(Ljava/lang/String;)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->ObjectBase_setSorPackageLink(ILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setUserId(I)Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->ObjectBase_setUserId(II)Z

    move-result p1

    return p1
.end method

.method public setVisibility(Z)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->ObjectBase_setVisibility(IZ)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method
