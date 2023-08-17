.class public final Lcom/samsung/android/sdk/pen/document/SpenPageDoc;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/document/SpenPageDoc$BackgroundEffect;,
        Lcom/samsung/android/sdk/pen/document/SpenPageDoc$HistoryUpdateInfo;,
        Lcom/samsung/android/sdk/pen/document/SpenPageDoc$HistoryListener;,
        Lcom/samsung/android/sdk/pen/document/SpenPageDoc$ObjectIndexMovedListener;,
        Lcom/samsung/android/sdk/pen/document/SpenPageDoc$ObjectSelectedListener;,
        Lcom/samsung/android/sdk/pen/document/SpenPageDoc$ObjectEventListener;,
        Lcom/samsung/android/sdk/pen/document/SpenPageDoc$ObjectListener;
    }
.end annotation


# static fields
.field public static final BACKGROUND_IMAGE_MODE_CENTER:I = 0x0

.field public static final BACKGROUND_IMAGE_MODE_FIT:I = 0x2

.field public static final BACKGROUND_IMAGE_MODE_STRETCH:I = 0x1

.field public static final BACKGROUND_IMAGE_MODE_TILE:I = 0x3

.field public static final FIND_TYPE_ALL:I = 0x3fff

.field public static final FIND_TYPE_CONTAINER:I = 0x8

.field public static final FIND_TYPE_DUMMY_STROKE:I = 0x100

.field public static final FIND_TYPE_FORMULA:I = 0x400

.field public static final FIND_TYPE_IMAGE:I = 0x4

.field public static final FIND_TYPE_LINE:I = 0x80

.field public static final FIND_TYPE_PAINTING:I = 0x2000

.field public static final FIND_TYPE_SHAPE:I = 0x40

.field public static final FIND_TYPE_STROKE:I = 0x1

.field public static final FIND_TYPE_TABLE:I = 0x800

.field public static final FIND_TYPE_TEXT_BOX:I = 0x2

.field public static final FIND_TYPE_VOICE:I = 0x200

.field public static final FIND_TYPE_WEB:I = 0x1000

.field public static final GEO_TAG_STATE_DEFAULT:I = 0x0

.field public static final GEO_TAG_STATE_REMOVED:I = 0x2

.field public static final GEO_TAG_STATE_SET:I = 0x1

.field public static final HISTORY_MANAGER_MODE_MULTIPLE_VIEW:I = 0x1

.field public static final HISTORY_MANAGER_MODE_SINGLE_VIEW:I = 0x0

.field public static final ORIENTATION_LANDSCAPE:I = 0x1

.field public static final ORIENTATION_PORTRAIT:I


# instance fields
.field private mHandle:I


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->mHandle:I

    return-void
.end method

.method private native PageDoc_AddTag(ILjava/lang/String;)Z
.end method

.method private native PageDoc_AppendLayer(II)Z
.end method

.method private native PageDoc_AppendObject(ILcom/samsung/android/sdk/pen/document/SpenObjectBase;)Z
.end method

.method private native PageDoc_AppendObjectList(ILjava/util/ArrayList;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;)Z"
        }
    .end annotation
.end method

.method private native PageDoc_ClearChangedFlag(I)V
.end method

.method private native PageDoc_ClearRecordedObject(I)Z
.end method

.method private native PageDoc_Copy(ILcom/samsung/android/sdk/pen/document/SpenPageDoc;I)Z
.end method

.method private native PageDoc_Copy(ILcom/samsung/android/sdk/pen/document/SpenPageDoc;IZ)Z
.end method

.method private native PageDoc_CopyNAppendObject(ILjava/util/ArrayList;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;)Z"
        }
    .end annotation
.end method

.method private native PageDoc_DeregisterObjectIndexMovedListener(ILcom/samsung/android/sdk/pen/document/SpenPageDoc$ObjectIndexMovedListener;)Z
.end method

.method private native PageDoc_DeregisterObjectListener(ILcom/samsung/android/sdk/pen/document/SpenPageDoc$ObjectListener;)Z
.end method

.method private native PageDoc_DeregisterObjectSelectedListener(ILcom/samsung/android/sdk/pen/document/SpenPageDoc$ObjectSelectedListener;)Z
.end method

.method private native PageDoc_EnableLayerEventForward(IIZ)Z
.end method

.method private native PageDoc_FindObjectAtPosition(IIFF)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIFF)",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;"
        }
    .end annotation
.end method

.method private native PageDoc_FindObjectAtPositionWithThreshold(IIFFF)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIFFF)",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;"
        }
    .end annotation
.end method

.method private native PageDoc_FindObjectInClosedCurve(II[Landroid/graphics/PointF;I)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II[",
            "Landroid/graphics/PointF;",
            "I)",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;"
        }
    .end annotation
.end method

.method private native PageDoc_FindObjectInRect(IILandroid/graphics/RectF;Z)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/graphics/RectF;",
            "Z)",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;"
        }
    .end annotation
.end method

