.class public final Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc$HistoryUpdateInfo;,
        Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc$HistoryListener;,
        Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc$ObjectEventListener;,
        Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc$ObjectListener;,
        Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc$PaintingLayerEventListener;,
        Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc$PaintingPageEventListener;,
        Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc$ShadowEffect;
    }
.end annotation


# static fields
.field public static final BACKGROUND_IMAGE_MODE_CENTER:I = 0x0

.field public static final BACKGROUND_IMAGE_MODE_FIT:I = 0x2

.field public static final BACKGROUND_IMAGE_MODE_STRETCH:I = 0x1

.field public static final BACKGROUND_IMAGE_MODE_TILE:I = 0x3

.field private static final FIND_TYPE_ALL:I = 0xff

.field private static final FIND_TYPE_STROKE:I = 0x1

.field public static final HISTORY_MANAGER_MODE_MULTIPLE_VIEW:I = 0x1

.field public static final HISTORY_MANAGER_MODE_SINGLE_VIEW:I = 0x0

.field public static final MODE_READ_ONLY:I = 0x0

.field public static final MODE_WRITABLE:I = 0x1

.field public static final ORIENTATION_LANDSCAPE:I = 0x1

.field public static final ORIENTATION_PORTRAIT:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandle:J


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->mContext:Landroid/content/Context;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->mHandle:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILjava/lang/String;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->mHandle:J

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->mContext:Landroid/content/Context;

    if-eqz p4, :cond_1

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p4}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->isValid(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p4

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->PaintingDoc_Construct2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I

    move-result p1

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const/4 p4, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->PaintingDoc_Construct1(Ljava/lang/String;IILjava/lang/String;)I

    move-result p1

    :goto_1
    if-nez p1, :cond_4

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    const/16 p2, 0xb

    if-eq p1, p2, :cond_3

    const/16 p2, 0x13

    if-eq p1, p2, :cond_2

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(I)V

    goto :goto_2

    :cond_2
    new-instance p1, Lcom/samsung/android/sdk/pen/document/SpenAlreadyClosedException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "SpenPaintingDoc("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ") is already closed."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/samsung/android/sdk/pen/document/SpenAlreadyClosedException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1

    :cond_4
    :goto_2
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->mHandle:J

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->PaintingDoc_Construct2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I

    move-result p1

    if-nez p1, :cond_4

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    const/16 p2, 0xb

    if-eq p1, p2, :cond_3

    const/16 p2, 0xd

    if-eq p1, p2, :cond_2

    const/16 p2, 0x11

    if-eq p1, p2, :cond_1

    const/16 p2, 0x13

    if-eq p1, p2, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(I)V

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/samsung/android/sdk/pen/document/SpenAlreadyClosedException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "SpenPaintingDoc("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ") is already closed."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/samsung/android/sdk/pen/document/SpenAlreadyClosedException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Lcom/samsung/android/sdk/pen/document/SpenInvalidPasswordException;

    const-string p2, "E_INVALID_PASSWORD : the password is wrong"

    invoke-direct {p1, p2}, Lcom/samsung/android/sdk/pen/document/SpenInvalidPasswordException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Lcom/samsung/android/sdk/pen/document/SpenUnsupportedTypeException;

    const-string p2, "E_UNSUPPORTED_TYPE : It does not correspond to the PatingDoc file format"

    invoke-direct {p1, p2}, Lcom/samsung/android/sdk/pen/document/SpenUnsupportedTypeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1

    :cond_4
    :goto_0
    return-void
.end method

.method private native PaintingDoc_AppendLayer(I)Z
.end method

.method private native PaintingDoc_AppendObject(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)Z
.end method

.method private native PaintingDoc_AppendObjectList(Ljava/util/ArrayList;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;)Z"
        }
    .end annotation
.end method

.method private native PaintingDoc_BeginHistoryGroup()Z
.end method

.method private native PaintingDoc_CancelHistoryGroup()Z
.end method

.method private native PaintingDoc_Construct1(Ljava/lang/String;IILjava/lang/String;)I
.end method

.method private native PaintingDoc_Construct2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I
.end method

.method private native PaintingDoc_DeregisterLayerEventListener(Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc$PaintingLayerEventListener;)Z
.end method

.method private native PaintingDoc_DeregisterObjectListener(Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc$ObjectListener;)Z
.end method

