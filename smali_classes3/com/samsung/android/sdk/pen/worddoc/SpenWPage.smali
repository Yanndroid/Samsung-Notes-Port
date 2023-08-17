.class public final Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/worddoc/SpenWPage$PDFData;,
        Lcom/samsung/android/sdk/pen/worddoc/SpenWPage$StrokeRecognitionData;,
        Lcom/samsung/android/sdk/pen/worddoc/SpenWPage$ActionLinkData;,
        Lcom/samsung/android/sdk/pen/worddoc/SpenWPage$SearchData;
    }
.end annotation


# static fields
.field public static final BACKGROUND_IMAGE_MODE_CENTER:I = 0x0

.field public static final BACKGROUND_IMAGE_MODE_FIT:I = 0x2

.field public static final BACKGROUND_IMAGE_MODE_STRETCH:I = 0x1

.field public static final BACKGROUND_IMAGE_MODE_TILE:I = 0x3

.field public static final TYPE_CUSTOM:I = 0xc

.field public static final TYPE_MANUSCRIPT:I = 0xf

.field public static final TYPE_MAX:I = 0x11

.field public static final TYPE_MEDIUM_DOT:I = 0x8

.field public static final TYPE_MEDIUM_GRID:I = 0x5

.field public static final TYPE_MEDIUM_LINE:I = 0x2

.field public static final TYPE_MONTHLY:I = 0xe

.field public static final TYPE_NARROW_DOT:I = 0x7

.field public static final TYPE_NARROW_GRID:I = 0x4

.field public static final TYPE_NARROW_LINE:I = 0x1

.field public static final TYPE_NONE:I = 0x0

.field public static final TYPE_OXFORD_PAPER:I = 0xb

.field public static final TYPE_PDF:I = 0x10

.field public static final TYPE_TODO:I = 0xa

.field public static final TYPE_WEEKLY:I = 0xd

.field public static final TYPE_WIDE_DOT:I = 0x9

.field public static final TYPE_WIDE_GRID:I = 0x6

.field public static final TYPE_WIDE_LINE:I = 0x3


# instance fields
.field private mHandle:I


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->mHandle:I

    return-void
.end method

.method private native WPage_AppendObject(ILcom/samsung/android/sdk/pen/document/SpenObjectBase;)Z
.end method

.method private native WPage_AppendObjectList(ILjava/util/ArrayList;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;)Z"
        }
    .end annotation
.end method

.method private native WPage_ClearCanvasCacheData(I)V
.end method

.method private native WPage_ClearChangedFlag(I)V
.end method

.method private native WPage_Copy(ILcom/samsung/android/sdk/pen/worddoc/SpenWPage;I)Z
.end method

.method private native WPage_FindObjectAtPosition(IIFF)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIFF)",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;"
        }
    .end annotation
.end method

.method private native WPage_FindObjectAtPositionWithThreshold(IIFFF)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIFFF)",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;"
        }
    .end annotation
.end method

.method private native WPage_FindObjectInClosedCurve(II[Landroid/graphics/PointF;I)Ljava/util/ArrayList;
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

.method private native WPage_FindObjectInRect(IILandroid/graphics/RectF;Z)Ljava/util/ArrayList;
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

.method private native WPage_FindObjectInRectIntersect(IILandroid/graphics/RectF;)Ljava/util/ArrayList;
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

.method private native WPage_FindTopObjectAtPosition(IIFF)Lcom/samsung/android/sdk/pen/document/SpenObjectBase;
.end method

.method private native WPage_FindTopObjectAtPositionWithThreshold(IIFFF)Lcom/samsung/android/sdk/pen/document/SpenObjectBase;
.end method

.method private native WPage_GetBackgroundColor(I)I
.end method

.method private native WPage_GetBackgroundImage(I)Landroid/graphics/Bitmap;
.end method

.method private native WPage_GetBackgroundImageId(I)I
.end method

.method private native WPage_GetBackgroundImageMode(I)I
.end method

.method private native WPage_GetBackgroundImagePath(I)Ljava/lang/String;
.end method

.method private native WPage_GetCanvasCachePath(II)Ljava/lang/String;
.end method

.method private native WPage_GetDrawnRectOfAllObject(I)Landroid/graphics/RectF;
.end method

.method private native WPage_GetHeight(I)I
.end method

.method private native WPage_GetId(I)Ljava/lang/String;
.end method

.method private native WPage_GetModifiedTime(I)J
.end method

.method private native WPage_GetObject(II)Lcom/samsung/android/sdk/pen/document/SpenObjectBase;
.end method

.method private native WPage_GetObjectByRuntimeHandle(II)Lcom/samsung/android/sdk/pen/document/SpenObjectBase;
.end method

.method private native WPage_GetObjectCount(IZ)I
.end method

.method private native WPage_GetObjectCount2(IZI)I
.end method

.method private native WPage_GetObjectIndex(ILcom/samsung/android/sdk/pen/document/SpenObjectBase;)I
.end method

.method private native WPage_GetObjectList(I)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;"
        }
    .end annotation