.method private native PageDoc_FindObjectInRectIntersect(IILandroid/graphics/RectF;)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/graphics/RectF;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;"
        }
    .end annotation
.end method

.method private native PageDoc_FindTopObjectAtPosition(IIFF)Lcom/samsung/android/sdk/pen/document/SpenObjectBase;
.end method

.method private native PageDoc_FindTopObjectAtPositionWithThreshold(IIFFF)Lcom/samsung/android/sdk/pen/document/SpenObjectBase;
.end method

.method private native PageDoc_GetBackgroundColor(I)I
.end method

.method private native PageDoc_GetBackgroundEffect(I)Lcom/samsung/android/sdk/pen/document/SpenPageDoc$BackgroundEffect;
.end method

.method private native PageDoc_GetBackgroundImage(I)Landroid/graphics/Bitmap;
.end method

.method private native PageDoc_GetBackgroundImageMode(I)I
.end method

.method private native PageDoc_GetBackgroundImagePath(I)Ljava/lang/String;
.end method

.method private native PageDoc_GetCurrentLayerId(I)I
.end method

.method private native PageDoc_GetExtraDataByteArray(ILjava/lang/String;)[B
.end method

.method private native PageDoc_GetExtraDataInt(ILjava/lang/String;)I
.end method

.method private native PageDoc_GetExtraDataString(ILjava/lang/String;)Ljava/lang/String;
.end method

.method private native PageDoc_GetExtraDataStringArray(ILjava/lang/String;)[Ljava/lang/String;
.end method

.method private native PageDoc_GetGeoTagLatitude(I)D
.end method

.method private native PageDoc_GetGeoTagLongitude(I)D
.end method

.method private native PageDoc_GetGeoTagState(I)I
.end method

.method private native PageDoc_GetHeight(I)I
.end method

.method private native PageDoc_GetHistoryUpdateRect(I)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end method

.method private native PageDoc_GetId(I)Ljava/lang/String;
.end method

.method private native PageDoc_GetLastEditedTime(I)J
.end method

.method private native PageDoc_GetLayerCount(I)I
.end method

.method private native PageDoc_GetLayerHistoryId(II)I
.end method

.method private native PageDoc_GetLayerIdByIndex(II)I
.end method

.method private native PageDoc_GetLayerIndex(II)I
.end method

.method private native PageDoc_GetLayerName(II)Ljava/lang/String;
.end method

.method private native PageDoc_GetObject(II)Lcom/samsung/android/sdk/pen/document/SpenObjectBase;
.end method

.method private native PageDoc_GetObjectByRuntimeHandle(II)Lcom/samsung/android/sdk/pen/document/SpenObjectBase;
.end method

.method private native PageDoc_GetObjectCount(IZ)I
.end method

.method private native PageDoc_GetObjectCount2(IZI)I
.end method

.method private native PageDoc_GetObjectIndex(ILcom/samsung/android/sdk/pen/document/SpenObjectBase;)I
.end method

.method private native PageDoc_GetObjectList(I)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;"
        }
    .end annotation
.end method

.method private native PageDoc_GetObjectList2(II)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;"
        }
    .end annotation
.end method

.method private native PageDoc_GetObjectList3(IILjava/lang/String;I)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;"
        }
    .end annotation
.end method

.method private native PageDoc_GetObjectList4(IILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;"
        }
    .end annotation
.end method

.method private native PageDoc_GetObjectRectList(II)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end method

.method private native PageDoc_GetOrientation(I)I
.end method

.method private native PageDoc_GetRectOfAllObject(I)Landroid/graphics/RectF;
.end method

.method private native PageDoc_GetSelectedObject(I)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;"
        }
    .end annotation
.end method

.method private native PageDoc_GetSelectedObjectCount(I)I
.end method

.method private native PageDoc_GetTag(I)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method private native PageDoc_GetTemplateObjectList(I)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;"
        }
    .end annotation
.end method

.method private native PageDoc_GetTemplateUri(I)Ljava/lang/String;
.end method

.method private native PageDoc_GetThumbnail(I)Landroid/graphics/Bitmap;
.end method

.method private native PageDoc_GetThumbnailPath(I)Ljava/lang/String;
.end method

.method private native PageDoc_GetVoiceData(I)Ljava/lang/String;
.end method

.method private native PageDoc_GetWidth(I)I
.end method

.method private native PageDoc_GroupObject(ILjava/util/ArrayList;Z)Lcom/samsung/android/sdk/pen/document/SpenObjectContainer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;Z)",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectContainer;"
        }
    .end annotation
.end method

.method private native PageDoc_GroupSelectedObject(IZ)Lcom/samsung/android/sdk/pen/document/SpenObjectContainer;
.end method

.method private native PageDoc_HasBackgroundImage(I)Z
.end method

.method private native PageDoc_HasExtraDataByteArray(ILjava/lang/String;)Z
.end method

.method private native PageDoc_HasExtraDataInt(ILjava/lang/String;)Z
.end method