.method private native PaintingDoc_DeregisterPageEventListener(Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc$PaintingPageEventListener;)Z
.end method

.method private native PaintingDoc_EnableLayerEventForward(IZ)Z
.end method

.method private native PaintingDoc_EndHistoryGroup()Z
.end method

.method private native PaintingDoc_EndHistoryGroup2(Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc$HistoryUpdateInfo;)Z
.end method

.method private native PaintingDoc_FindObjectAtPosition(IFF)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IFF)",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;"
        }
    .end annotation
.end method

.method private native PaintingDoc_FindObjectAtPositionWithThreshold(IFFF)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IFFF)",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;"
        }
    .end annotation
.end method

.method private native PaintingDoc_FindObjectInClosedCurve(I[Landroid/graphics/PointF;I)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Landroid/graphics/PointF;",
            "I)",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;"
        }
    .end annotation
.end method

.method private native PaintingDoc_FindObjectInRect(ILandroid/graphics/RectF;Z)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/graphics/RectF;",
            "Z)",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;"
        }
    .end annotation
.end method

.method private native PaintingDoc_FindTopObjectAtPosition(IFF)Lcom/samsung/android/sdk/pen/document/SpenObjectBase;
.end method

.method private native PaintingDoc_FindTopObjectAtPositionWithThreshold(IFFF)Lcom/samsung/android/sdk/pen/document/SpenObjectBase;
.end method

.method private native PaintingDoc_GetAnchorImageThreshold()I
.end method

.method private native PaintingDoc_GetBackgroundColor()I
.end method

.method private native PaintingDoc_GetBackgroundImage()Landroid/graphics/Bitmap;
.end method

.method private native PaintingDoc_GetBackgroundImageMode()I
.end method

.method private native PaintingDoc_GetBackgroundImagePath()Ljava/lang/String;
.end method

.method private native PaintingDoc_GetCurrentLayerId()I
.end method