.end method

.method private native WPage_GetObjectList2(II)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;"
        }
    .end annotation
.end method

.method private native WPage_GetOffset(I)Landroid/graphics/Point;
.end method

.method private native WPage_GetPDFData(I)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/worddoc/SpenWPage$PDFData;",
            ">;"
        }
    .end annotation
.end method

.method private native WPage_GetRecognizedDataModifiedTime(I)J
.end method

.method private native WPage_GetStrokeRecognitionData(I)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/worddoc/SpenWPage$StrokeRecognitionData;",
            ">;"
        }
    .end annotation
.end method

.method private native WPage_GetTemplateType(I)I
.end method

.method private native WPage_GetTemplateURI(I)Ljava/lang/String;
.end method

.method private native WPage_GetWidth(I)I
.end method

.method private native WPage_HasBackgroundImage(I)Z
.end method

.method private native WPage_HasPDF(I)Z
.end method

.method private native WPage_InsertObject(ILcom/samsung/android/sdk/pen/document/SpenObjectBase;I)Z
.end method

.method private native WPage_InsertObjectList(ILjava/util/ArrayList;I)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;I)Z"
        }
    .end annotation
.end method

.method private native WPage_IsChanged(I)Z
.end method

.method private native WPage_IsEditingByCoedit(I)Z
.end method

.method private native WPage_IsObjectLoaded(I)Z
.end method

.method private native WPage_IsValid(I)Z
.end method

.method private native WPage_LoadObject(I)Z
.end method

.method private native WPage_MoveAllObject(IFF)Z
.end method

.method private native WPage_MoveObject(ILjava/util/ArrayList;FF)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;FF)Z"
        }
    .end annotation
.end method

.method private native WPage_MoveObject1(ILjava/util/ArrayList;Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;I)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;",
            "Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;",
            "I)Z"
        }
    .end annotation
.end method

.method private native WPage_MoveObject2(ILjava/util/ArrayList;Lcom/samsung/android/sdk/pen/document/SpenObjectContainer;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectContainer;",
            ")Z"
        }
    .end annotation
.end method

.method private native WPage_MoveObjectIndex(ILcom/samsung/android/sdk/pen/document/SpenObjectBase;IZ)Z
.end method

.method private native WPage_RemoveAllObject(I)Z
.end method

.method private native WPage_RemoveObject(ILcom/samsung/android/sdk/pen/document/SpenObjectBase;)Z
.end method

.method private native WPage_RemoveObjectList(ILjava/util/ArrayList;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;)Z"
        }
    .end annotation
.end method

.method private native WPage_RemoveObjects(II)Z
.end method

.method private native WPage_RemoveSelectedObject(I)Z
.end method

.method private native WPage_SetBackgroundColor(IIZ)Z
.end method

.method private native WPage_SetBackgroundImage(ILjava/lang/String;Z)Z
.end method

.method private native WPage_SetBackgroundImageById(IIZ)Z
.end method

.method private native WPage_SetBackgroundImageMode(II)Z
.end method

.method private native WPage_SetPDFData(ILjava/util/ArrayList;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/worddoc/SpenWPage$PDFData;",
            ">;)Z"
        }
    .end annotation
.end method

.method private native WPage_SetRecognizedDataModifiedTime(IJ)Z
.end method

.method private native WPage_SetSize(III)Z
.end method

.method private native WPage_SetStrokeRecognitionData(ILjava/util/ArrayList;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/worddoc/SpenWPage$StrokeRecognitionData;",
            ">;)Z"
        }
    .end annotation
.end method

.method private native WPage_SetTemplateType(II)Z
.end method

.method private native WPage_SetTemplateURI(ILjava/lang/String;)Z
.end method

.method private native WPage_TransferObjects(ILcom/samsung/android/sdk/pen/document/SpenPageDoc;FLandroid/graphics/PointF;)Z
.end method

.method private native WPage_UnloadObject(I)Z
.end method