.method private native PageDoc_HasExtraDataString(ILjava/lang/String;)Z
.end method

.method private native PageDoc_HasExtraDataStringArray(ILjava/lang/String;)Z
.end method

.method private native PageDoc_HasRecordedObject(I)Z
.end method

.method private native PageDoc_InsertLayer(III)Z
.end method

.method private native PageDoc_InsertObject(ILcom/samsung/android/sdk/pen/document/SpenObjectBase;I)Z
.end method

.method private native PageDoc_IsChanged(I)Z
.end method

.method private native PageDoc_IsHistoryManagerUsed(I)Z
.end method

.method private native PageDoc_IsLayerEventForwardable(II)Z
.end method

.method private native PageDoc_IsObjectLoaded(I)Z
.end method

.method private native PageDoc_IsRecording(I)Z
.end method

.method private native PageDoc_IsTextOnly(I)Z
.end method

.method private native PageDoc_IsValid(I)Z
.end method

.method private native PageDoc_LoadHeader(ILjava/lang/String;)Z
.end method

.method private native PageDoc_LoadObject(I)Z
.end method

.method private native PageDoc_MoveAllObject(IFF)Z
.end method

.method private native PageDoc_MoveLayerIndex(III)Z
.end method

.method private native PageDoc_MoveObject(ILjava/util/ArrayList;FF)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;FF)Z"
        }
    .end annotation
.end method

.method private native PageDoc_MoveObjectIndex(ILcom/samsung/android/sdk/pen/document/SpenObjectBase;IZ)Z
.end method

.method private native PageDoc_RegisterObjectIndexMovedListener(ILcom/samsung/android/sdk/pen/document/SpenPageDoc$ObjectIndexMovedListener;)Z
.end method

.method private native PageDoc_RegisterObjectListener(ILcom/samsung/android/sdk/pen/document/SpenPageDoc$ObjectListener;)Z
.end method

.method private native PageDoc_RegisterObjectSelectedListener(ILcom/samsung/android/sdk/pen/document/SpenPageDoc$ObjectSelectedListener;)Z
.end method

.method private native PageDoc_RemoveAllObject(I)Z
.end method

.method private native PageDoc_RemoveExtraDataByteArray(ILjava/lang/String;)Z
.end method

.method private native PageDoc_RemoveExtraDataInt(ILjava/lang/String;)Z
.end method

.method private native PageDoc_RemoveExtraDataString(ILjava/lang/String;)Z
.end method

.method private native PageDoc_RemoveExtraDataStringArray(ILjava/lang/String;)Z
.end method

.method private native PageDoc_RemoveGeoTag(I)Z
.end method

.method private native PageDoc_RemoveLayer(II)Z
.end method

.method private native PageDoc_RemoveObject(ILcom/samsung/android/sdk/pen/document/SpenObjectBase;)Z
.end method

.method private native PageDoc_RemoveSelectedObject(I)Z
.end method

.method private native PageDoc_RemoveTag(ILjava/lang/String;)Z
.end method

.method private native PageDoc_Save(I)Z
.end method

.method private native PageDoc_SelectObject(ILcom/samsung/android/sdk/pen/document/SpenObjectBase;)Z
.end method

.method private native PageDoc_SelectObject(ILjava/util/ArrayList;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;)Z"
        }
    .end annotation
.end method

.method private native PageDoc_SetAutoUnloadable(IZ)Z
.end method

.method private native PageDoc_SetBackgroundColor(II)Z
.end method

.method private native PageDoc_SetBackgroundEffect(ILcom/samsung/android/sdk/pen/document/SpenPageDoc$BackgroundEffect;)Z
.end method

.method private native PageDoc_SetBackgroundEffect2(ILcom/samsung/android/sdk/pen/document/SpenPageDoc$BackgroundEffect;Z)Z
.end method

.method private native PageDoc_SetBackgroundImage(ILjava/lang/String;)Z
.end method

.method private native PageDoc_SetBackgroundImageMode(II)Z
.end method

.method private native PageDoc_SetCurrentLayer(II)Z
.end method

.method private static native PageDoc_SetDefaultSaveOption(Z)V
.end method