.method private native PaintingDoc_GetExtraDataByteArray(Ljava/lang/String;)[B
.end method

.method private native PaintingDoc_GetExtraDataInt(Ljava/lang/String;)I
.end method

.method private native PaintingDoc_GetExtraDataString(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private native PaintingDoc_GetExtraDataStringArray(Ljava/lang/String;)[Ljava/lang/String;
.end method

.method private native PaintingDoc_GetForegroundImage()Landroid/graphics/Bitmap;
.end method

.method private native PaintingDoc_GetForegroundImagePath()Ljava/lang/String;
.end method

.method private native PaintingDoc_GetHeight()I
.end method

.method private native PaintingDoc_GetHistoryUpdateRect()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end method

.method private native PaintingDoc_GetLastEditedTime()J
.end method

.method private native PaintingDoc_GetLayerCount()I
.end method

.method private native PaintingDoc_GetLayerIdByIndex(I)I
.end method

.method private native PaintingDoc_GetLayerIndex(I)I
.end method

.method private native PaintingDoc_GetLayerLockState(I)Z
.end method

.method private native PaintingDoc_GetLayerName(I)Ljava/lang/String;
.end method

.method private native PaintingDoc_GetLayerShadowEffect(ILcom/samsung/android/sdk/pen/document/SpenPaintingDoc$ShadowEffect;)Z
.end method

.method private native PaintingDoc_GetLayerThumbnailPath(I)Ljava/lang/String;
.end method

.method private native PaintingDoc_GetLayerTransparency(I)I
.end method

.method private native PaintingDoc_GetObject(I)Lcom/samsung/android/sdk/pen/document/SpenObjectBase;
.end method

.method private native PaintingDoc_GetObjectByRuntimeHandle(I)Lcom/samsung/android/sdk/pen/document/SpenObjectBase;
.end method

.method private native PaintingDoc_GetObjectCount(Z)I
.end method

.method private native PaintingDoc_GetObjectCount2(IZ)I
.end method

.method private native PaintingDoc_GetObjectIndex(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)I
.end method

.method private native PaintingDoc_GetObjectList()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;"
        }
    .end annotation
.end method

.method private native PaintingDoc_GetObjectRectList(I)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end method

.method private native PaintingDoc_GetOrientation()I
.end method

.method private native PaintingDoc_GetRectOfAllObject()Landroid/graphics/RectF;
.end method

.method private static native PaintingDoc_GetSize(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)Z
.end method

.method private native PaintingDoc_GetWidth()I
.end method

.method private native PaintingDoc_HasBackgroundImage()Z
.end method

.method private native PaintingDoc_HasDirtyBitmap()Z
.end method

.method private native PaintingDoc_HasExtraDataByteArray(Ljava/lang/String;)Z
.end method

.method private native PaintingDoc_HasExtraDataInt(Ljava/lang/String;)Z
.end method

.method private native PaintingDoc_HasExtraDataString(Ljava/lang/String;)Z
.end method

.method private native PaintingDoc_HasExtraDataStringArray(Ljava/lang/String;)Z
.end method

.method private native PaintingDoc_InsertLayer(II)Z
.end method

.method private native PaintingDoc_IsAllObjectsLoaded()Z
.end method

.method private native PaintingDoc_IsChanged()Z
.end method

.method private native PaintingDoc_IsGroupingHistory()Z
.end method

.method private native PaintingDoc_IsLayerAlphaLock(I)Z
.end method

.method private native PaintingDoc_IsLayerEventForwardable(I)Z
.end method

.method private native PaintingDoc_IsLayerHasDirtyBitmap(I)Z
.end method

.method private native PaintingDoc_IsLayerShadowEffectVisible(I)Z
.end method

.method private native PaintingDoc_IsObjectLoaded()Z
.end method

.method private native PaintingDoc_IsReplayable()Z
.end method

.method private static native PaintingDoc_IsValid(Ljava/lang/String;)Z
.end method

.method private native PaintingDoc_LoadAllObjects()Z
.end method

.method private native PaintingDoc_LoadObject()Z
.end method

.method private native PaintingDoc_MergeLayers(I[I)Z
.end method

.method private native PaintingDoc_MoveLayerIndex(II)Z
.end method

.method private native PaintingDoc_RegisterLayerEventListener(Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc$PaintingLayerEventListener;)Z
.end method

.method private native PaintingDoc_RegisterObjectListener(Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc$ObjectListener;)Z
.end method

.method private native PaintingDoc_RegisterPageEventListener(Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc$PaintingPageEventListener;)Z
.end method

.method private native PaintingDoc_RemoveAllObject()Z
.end method

.method private native PaintingDoc_RemoveExtraDataByteArray(Ljava/lang/String;)Z
.end method

.method private native PaintingDoc_RemoveExtraDataInt(Ljava/lang/String;)Z
.end method

.method private native PaintingDoc_RemoveExtraDataString(Ljava/lang/String;)Z
.end method

.method private native PaintingDoc_RemoveExtraDataStringArray(Ljava/lang/String;)Z
.end method

.method private native PaintingDoc_RemoveLayer(I)Z
.end method

.method private native PaintingDoc_SetAnchorImageThreshold(I)Z
.end method

.method private native PaintingDoc_SetBackgroundColor(I)Z
.end method

.method private native PaintingDoc_SetBackgroundImage(Ljava/lang/String;)Z
.end method

.method private native PaintingDoc_SetBackgroundImageMode(I)Z
.end method

.method private native PaintingDoc_SetCurrentLayer(I)Z
.end method

.method private native PaintingDoc_SetExtraDataByteArray(Ljava/lang/String;[BI)Z
.end method

.method private native PaintingDoc_SetExtraDataInt(Ljava/lang/String;I)Z
.end method

.method private native PaintingDoc_SetExtraDataString(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private native PaintingDoc_SetExtraDataStringArray(Ljava/lang/String;[Ljava/lang/String;I)Z
.end method

.method private native PaintingDoc_SetForegroundImage(Ljava/lang/String;)Z
.end method

.method private native PaintingDoc_SetForegroundImage2(Landroid/graphics/Bitmap;)Z
.end method

.method private native PaintingDoc_SetLayerAlphaLock(IZ)Z
.end method

.method private native PaintingDoc_SetLayerLockState(IZ)Z
.end method

.method private native PaintingDoc_SetLayerName(ILjava/lang/String;)Z
.end method

.method private native PaintingDoc_SetLayerShadowEffect(ILcom/samsung/android/sdk/pen/document/SpenPaintingDoc$ShadowEffect;)Z
.end method

.method private native PaintingDoc_SetLayerShadowEffectVisibility(IZ)Z
.end method

.method private native PaintingDoc_SetLayerTransparency(II)Z
.end method

.method private native PaintingDoc_SetReplayable(Z)Z
.end method

.method private native PaintingDoc_SetVolatileBackgroundImage(Landroid/graphics/Bitmap;)Z
.end method

.method private native PaintingDoc_UnloadObject()Z
.end method

.method private native PaintingDoc_attachToFile(Ljava/lang/String;)Z
.end method

.method private native PaintingDoc_clearHistory()V
.end method

.method private native PaintingDoc_clearRedoHistory()V
.end method

.method private native PaintingDoc_close(Z)Z
.end method

.method private native PaintingDoc_commitHistory(Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc$HistoryUpdateInfo;)Z
.end method

.method private native PaintingDoc_deregisterHistoryListener(Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc$HistoryListener;)Z
.end method

.method private native PaintingDoc_discard()Z
.end method

.method private native PaintingDoc_finalize()V
.end method

.method private native PaintingDoc_getUndoLimit()I
.end method

.method private native PaintingDoc_isLayerVisible(I)Z
.end method

.method private native PaintingDoc_isRedoable()Z
.end method

.method private native PaintingDoc_isUndoable()Z
.end method

.method private native PaintingDoc_redo()[Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc$HistoryUpdateInfo;
.end method

.method private native PaintingDoc_redoAll()[Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc$HistoryUpdateInfo;
.end method

.method private native PaintingDoc_registerHistoryListener(Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc$HistoryListener;)Z
.end method

.method private native PaintingDoc_save(Ljava/lang/String;)Z
.end method

.method private native PaintingDoc_setLayerVisibility(IZ)Z
.end method

.method private native PaintingDoc_setUndoLimit(I)V
.end method

.method private native PaintingDoc_undo()[Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc$HistoryUpdateInfo;
.end method

.method private native PaintingDoc_undoAll()[Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc$HistoryUpdateInfo;
.end method

.method public static getSize(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->PaintingDoc_GetSize(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p0

    invoke-static {p0}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(I)V

    :cond_0
    return-void
.end method

.method private static isBuildTypeEngMode()Z
    .locals 2

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isValid(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->PaintingDoc_IsValid(Ljava/lang/String;)Z

    move-result p0

    return p0
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

    const-string v1, "SpenPaintingDoc("

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
.method public appendLayer(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->PaintingDoc_AppendLayer(I)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public appendObject(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getType()I

    move-result v0

    const/16 v1, 0x12

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->throwUncheckedException(I)V

    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->PaintingDoc_AppendObject(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->throwUncheckedException(I)V

    :cond_2
    return-void
.end method

.method public appendObjectList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->PaintingDoc_AppendObjectList(Ljava/util/ArrayList;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public attachToFile(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->PaintingDoc_attachToFile(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    const/16 v0, 0xb

    if-eq p1, v0, :cond_1

    const/16 v0, 0x13

    if-eq p1, v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(I)V

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/samsung/android/sdk/pen/document/SpenAlreadyClosedException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SpenPaintingDoc("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ") is already closed."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/samsung/android/sdk/pen/document/SpenAlreadyClosedException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1

    :cond_2
    :goto_0
    return-void
.end method

.method public beginHistoryGroup()Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->PaintingDoc_BeginHistoryGroup()Z

    move-result v0

    return v0
.end method

.method public cancelHistoryGroup()Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->PaintingDoc_CancelHistoryGroup()Z

    move-result v0

    return v0
.end method

.method public clearHistory()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->PaintingDoc_clearHistory()V

    return-void
.end method

.method public clearRedoHistory()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->PaintingDoc_clearRedoHistory()V

    return-void
.end method

.method public close()V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->mHandle:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->PaintingDoc_close(Z)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_2

    const/16 v1, 0x13

    if-eq v0, v1, :cond_1

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(I)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/samsung/android/sdk/pen/document/SpenAlreadyClosedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SpenPaintingDoc("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ") is already closed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/pen/document/SpenAlreadyClosedException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :cond_3
    :goto_0
    iput-wide v2, p0, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->mHandle:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->mContext:Landroid/content/Context;

    return-void
.end method

.method public close(Z)V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->mHandle:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->PaintingDoc_close(Z)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    const/16 v0, 0xb

    if-eq p1, v0, :cond_2

    const/16 v0, 0x13

    if-eq p1, v0, :cond_1

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(I)V

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/samsung/android/sdk/pen/document/SpenAlreadyClosedException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SpenPaintingDoc("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ") is already closed."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/samsung/android/sdk/pen/document/SpenAlreadyClosedException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1

    :cond_3
    :goto_0
    iput-wide v2, p0, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->mHandle:J

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->mContext:Landroid/content/Context;

    return-void
.end method

.method public commitHistory(Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc$HistoryUpdateInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->PaintingDoc_commitHistory(Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc$HistoryUpdateInfo;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public createObject(I)Lcom/samsung/android/sdk/pen/document/SpenObjectBase;
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createObject() - invalid object type["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]. TYPE_STROKE is allowed only"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SpenPaintingDoc"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectFactory;->createObject(I)Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    move-result-object p1

    return-object p1
.end method

.method public deregisterHistoryListener(Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc$HistoryListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->PaintingDoc_deregisterHistoryListener(Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc$HistoryListener;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public deregisterLayerEventListener(Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc$PaintingLayerEventListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->PaintingDoc_DeregisterLayerEventListener(Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc$PaintingLayerEventListener;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public deregisterObjectListener(Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc$ObjectListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->PaintingDoc_DeregisterObjectListener(Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc$ObjectListener;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public deregisterPageEventListener(Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc$PaintingPageEventListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->PaintingDoc_DeregisterPageEventListener(Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc$PaintingPageEventListener;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public discard()V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->mHandle:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->PaintingDoc_discard()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_2

    const/16 v1, 0x13

    if-eq v0, v1, :cond_1

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(I)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/samsung/android/sdk/pen/document/SpenAlreadyClosedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SpenPaintingDoc("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ") is already closed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/pen/document/SpenAlreadyClosedException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :cond_3
    :goto_0
    iput-wide v2, p0, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->mHandle:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->mContext:Landroid/content/Context;

    return-void
.end method

.method public endHistoryGroup()Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->PaintingDoc_EndHistoryGroup()Z

    move-result v0

    return v0
.end method

.method public endHistoryGroup(Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc$HistoryUpdateInfo;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->PaintingDoc_EndHistoryGroup2(Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc$HistoryUpdateInfo;)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->mHandle:J

    check-cast p1, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;

    iget-wide v2, p1, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->mHandle:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public finalize()V
    .locals 2

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->PaintingDoc_finalize()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->mHandle:J

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public findObjectAtPosition(FF)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF)",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;"
        }
    .end annotation

    const/16 v0, 0xff

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->PaintingDoc_FindObjectAtPosition(IFF)Ljava/util/ArrayList;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p2

    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->throwUncheckedException(I)V

    :cond_0
    return-object p1
.end method

.method public findObjectAtPosition(FFF)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFF)",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;"
        }
    .end annotation

    const/16 v0, 0xff

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->PaintingDoc_FindObjectAtPositionWithThreshold(IFFF)Ljava/util/ArrayList;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p2

    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->throwUncheckedException(I)V

    :cond_0
    return-object p1
.end method

.method public findObjectInClosedCurve([Landroid/graphics/PointF;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/graphics/PointF;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;"
        }
    .end annotation

    array-length v0, p1

    const/16 v1, 0xff

    invoke-direct {p0, v1, p1, v0}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->PaintingDoc_FindObjectInClosedCurve(I[Landroid/graphics/PointF;I)Ljava/util/ArrayList;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->throwUncheckedException(I)V

    :cond_0
    return-object p1
.end method

.method public findObjectInRect(Landroid/graphics/RectF;Z)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/RectF;",
            "Z)",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;"
        }
    .end annotation

    const/16 v0, 0xff

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->PaintingDoc_FindObjectInRect(ILandroid/graphics/RectF;Z)Ljava/util/ArrayList;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p2

    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->throwUncheckedException(I)V

    :cond_0
    return-object p1
.end method

.method public findTopObjectAtPosition(FF)Lcom/samsung/android/sdk/pen/document/SpenObjectBase;
    .locals 1

    const/16 v0, 0xff

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->PaintingDoc_FindTopObjectAtPosition(IFF)Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    move-result-object p1

    return-object p1
.end method

.method public findTopObjectAtPosition(FFF)Lcom/samsung/android/sdk/pen/document/SpenObjectBase;
    .locals 1

    const/16 v0, 0xff

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->PaintingDoc_FindTopObjectAtPositionWithThreshold(IFFF)Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    move-result-object p1

    return-object p1
.end method

.method public getAnchorImageThreshold()I
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->PaintingDoc_GetAnchorImageThreshold()I

    move-result v0

    return v0
.end method

.method public getBackgroundColor()I
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->PaintingDoc_GetBackgroundColor()I

    move-result v0

    return v0
.end method

.method public getBackgroundImage()Landroid/graphics/Bitmap;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->PaintingDoc_GetBackgroundImage()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getBackgroundImageMode()I
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->PaintingDoc_GetBackgroundImageMode()I

    move-result v0

    return v0
.end method

.method public getBackgroundImagePath()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->PaintingDoc_GetBackgroundImagePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentLayerId()I
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->PaintingDoc_GetCurrentLayerId()I

    move-result v0

    return v0
.end method

.method public getDrawnRectOfAllObject()Landroid/graphics/RectF;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->PaintingDoc_GetRectOfAllObject()Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public getExtraDataByteArray(Ljava/lang/String;)[B
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->PaintingDoc_GetExtraDataByteArray(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method public getExtraDataInt(Ljava/lang/String;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->PaintingDoc_GetExtraDataInt(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getExtraDataString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->PaintingDoc_GetExtraDataString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getExtraDataStringArray(Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->PaintingDoc_GetExtraDataStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getForegroundImage()Landroid/graphics/Bitmap;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->PaintingDoc_GetForegroundImage()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getForegroundImagePath()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->PaintingDoc_GetForegroundImagePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->PaintingDoc_GetHeight()I

    move-result v0

    return v0
.end method

.method public getHistoryUpdateRect()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->PaintingDoc_GetHistoryUpdateRect()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getLastEditedTime()J
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->PaintingDoc_GetLastEditedTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLayerCount()I
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->PaintingDoc_GetLayerCount()I

    move-result v0

    return v0
.end method

.method public getLayerIdByIndex(I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->PaintingDoc_GetLayerIdByIndex(I)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->throwUncheckedException(I)V

    :cond_0
    return p1
.end method

.method public getLayerIndex(I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->PaintingDoc_GetLayerIndex(I)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->throwUncheckedException(I)V

    :cond_0
    return p1
.end method

.method public getLayerLockState(I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->PaintingDoc_GetLayerLockState(I)Z

    move-result p1

    return p1
.end method

.method public getLayerName(I)Ljava/lang/String;
    .locals 2

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->PaintingDoc_GetLayerIndex(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->throwUncheckedException(I)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->PaintingDoc_GetLayerName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getLayerShadowEffect(I)Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc$ShadowEffect;
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc$ShadowEffect;

    invoke-direct {v0}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc$ShadowEffect;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->PaintingDoc_GetLayerShadowEffect(ILcom/samsung/android/sdk/pen/document/SpenPaintingDoc$ShadowEffect;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->throwUncheckedException(I)V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    return-object v0
.end method

.method public getLayerThumbnailPath(I)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->PaintingDoc_GetLayerThumbnailPath(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getLayerTransparency(I)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->PaintingDoc_GetLayerTransparency(I)I

    move-result p1

    return p1
.end method

.method public getObject(I)Lcom/samsung/android/sdk/pen/document/SpenObjectBase;
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->PaintingDoc_GetObject(I)Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->throwUncheckedException(I)V

    :cond_0
    return-object p1
.end method

.method public getObjectByRuntimeHandle(I)Lcom/samsung/android/sdk/pen/document/SpenObjectBase;
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->PaintingDoc_GetObjectByRuntimeHandle(I)Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->throwUncheckedException(I)V

    :cond_0
    return-object p1
.end method

.method public getObjectCount(IZ)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->PaintingDoc_GetObjectCount2(IZ)I

    move-result p1

    return p1
.end method

.method public getObjectCount(Z)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->PaintingDoc_GetObjectCount(Z)I

    move-result p1

    return p1
.end method

.method public getObjectIndex(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->PaintingDoc_GetObjectIndex(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->throwUncheckedException(I)V

    :cond_0
    return p1
.end method

.method public getObjectList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->PaintingDoc_GetObjectList()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->throwUncheckedException(I)V

    :cond_0
    return-object v0
.end method

.method public getObjectRectList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation

    const/16 v0, 0xff

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->PaintingDoc_GetObjectRectList(I)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->throwUncheckedException(I)V

    :cond_0
    return-object v0
.end method

.method public getOrientation()I
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->PaintingDoc_GetOrientation()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->throwUncheckedException(I)V

    :cond_0
    return v0
.end method

.method public getUndoLimit()I
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->PaintingDoc_getUndoLimit()I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->PaintingDoc_GetWidth()I

    move-result v0

    return v0
.end method

.method public hasBackgroundImage()Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->PaintingDoc_HasBackgroundImage()Z

    move-result v0

    return v0
.end method

.method public hasDirtyBitmap()Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->PaintingDoc_HasDirtyBitmap()Z

    move-result v0

    return v0
.end method

.method public hasExtraDataByteArray(Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->PaintingDoc_HasExtraDataByteArray(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public hasExtraDataInt(Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->PaintingDoc_HasExtraDataInt(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public hasExtraDataString(Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->PaintingDoc_HasExtraDataString(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public hasExtraDataStringArray(Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->PaintingDoc_HasExtraDataStringArray(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->mHandle:J

    long-to-int v0, v0

    return v0
.end method

.method public insertLayer(II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->PaintingDoc_InsertLayer(II)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public isAllObjectsLoaded()Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->PaintingDoc_IsAllObjectsLoaded()Z

    move-result v0

    return v0
.end method

.method public isChanged()Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->PaintingDoc_IsChanged()Z

    move-result v0

    return v0
.end method

.method public isGroupingHistory()Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->PaintingDoc_IsGroupingHistory()Z

    move-result v0

    return v0
.end method

.method public isLayerAlphaLock(I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->PaintingDoc_IsLayerAlphaLock(I)Z

    move-result p1

    return p1
.end method

.method public isLayerEventForwardEnabled(I)Z
    .locals 2

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->PaintingDoc_GetLayerIndex(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->throwUncheckedException(I)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->PaintingDoc_IsLayerEventForwardable(I)Z

    move-result p1

    return p1
.end method

.method public isLayerHasDirtyBitmap(I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->PaintingDoc_IsLayerHasDirtyBitmap(I)Z

    move-result p1

    return p1
.end method

.method public isLayerShadowEffectVisible(I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->PaintingDoc_IsLayerShadowEffectVisible(I)Z

    move-result p1

    return p1
.end method

.method public isLayerVisible(I)Z
    .locals 2

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->PaintingDoc_GetLayerIndex(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->throwUncheckedException(I)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->PaintingDoc_isLayerVisible(I)Z

    move-result p1

    return p1
.end method

.method public isObjectContained(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->PaintingDoc_GetObjectIndex(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public isObjectLoaded()Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->PaintingDoc_IsObjectLoaded()Z

    move-result v0

    return v0
.end method

.method public isRedoable()Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->PaintingDoc_isRedoable()Z

    move-result v0

    return v0
.end method

.method public isReplayable()Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->PaintingDoc_IsReplayable()Z

    move-result v0

    return v0
.end method

.method public isUndoable()Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->PaintingDoc_isUndoable()Z

    move-result v0

    return v0
.end method

.method public loadAllObjects()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->PaintingDoc_LoadAllObjects()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public loadObject()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->PaintingDoc_LoadObject()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public mergeLayers(I[I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->PaintingDoc_MergeLayers(I[I)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public moveLayerIndex(II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->PaintingDoc_MoveLayerIndex(II)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public redo()[Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc$HistoryUpdateInfo;
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->PaintingDoc_redo()[Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc$HistoryUpdateInfo;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->throwUncheckedException(I)V

    :cond_0
    return-object v0
.end method

.method public redoAll()[Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc$HistoryUpdateInfo;
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->PaintingDoc_redoAll()[Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc$HistoryUpdateInfo;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->throwUncheckedException(I)V

    :cond_0
    return-object v0
.end method

.method public registerHistoryListener(Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc$HistoryListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->PaintingDoc_registerHistoryListener(Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc$HistoryListener;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public registerLayerEventListener(Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc$PaintingLayerEventListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->PaintingDoc_RegisterLayerEventListener(Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc$PaintingLayerEventListener;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public registerObjectListener(Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc$ObjectListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->PaintingDoc_RegisterObjectListener(Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc$ObjectListener;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public registerPageEventListener(Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc$PaintingPageEventListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->PaintingDoc_RegisterPageEventListener(Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc$PaintingPageEventListener;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public removeAllObject()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->PaintingDoc_RemoveAllObject()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public removeExtraDataByteArray(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->PaintingDoc_RemoveExtraDataByteArray(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public removeExtraDataInt(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->PaintingDoc_RemoveExtraDataInt(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public removeExtraDataString(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->PaintingDoc_RemoveExtraDataString(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public removeExtraDataStringArray(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->PaintingDoc_RemoveExtraDataStringArray(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public removeLayer(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->PaintingDoc_RemoveLayer(I)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public save(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->PaintingDoc_save(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    const/16 v0, 0xb

    if-eq p1, v0, :cond_1

    const/16 v0, 0x13

    if-eq p1, v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(I)V

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/samsung/android/sdk/pen/document/SpenAlreadyClosedException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SpenPaintingDoc("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ") is already closed."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/samsung/android/sdk/pen/document/SpenAlreadyClosedException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1

    :cond_2
    :goto_0
    return-void
.end method

.method public setAnchorImageThreshold(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->PaintingDoc_SetAnchorImageThreshold(I)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->PaintingDoc_SetBackgroundColor(I)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setBackgroundImage(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->PaintingDoc_SetBackgroundImage(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setBackgroundImageMode(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->PaintingDoc_SetBackgroundImageMode(I)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setCurrentLayer(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->PaintingDoc_SetCurrentLayer(I)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setExtraDataByteArray(Ljava/lang/String;[B)V
    .locals 1

    if-nez p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    array-length v0, p2

    :goto_0
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->PaintingDoc_SetExtraDataByteArray(Ljava/lang/String;[BI)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->throwUncheckedException(I)V

    :cond_1
    return-void
.end method

.method public setExtraDataInt(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->PaintingDoc_SetExtraDataInt(Ljava/lang/String;I)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setExtraDataString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->PaintingDoc_SetExtraDataString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setExtraDataStringArray(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    if-nez p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    array-length v0, p2

    :goto_0
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->PaintingDoc_SetExtraDataStringArray(Ljava/lang/String;[Ljava/lang/String;I)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->throwUncheckedException(I)V

    :cond_1
    return-void
.end method

.method public setForegroundImage(Landroid/graphics/Bitmap;)V
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "bitmap is recyled."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->PaintingDoc_SetForegroundImage2(Landroid/graphics/Bitmap;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->throwUncheckedException(I)V

    :cond_2
    return-void
.end method

.method public setForegroundImage(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->PaintingDoc_SetForegroundImage(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setLayerAlphaLock(IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->PaintingDoc_SetLayerAlphaLock(IZ)Z

    return-void
.end method

.method public setLayerEventForwardEnabled(IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->PaintingDoc_EnableLayerEventForward(IZ)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setLayerLockState(IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->PaintingDoc_SetLayerLockState(IZ)Z

    return-void
.end method

.method public setLayerName(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->PaintingDoc_SetLayerName(ILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setLayerShadowEffect(ILcom/samsung/android/sdk/pen/document/SpenPaintingDoc$ShadowEffect;)V
    .locals 0

    if-eqz p2, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->PaintingDoc_SetLayerShadowEffect(ILcom/samsung/android/sdk/pen/document/SpenPaintingDoc$ShadowEffect;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->throwUncheckedException(I)V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "effect is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setLayerShadowEffectVisibility(IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->PaintingDoc_SetLayerShadowEffectVisibility(IZ)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setLayerTransparency(II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->PaintingDoc_SetLayerTransparency(II)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setLayerVisibility(IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->PaintingDoc_setLayerVisibility(IZ)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setReplayable(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->PaintingDoc_SetReplayable(Z)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setUndoLimit(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->PaintingDoc_setUndoLimit(I)V

    return-void
.end method

.method public setVolatileBackgroundImage(Landroid/graphics/Bitmap;)V
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "bitmap is recyled."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->PaintingDoc_SetVolatileBackgroundImage(Landroid/graphics/Bitmap;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->throwUncheckedException(I)V

    :cond_2
    return-void
.end method

.method public undo()[Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc$HistoryUpdateInfo;
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->PaintingDoc_undo()[Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc$HistoryUpdateInfo;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->throwUncheckedException(I)V

    :cond_0
    return-object v0
.end method

.method public undoAll()[Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc$HistoryUpdateInfo;
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->PaintingDoc_undoAll()[Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc$HistoryUpdateInfo;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->throwUncheckedException(I)V

    :cond_0
    return-object v0
.end method

.method public unloadObject()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->PaintingDoc_UnloadObject()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method