.method private native WPage_finalize(I)V
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

    const-string v1, "SpenWPage("

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
.method public appendObject(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->WPage_AppendObject(ILcom/samsung/android/sdk/pen/document/SpenObjectBase;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->throwUncheckedException(I)V

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

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->WPage_AppendObjectList(ILjava/util/ArrayList;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public clearCanvasCacheData()V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->WPage_ClearCanvasCacheData(I)V

    return-void
.end method

.method public clearChangedFlag()V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->WPage_ClearChangedFlag(I)V

    return-void
.end method

.method public copy(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->mHandle:I

    iget v1, p1, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->mHandle:I

    invoke-direct {p0, v0, p1, v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->WPage_Copy(ILcom/samsung/android/sdk/pen/worddoc/SpenWPage;I)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public createObject(I)Lcom/samsung/android/sdk/pen/document/SpenObjectBase;
    .locals 0

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectFactory;->createObject(I)Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->mHandle:I

    check-cast p1, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    iget p1, p1, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->mHandle:I

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
    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->WPage_finalize(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->mHandle:I

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

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->mHandle:I

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->WPage_FindObjectAtPosition(IIFF)Ljava/util/ArrayList;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p2

    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->throwUncheckedException(I)V

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

    iget v1, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->mHandle:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->WPage_FindObjectAtPositionWithThreshold(IIFFF)Ljava/util/ArrayList;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p2

    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->throwUncheckedException(I)V

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

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->mHandle:I

    array-length v1, p2

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->WPage_FindObjectInClosedCurve(II[Landroid/graphics/PointF;I)Ljava/util/ArrayList;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p2

    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->throwUncheckedException(I)V

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

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->mHandle:I

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->WPage_FindObjectInRect(IILandroid/graphics/RectF;Z)Ljava/util/ArrayList;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p2

    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->throwUncheckedException(I)V

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

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->mHandle:I

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->WPage_FindObjectInRectIntersect(IILandroid/graphics/RectF;)Ljava/util/ArrayList;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p2

    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->throwUncheckedException(I)V

    :cond_0
    return-object p1
.end method

.method public findTopObjectAtPosition(IFF)Lcom/samsung/android/sdk/pen/document/SpenObjectBase;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->mHandle:I

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->WPage_FindTopObjectAtPosition(IIFF)Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    move-result-object p1

    return-object p1
.end method

.method public findTopObjectAtPosition(IFFF)Lcom/samsung/android/sdk/pen/document/SpenObjectBase;
    .locals 6

    iget v1, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->mHandle:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->WPage_FindTopObjectAtPositionWithThreshold(IIFFF)Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    move-result-object p1

    return-object p1
.end method

.method public getBackgroundColor()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->WPage_GetBackgroundColor(I)I

    move-result v0

    return v0
.end method

.method public getBackgroundImage()Landroid/graphics/Bitmap;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->WPage_GetBackgroundImage(I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getBackgroundImageId()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->WPage_GetBackgroundImageId(I)I

    move-result v0

    return v0
.end method

.method public getBackgroundImageMode()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->WPage_GetBackgroundImageMode(I)I

    move-result v0

    return v0
.end method

.method public getBackgroundImagePath()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->WPage_GetBackgroundImagePath(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDrawnRectOfAllObject()Landroid/graphics/RectF;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->WPage_GetDrawnRectOfAllObject(I)Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->WPage_GetHeight(I)I

    move-result v0

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->WPage_GetId(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getModifiedTime()J
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->WPage_GetModifiedTime(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getObject(I)Lcom/samsung/android/sdk/pen/document/SpenObjectBase;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->WPage_GetObject(II)Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->throwUncheckedException(I)V

    :cond_0
    return-object p1
.end method

.method public getObjectByRuntimeHandle(I)Lcom/samsung/android/sdk/pen/document/SpenObjectBase;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->WPage_GetObjectByRuntimeHandle(II)Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->throwUncheckedException(I)V

    :cond_0
    return-object p1
.end method

.method public getObjectCount(IZ)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->mHandle:I

    invoke-direct {p0, v0, p2, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->WPage_GetObjectCount2(IZI)I

    move-result p1

    return p1
.end method

.method public getObjectCount(Z)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->WPage_GetObjectCount(IZ)I

    move-result p1

    return p1
.end method

.method public getObjectIndex(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->WPage_GetObjectIndex(ILcom/samsung/android/sdk/pen/document/SpenObjectBase;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->throwUncheckedException(I)V

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

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->WPage_GetObjectList(I)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->throwUncheckedException(I)V

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

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->WPage_GetObjectList2(II)Ljava/util/ArrayList;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->throwUncheckedException(I)V

    :cond_0
    return-object p1
.end method

.method public getOffset()Landroid/graphics/Point;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->WPage_GetOffset(I)Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method public getPDFData()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/worddoc/SpenWPage$PDFData;",
            ">;"
        }
    .end annotation

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->WPage_GetPDFData(I)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->throwUncheckedException(I)V

    :cond_0
    return-object v0
.end method

.method public getRecognizedDataModifiedTime()J
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->WPage_GetRecognizedDataModifiedTime(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getStrokeRecognitionData()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/worddoc/SpenWPage$StrokeRecognitionData;",
            ">;"
        }
    .end annotation

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->WPage_GetStrokeRecognitionData(I)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->throwUncheckedException(I)V

    :cond_0
    return-object v0
.end method

.method public getTemplateType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->WPage_GetTemplateType(I)I

    move-result v0

    return v0
.end method

.method public getTemplateURI()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->WPage_GetTemplateURI(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->WPage_GetWidth(I)I

    move-result v0

    return v0
.end method

.method public hasBackgroundImage()Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->WPage_HasBackgroundImage(I)Z

    move-result v0

    return v0
.end method

.method public hasPDF()Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->WPage_HasPDF(I)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->mHandle:I

    return v0
.end method

.method public insertObject(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;I)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->mHandle:I

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->WPage_InsertObject(ILcom/samsung/android/sdk/pen/document/SpenObjectBase;I)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public insertObjectList(Ljava/util/ArrayList;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;I)V"
        }
    .end annotation

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->mHandle:I

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->WPage_InsertObjectList(ILjava/util/ArrayList;I)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public isChanged()Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->WPage_IsChanged(I)Z

    move-result v0

    return v0
.end method

.method public isEditingByCoedit()Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->WPage_IsEditingByCoedit(I)Z

    move-result v0

    return v0
.end method

.method public isObjectContained(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->WPage_GetObjectIndex(ILcom/samsung/android/sdk/pen/document/SpenObjectBase;)I

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

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->WPage_IsObjectLoaded(I)Z

    move-result v0

    return v0
.end method

.method public isValid()Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->WPage_IsValid(I)Z

    move-result v0

    return v0
.end method

.method public loadObject()V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->WPage_LoadObject(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public moveAllObject(FF)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->mHandle:I

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->WPage_MoveAllObject(IFF)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public moveObject(Ljava/util/ArrayList;Lcom/samsung/android/sdk/pen/document/SpenObjectContainer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectContainer;",
            ")V"
        }
    .end annotation

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->mHandle:I

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->WPage_MoveObject2(ILjava/util/ArrayList;Lcom/samsung/android/sdk/pen/document/SpenObjectContainer;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public moveObject(Ljava/util/ArrayList;Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;",
            "Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;",
            ")V"
        }
    .end annotation

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->mHandle:I

    iget v1, p2, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->mHandle:I

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->WPage_MoveObject1(ILjava/util/ArrayList;Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;I)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public moveObjectIndex(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;IZ)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->mHandle:I

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->WPage_MoveObjectIndex(ILcom/samsung/android/sdk/pen/document/SpenObjectBase;IZ)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public removeAllObject()V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->WPage_RemoveAllObject(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public removeObject(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->WPage_RemoveObject(ILcom/samsung/android/sdk/pen/document/SpenObjectBase;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public removeObjectList(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;)V"
        }
    .end annotation

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->WPage_RemoveObjectList(ILjava/util/ArrayList;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public removeObjects(I)V
    .locals 1

    if-ltz p1, :cond_1

    const v0, 0x1ffff

    if-gt p1, v0, :cond_1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->WPage_RemoveObjects(II)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->throwUncheckedException(I)V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "typeFileter is invalid"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removeSelectedObject()V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->WPage_RemoveSelectedObject(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->mHandle:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->WPage_SetBackgroundColor(IIZ)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setBackgroundColor(IZ)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->mHandle:I

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->WPage_SetBackgroundColor(IIZ)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setBackgroundImage(IZ)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->mHandle:I

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->WPage_SetBackgroundImageById(IIZ)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setBackgroundImage(Ljava/lang/String;)V
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->mHandle:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->WPage_SetBackgroundImage(ILjava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setBackgroundImage(Ljava/lang/String;Z)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->mHandle:I

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->WPage_SetBackgroundImage(ILjava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setBackgroundImageMode(I)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->WPage_SetBackgroundImageMode(II)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setPDFData(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/worddoc/SpenWPage$PDFData;",
            ">;)V"
        }
    .end annotation

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->WPage_SetPDFData(ILjava/util/ArrayList;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setRecognizedDataModifiedTime(J)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->mHandle:I

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->WPage_SetRecognizedDataModifiedTime(IJ)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setSize(II)Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->mHandle:I

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->WPage_SetSize(III)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->throwUncheckedException(I)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public setStrokeRecognitionData(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/worddoc/SpenWPage$StrokeRecognitionData;",
            ">;)V"
        }
    .end annotation

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->WPage_SetStrokeRecognitionData(ILjava/util/ArrayList;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setTemplateType(I)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->WPage_SetTemplateType(II)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setTemplateURI(Ljava/lang/String;)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->WPage_SetTemplateURI(ILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public transferObjects(Lcom/samsung/android/sdk/pen/document/SpenPageDoc;FLandroid/graphics/PointF;)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->mHandle:I

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->WPage_TransferObjects(ILcom/samsung/android/sdk/pen/document/SpenPageDoc;FLandroid/graphics/PointF;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public unloadObject()V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->WPage_UnloadObject(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method