.method private native PageDoc_SetExtraDataByteArray(ILjava/lang/String;[BI)Z
.end method

.method private native PageDoc_SetExtraDataInt(ILjava/lang/String;I)Z
.end method

.method private native PageDoc_SetExtraDataString(ILjava/lang/String;Ljava/lang/String;)Z
.end method

.method private native PageDoc_SetExtraDataStringArray(ILjava/lang/String;[Ljava/lang/String;I)Z
.end method

.method private native PageDoc_SetGeoTag(IDD)Z
.end method

.method private native PageDoc_SetLayerName(IILjava/lang/String;)Z
.end method

.method private native PageDoc_SetObjectEventListener(IILcom/samsung/android/sdk/pen/document/SpenPageDoc$ObjectEventListener;)Z
.end method

.method private native PageDoc_SetTemplateUri(ILjava/lang/String;)Z
.end method

.method private native PageDoc_SetThumbnail(ILandroid/graphics/Bitmap;)Z
.end method

.method private native PageDoc_SetThumbnailPath(ILjava/lang/String;)Z
.end method

.method private native PageDoc_SetVoiceData(ILjava/lang/String;)V
.end method

.method private native PageDoc_SetVolatileBackgroundImage(ILandroid/graphics/Bitmap;)Z
.end method

.method private native PageDoc_StartRecord(I)Z
.end method

.method private native PageDoc_StopRecord(I)Z
.end method

.method private native PageDoc_UngroupObject(ILcom/samsung/android/sdk/pen/document/SpenObjectContainer;Z)Z
.end method

.method private native PageDoc_UngroupSelectedObject(IZ)Z
.end method

.method private native PageDoc_UnloadObject(I)Z
.end method

.method private native PageDoc_UseHistoryManager(IZ)V
.end method

.method private native PageDoc_clearHistory(I)V
.end method

.method private native PageDoc_clearHistoryTag(I)Z
.end method

.method private native PageDoc_clearRedoHistory(I)V
.end method

.method private native PageDoc_commitHistory(ILcom/samsung/android/sdk/pen/document/SpenPageDoc$HistoryUpdateInfo;)Z
.end method

.method private native PageDoc_deregisterHistoryListener(ILcom/samsung/android/sdk/pen/document/SpenPageDoc$HistoryListener;)Z
.end method

.method private native PageDoc_finalize(I)V
.end method

.method private native PageDoc_getLastHistoryId(I)I
.end method

.method private native PageDoc_getLastPenInfo(I)Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;
.end method

.method private native PageDoc_getUndoLimit(I)I
.end method

.method private native PageDoc_isLayerVisible(II)Z
.end method

.method private native PageDoc_isRedoable(I)Z
.end method

.method private native PageDoc_isUndoable(I)Z
.end method

.method private native PageDoc_redo(I)[Lcom/samsung/android/sdk/pen/document/SpenPageDoc$HistoryUpdateInfo;
.end method

.method private native PageDoc_redoAll(I)[Lcom/samsung/android/sdk/pen/document/SpenPageDoc$HistoryUpdateInfo;
.end method

.method private native PageDoc_registerHistoryListener(ILcom/samsung/android/sdk/pen/document/SpenPageDoc$HistoryListener;)Z
.end method

.method private native PageDoc_setHistoryId(II)Z
.end method

.method private native PageDoc_setHistoryTag(I)Z
.end method

.method private native PageDoc_setLastPenInfo(ILcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;)Z
.end method

.method private native PageDoc_setLayerVisibility(IIZ)Z
.end method

.method private native PageDoc_setUndoLimit(II)V
.end method

.method private native PageDoc_undo(I)[Lcom/samsung/android/sdk/pen/document/SpenPageDoc$HistoryUpdateInfo;
.end method

.method private native PageDoc_undoAll(I)[Lcom/samsung/android/sdk/pen/document/SpenPageDoc$HistoryUpdateInfo;
.end method

.method private native PageDoc_undoToTag(I)[Lcom/samsung/android/sdk/pen/document/SpenPageDoc$HistoryUpdateInfo;
.end method

.method private static isBuildTypeEngMode()Z
    .locals 2

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static setDefaultSaveOption(Z)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_SetDefaultSaveOption(Z)V

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

    const-string v1, "SpenPageDoc("

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
.method public addTag(Ljava/lang/String;)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_AddTag(ILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public appendLayer(I)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_AppendLayer(II)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public appendObject(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_AppendObject(ILcom/samsung/android/sdk/pen/document/SpenObjectBase;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public appendObjectList(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;)V"
        }
    .end annotation

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_AppendObjectList(ILjava/util/ArrayList;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public clearChangedFlag()V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_ClearChangedFlag(I)V

    return-void
.end method

.method public clearHistory()V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_clearHistory(I)V

    return-void
.end method

.method public clearHistoryTag()V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_clearHistoryTag(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public clearRecordedObject()V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_ClearRecordedObject(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public clearRedoHistory()V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_clearRedoHistory(I)V

    return-void
.end method

.method public commitHistory(Lcom/samsung/android/sdk/pen/document/SpenPageDoc$HistoryUpdateInfo;)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_commitHistory(ILcom/samsung/android/sdk/pen/document/SpenPageDoc$HistoryUpdateInfo;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public copy(Lcom/samsung/android/sdk/pen/document/SpenPageDoc;)V
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->mHandle:I

    iget v1, p1, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->mHandle:I

    invoke-direct {p0, v0, p1, v1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_Copy(ILcom/samsung/android/sdk/pen/document/SpenPageDoc;I)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public copy(Lcom/samsung/android/sdk/pen/document/SpenPageDoc;Z)V
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->mHandle:I

    iget v1, p1, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->mHandle:I

    invoke-direct {p0, v0, p1, v1, p2}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_Copy(ILcom/samsung/android/sdk/pen/document/SpenPageDoc;IZ)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public copyNAppendObject(Ljava/util/ArrayList;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;)Z"
        }
    .end annotation

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_CopyNAppendObject(ILjava/util/ArrayList;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->throwUncheckedException(I)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public createObject(I)Lcom/samsung/android/sdk/pen/document/SpenObjectBase;
    .locals 0

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectFactory;->createObject(I)Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    move-result-object p1

    return-object p1
.end method

.method public createObject(IZ)Lcom/samsung/android/sdk/pen/document/SpenObjectBase;
    .locals 0

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/pen/document/SpenObjectFactory;->createObject(IZ)Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    move-result-object p1

    return-object p1
.end method

.method public deregisterHistoryListener(Lcom/samsung/android/sdk/pen/document/SpenPageDoc$HistoryListener;)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_deregisterHistoryListener(ILcom/samsung/android/sdk/pen/document/SpenPageDoc$HistoryListener;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public deregisterObjectIndexMovedListener(Lcom/samsung/android/sdk/pen/document/SpenPageDoc$ObjectIndexMovedListener;)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_DeregisterObjectIndexMovedListener(ILcom/samsung/android/sdk/pen/document/SpenPageDoc$ObjectIndexMovedListener;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public deregisterObjectListener(Lcom/samsung/android/sdk/pen/document/SpenPageDoc$ObjectListener;)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_DeregisterObjectListener(ILcom/samsung/android/sdk/pen/document/SpenPageDoc$ObjectListener;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public deregisterObjectSelectedListener(Lcom/samsung/android/sdk/pen/document/SpenPageDoc$ObjectSelectedListener;)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_DeregisterObjectSelectedListener(ILcom/samsung/android/sdk/pen/document/SpenPageDoc$ObjectSelectedListener;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->mHandle:I

    check-cast p1, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    iget p1, p1, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->mHandle:I

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
    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_finalize(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->mHandle:I

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public findObjectAtPosition(IFF)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IFF)",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;"
        }
    .end annotation

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->mHandle:I

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_FindObjectAtPosition(IIFF)Ljava/util/ArrayList;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p2

    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->throwUncheckedException(I)V

    :cond_0
    return-object p1
.end method

.method public findObjectAtPosition(IFFF)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IFFF)",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;"
        }
    .end annotation

    iget v1, p0, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->mHandle:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_FindObjectAtPositionWithThreshold(IIFFF)Ljava/util/ArrayList;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p2

    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->throwUncheckedException(I)V

    :cond_0
    return-object p1
.end method

.method public findObjectInClosedCurve(I[Landroid/graphics/PointF;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Landroid/graphics/PointF;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;"
        }
    .end annotation

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->mHandle:I

    array-length v1, p2

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_FindObjectInClosedCurve(II[Landroid/graphics/PointF;I)Ljava/util/ArrayList;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p2

    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->throwUncheckedException(I)V

    :cond_0
    return-object p1
.end method

.method public findObjectInRect(ILandroid/graphics/RectF;Z)Ljava/util/ArrayList;
    .locals 1
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

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->mHandle:I

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_FindObjectInRect(IILandroid/graphics/RectF;Z)Ljava/util/ArrayList;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p2

    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->throwUncheckedException(I)V

    :cond_0
    return-object p1
.end method

.method public findObjectInRectIntersect(ILandroid/graphics/RectF;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/graphics/RectF;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;"
        }
    .end annotation

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->mHandle:I

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_FindObjectInRectIntersect(IILandroid/graphics/RectF;)Ljava/util/ArrayList;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p2

    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->throwUncheckedException(I)V

    :cond_0
    return-object p1
.end method

.method public findTopObjectAtPosition(IFF)Lcom/samsung/android/sdk/pen/document/SpenObjectBase;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->mHandle:I

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_FindTopObjectAtPosition(IIFF)Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    move-result-object p1

    return-object p1
.end method

.method public findTopObjectAtPosition(IFFF)Lcom/samsung/android/sdk/pen/document/SpenObjectBase;
    .locals 6

    iget v1, p0, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->mHandle:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_FindTopObjectAtPositionWithThreshold(IIFFF)Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    move-result-object p1

    return-object p1
.end method

.method public getBackgroundColor()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_GetBackgroundColor(I)I

    move-result v0

    return v0
.end method

.method public getBackgroundEffect()Lcom/samsung/android/sdk/pen/document/SpenPageDoc$BackgroundEffect;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_GetBackgroundEffect(I)Lcom/samsung/android/sdk/pen/document/SpenPageDoc$BackgroundEffect;

    move-result-object v0

    return-object v0
.end method

.method public getBackgroundImage()Landroid/graphics/Bitmap;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_GetBackgroundImage(I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getBackgroundImageMode()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_GetBackgroundImageMode(I)I

    move-result v0

    return v0
.end method

.method public getBackgroundImagePath()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_GetBackgroundImagePath(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentLayerId()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_GetCurrentLayerId(I)I

    move-result v0

    return v0
.end method

.method public getDrawnRectOfAllObject()Landroid/graphics/RectF;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_GetRectOfAllObject(I)Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public getExtraDataByteArray(Ljava/lang/String;)[B
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_GetExtraDataByteArray(ILjava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method public getExtraDataInt(Ljava/lang/String;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_GetExtraDataInt(ILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getExtraDataString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_GetExtraDataString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getExtraDataStringArray(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_GetExtraDataStringArray(ILjava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getGeoTagLatitude()D
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_GetGeoTagLatitude(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getGeoTagLongitude()D
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_GetGeoTagLongitude(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getGeoTagState()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_GetGeoTagState(I)I

    move-result v0

    return v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_GetHeight(I)I

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

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_GetHistoryUpdateRect(I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_GetId(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastEditedTime()J
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_GetLastEditedTime(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastPenInfo()Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_getLastPenInfo(I)Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    move-result-object v0

    return-object v0
.end method

.method public getLayerCount()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_GetLayerCount(I)I

    move-result v0

    return v0
.end method

.method public getLayerIdByIndex(I)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_GetLayerIdByIndex(II)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->throwUncheckedException(I)V

    :cond_0
    return p1
.end method

.method public getLayerIndex(I)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_GetLayerIndex(II)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->throwUncheckedException(I)V

    :cond_0
    return p1
.end method

.method public getLayerName(I)Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_GetLayerIndex(II)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->throwUncheckedException(I)V

    :cond_0
    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_GetLayerName(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getObject(I)Lcom/samsung/android/sdk/pen/document/SpenObjectBase;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_GetObject(II)Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->throwUncheckedException(I)V

    :cond_0
    return-object p1
.end method

.method public getObjectByRuntimeHandle(I)Lcom/samsung/android/sdk/pen/document/SpenObjectBase;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_GetObjectByRuntimeHandle(II)Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->throwUncheckedException(I)V

    :cond_0
    return-object p1
.end method

.method public getObjectCount(IZ)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->mHandle:I

    invoke-direct {p0, v0, p2, p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_GetObjectCount2(IZI)I

    move-result p1

    return p1
.end method

.method public getObjectCount(Z)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_GetObjectCount(IZ)I

    move-result p1

    return p1
.end method

.method public getObjectIndex(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_GetObjectIndex(ILcom/samsung/android/sdk/pen/document/SpenObjectBase;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->throwUncheckedException(I)V

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

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_GetObjectList(I)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->throwUncheckedException(I)V

    :cond_0
    return-object v0
.end method

.method public getObjectList(I)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;"
        }
    .end annotation

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_GetObjectList2(II)Ljava/util/ArrayList;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->throwUncheckedException(I)V

    :cond_0
    return-object p1
.end method

.method public getObjectList(ILjava/lang/String;I)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;"
        }
    .end annotation

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->mHandle:I

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_GetObjectList3(IILjava/lang/String;I)Ljava/util/ArrayList;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p2

    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->throwUncheckedException(I)V

    :cond_0
    return-object p1
.end method

.method public getObjectList(ILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;"
        }
    .end annotation

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->mHandle:I

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_GetObjectList4(IILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p2

    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->throwUncheckedException(I)V

    :cond_0
    return-object p1
.end method

.method public getObjectRectList(I)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_GetObjectRectList(II)Ljava/util/ArrayList;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->throwUncheckedException(I)V

    :cond_0
    return-object p1
.end method

.method public getOrientation()I
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_GetOrientation(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->throwUncheckedException(I)V

    :cond_0
    return v0
.end method

.method public getSelectedObject()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;"
        }
    .end annotation

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_GetSelectedObject(I)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->throwUncheckedException(I)V

    :cond_0
    return-object v0
.end method

.method public getSelectedObjectCount()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_GetSelectedObjectCount(I)I

    move-result v0

    return v0
.end method

.method public getTag()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_GetTag(I)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->throwUncheckedException(I)V

    :cond_0
    return-object v0
.end method

.method public getTemplateObjectList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;"
        }
    .end annotation

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_GetTemplateObjectList(I)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->throwUncheckedException(I)V

    :cond_0
    return-object v0
.end method

.method public getThumbnail()Landroid/graphics/Bitmap;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_GetThumbnail(I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getThumbnailPath()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_GetThumbnailPath(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUndoLimit()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_getUndoLimit(I)I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_GetWidth(I)I

    move-result v0

    return v0
.end method

.method public groupObject(Ljava/util/ArrayList;Z)Lcom/samsung/android/sdk/pen/document/SpenObjectContainer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;Z)",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectContainer;"
        }
    .end annotation

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->mHandle:I

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_GroupObject(ILjava/util/ArrayList;Z)Lcom/samsung/android/sdk/pen/document/SpenObjectContainer;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p2

    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->throwUncheckedException(I)V

    :cond_0
    return-object p1
.end method

.method public groupSelectedObject(Z)Lcom/samsung/android/sdk/pen/document/SpenObjectContainer;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_GroupSelectedObject(IZ)Lcom/samsung/android/sdk/pen/document/SpenObjectContainer;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->throwUncheckedException(I)V

    :cond_0
    return-object p1
.end method

.method public hasBackgroundImage()Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_HasBackgroundImage(I)Z

    move-result v0

    return v0
.end method

.method public hasExtraDataByteArray(Ljava/lang/String;)Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_HasExtraDataByteArray(ILjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public hasExtraDataInt(Ljava/lang/String;)Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_HasExtraDataInt(ILjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public hasExtraDataString(Ljava/lang/String;)Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_HasExtraDataString(ILjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public hasExtraDataStringArray(Ljava/lang/String;)Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_HasExtraDataStringArray(ILjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public hasRecordedObject()Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_HasRecordedObject(I)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->mHandle:I

    return v0
.end method

.method public insertLayer(II)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->mHandle:I

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_InsertLayer(III)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public insertObject(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;I)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->mHandle:I

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_InsertObject(ILcom/samsung/android/sdk/pen/document/SpenObjectBase;I)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public isChanged()Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_IsChanged(I)Z

    move-result v0

    return v0
.end method

.method public isLayerEventForwardEnabled(I)Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_GetLayerIndex(II)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->throwUncheckedException(I)V

    :cond_0
    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_IsLayerEventForwardable(II)Z

    move-result p1

    return p1
.end method

.method public isLayerVisible(I)Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_GetLayerIndex(II)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->throwUncheckedException(I)V

    :cond_0
    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_isLayerVisible(II)Z

    move-result p1

    return p1
.end method

.method public isObjectContained(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_GetObjectIndex(ILcom/samsung/android/sdk/pen/document/SpenObjectBase;)I

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

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_IsObjectLoaded(I)Z

    move-result v0

    return v0
.end method

.method public isRecording()Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_IsRecording(I)Z

    move-result v0

    return v0
.end method

.method public isRedoable()Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_isRedoable(I)Z

    move-result v0

    return v0
.end method

.method public isTextOnly()Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_IsTextOnly(I)Z

    move-result v0

    return v0
.end method

.method public isUndoable()Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_isUndoable(I)Z

    move-result v0

    return v0
.end method

.method public isValid()Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_IsValid(I)Z

    move-result v0

    return v0
.end method

.method public loadObject()V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_LoadObject(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public moveAllObject(FF)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->mHandle:I

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_MoveAllObject(IFF)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public moveObjectIndex(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;IZ)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->mHandle:I

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_MoveObjectIndex(ILcom/samsung/android/sdk/pen/document/SpenObjectBase;IZ)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public redo()[Lcom/samsung/android/sdk/pen/document/SpenPageDoc$HistoryUpdateInfo;
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_redo(I)[Lcom/samsung/android/sdk/pen/document/SpenPageDoc$HistoryUpdateInfo;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->throwUncheckedException(I)V

    :cond_0
    return-object v0
.end method

.method public redoAll()[Lcom/samsung/android/sdk/pen/document/SpenPageDoc$HistoryUpdateInfo;
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_redoAll(I)[Lcom/samsung/android/sdk/pen/document/SpenPageDoc$HistoryUpdateInfo;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->throwUncheckedException(I)V

    :cond_0
    return-object v0
.end method

.method public registerHistoryListener(Lcom/samsung/android/sdk/pen/document/SpenPageDoc$HistoryListener;)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_registerHistoryListener(ILcom/samsung/android/sdk/pen/document/SpenPageDoc$HistoryListener;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public registerObjectIndexMovedListener(Lcom/samsung/android/sdk/pen/document/SpenPageDoc$ObjectIndexMovedListener;)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_RegisterObjectIndexMovedListener(ILcom/samsung/android/sdk/pen/document/SpenPageDoc$ObjectIndexMovedListener;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public registerObjectListener(Lcom/samsung/android/sdk/pen/document/SpenPageDoc$ObjectListener;)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_RegisterObjectListener(ILcom/samsung/android/sdk/pen/document/SpenPageDoc$ObjectListener;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public registerObjectSelectedListener(Lcom/samsung/android/sdk/pen/document/SpenPageDoc$ObjectSelectedListener;)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_RegisterObjectSelectedListener(ILcom/samsung/android/sdk/pen/document/SpenPageDoc$ObjectSelectedListener;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public removeAllObject()V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_RemoveAllObject(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public removeExtraDataByteArray(Ljava/lang/String;)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_RemoveExtraDataByteArray(ILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public removeExtraDataInt(Ljava/lang/String;)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_RemoveExtraDataInt(ILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public removeExtraDataString(Ljava/lang/String;)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_RemoveExtraDataString(ILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public removeExtraDataStringArray(Ljava/lang/String;)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_RemoveExtraDataStringArray(ILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public removeGeoTag()V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_RemoveGeoTag(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public removeLayer(I)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_RemoveLayer(II)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public removeObject(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_RemoveObject(ILcom/samsung/android/sdk/pen/document/SpenObjectBase;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public removeSelectedObject()V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_RemoveSelectedObject(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public removeTag(Ljava/lang/String;)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_RemoveTag(ILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public save()V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_Save(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public selectObject(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_SelectObject(ILcom/samsung/android/sdk/pen/document/SpenObjectBase;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public selectObject(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;)V"
        }
    .end annotation

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_SelectObject(ILjava/util/ArrayList;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setAutoUnloadable(Z)Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_SetAutoUnloadable(IZ)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->throwUncheckedException(I)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public setBackgroundColor(I)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_SetBackgroundColor(II)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setBackgroundEffect(Lcom/samsung/android/sdk/pen/document/SpenPageDoc$BackgroundEffect;)Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_SetBackgroundEffect(ILcom/samsung/android/sdk/pen/document/SpenPageDoc$BackgroundEffect;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->throwUncheckedException(I)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public setBackgroundEffect(Lcom/samsung/android/sdk/pen/document/SpenPageDoc$BackgroundEffect;Z)Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->mHandle:I

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_SetBackgroundEffect2(ILcom/samsung/android/sdk/pen/document/SpenPageDoc$BackgroundEffect;Z)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->throwUncheckedException(I)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public setBackgroundImage(Ljava/lang/String;)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_SetBackgroundImage(ILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setBackgroundImageMode(I)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_SetBackgroundImageMode(II)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setCurrentLayer(I)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_SetCurrentLayer(II)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setExtraDataByteArray(Ljava/lang/String;[B)V
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->mHandle:I

    if-nez p2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    array-length v1, p2

    :goto_0
    invoke-direct {p0, v0, p1, p2, v1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_SetExtraDataByteArray(ILjava/lang/String;[BI)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->throwUncheckedException(I)V

    :cond_1
    return-void
.end method

.method public setExtraDataInt(Ljava/lang/String;I)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->mHandle:I

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_SetExtraDataInt(ILjava/lang/String;I)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setExtraDataString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->mHandle:I

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_SetExtraDataString(ILjava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setExtraDataStringArray(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->mHandle:I

    if-nez p2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    array-length v1, p2

    :goto_0
    invoke-direct {p0, v0, p1, p2, v1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_SetExtraDataStringArray(ILjava/lang/String;[Ljava/lang/String;I)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->throwUncheckedException(I)V

    :cond_1
    return-void
.end method

.method public setGeoTag(DD)V
    .locals 6

    iget v1, p0, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->mHandle:I

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_SetGeoTag(IDD)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setHistoryTag()V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_setHistoryTag(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setLastPenInfo(Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_setLastPenInfo(ILcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setLayerEventForwardEnabled(IZ)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->mHandle:I

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_EnableLayerEventForward(IIZ)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setLayerName(ILjava/lang/String;)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->mHandle:I

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_SetLayerName(IILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setLayerVisibility(IZ)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->mHandle:I

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_setLayerVisibility(IIZ)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setObjectEventListener(ILcom/samsung/android/sdk/pen/document/SpenPageDoc$ObjectEventListener;)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->mHandle:I

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_SetObjectEventListener(IILcom/samsung/android/sdk/pen/document/SpenPageDoc$ObjectEventListener;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setThumbnail(Landroid/graphics/Bitmap;)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_SetThumbnail(ILandroid/graphics/Bitmap;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setThumbnailPath(Ljava/lang/String;)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_SetThumbnailPath(ILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setUndoLimit(I)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_setUndoLimit(II)V

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
    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_SetVolatileBackgroundImage(ILandroid/graphics/Bitmap;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->throwUncheckedException(I)V

    :cond_2
    return-void
.end method

.method public startRecord()V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_StartRecord(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public stopRecord()V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_StopRecord(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public undo()[Lcom/samsung/android/sdk/pen/document/SpenPageDoc$HistoryUpdateInfo;
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_undo(I)[Lcom/samsung/android/sdk/pen/document/SpenPageDoc$HistoryUpdateInfo;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->throwUncheckedException(I)V

    :cond_0
    return-object v0
.end method

.method public undoAll()[Lcom/samsung/android/sdk/pen/document/SpenPageDoc$HistoryUpdateInfo;
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_undoAll(I)[Lcom/samsung/android/sdk/pen/document/SpenPageDoc$HistoryUpdateInfo;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->throwUncheckedException(I)V

    :cond_0
    return-object v0
.end method

.method public undoToTag()[Lcom/samsung/android/sdk/pen/document/SpenPageDoc$HistoryUpdateInfo;
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_undoToTag(I)[Lcom/samsung/android/sdk/pen/document/SpenPageDoc$HistoryUpdateInfo;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->throwUncheckedException(I)V

    :cond_0
    return-object v0
.end method

.method public ungroupObject(Lcom/samsung/android/sdk/pen/document/SpenObjectContainer;Z)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->mHandle:I

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_UngroupObject(ILcom/samsung/android/sdk/pen/document/SpenObjectContainer;Z)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public ungroupSelectedObject(Z)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_UngroupSelectedObject(IZ)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public unloadObject()V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_UnloadObject(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method
