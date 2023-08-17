.class public Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentHandWriting;
.super Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentHandWriting$ActionLinkData;
    }
.end annotation


# static fields
.field public static final BACKGROUND_PATTERN_CHECK_DENSITY_1:I = 0xb

.field public static final BACKGROUND_PATTERN_CHECK_DENSITY_2:I = 0xc

.field public static final BACKGROUND_PATTERN_CHECK_DENSITY_3:I = 0xd

.field public static final BACKGROUND_PATTERN_CHECK_DENSITY_4:I = 0xe

.field public static final BACKGROUND_PATTERN_LINE_SPACING_1:I = 0x1

.field public static final BACKGROUND_PATTERN_LINE_SPACING_2:I = 0x2

.field public static final BACKGROUND_PATTERN_LINE_SPACING_3:I = 0x3

.field public static final BACKGROUND_PATTERN_LINE_SPACING_4:I = 0x4

.field public static final BACKGROUND_PATTERN_NONE:I = 0x0

.field public static final CANVAS_TYPE_FINITE:I = 0x1

.field public static final CANVAS_TYPE_INFINITE:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;-><init>(I)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentHandWriting;->ContentHandWriting_init2(II)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentHandWriting;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method private native ContentHandWriting_attachFile(ILjava/lang/String;)Z
.end method

.method private native ContentHandWriting_copy(IILcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;)Z
.end method

.method private native ContentHandWriting_createNoteDoc(III)Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;
.end method

.method private native ContentHandWriting_deleteNoteDoc(I)Z
.end method

.method private native ContentHandWriting_getActionLinkData(I)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentHandWriting$ActionLinkData;",
            ">;"
        }
    .end annotation
.end method

.method private native ContentHandWriting_getActionLinkDataState(I)I
.end method

.method private native ContentHandWriting_getAttachedFile(I)Ljava/lang/String;
.end method

.method private native ContentHandWriting_getBackgroundColor(I)I
.end method

.method private native ContentHandWriting_getBackgroundPattern(I)I
.end method

.method private native ContentHandWriting_getBackgroundPatternColor(I)I
.end method

.method private native ContentHandWriting_getCanvasType(I)I
.end method

.method private native ContentHandWriting_getNoteDoc(I)Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;
.end method

.method private native ContentHandWriting_getObjectRect(I)Landroid/graphics/RectF;
.end method

.method private native ContentHandWriting_getThumbnailCount(I)I
.end method

.method private native ContentHandWriting_getThumbnailPathList(I)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method private native ContentHandWriting_getThumbnailRect(I)Landroid/graphics/RectF;
.end method

.method private native ContentHandWriting_init(I)Z
.end method

.method private native ContentHandWriting_init2(II)Z
.end method

.method private native ContentHandWriting_isEmptyNoteDoc(I)Z
.end method

.method private native ContentHandWriting_isImageIncluded(I)Z
.end method

.method private native ContentHandWriting_removeThumbnailPath(II)Z
.end method

.method private native ContentHandWriting_setActionLinkData(ILjava/util/ArrayList;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentHandWriting$ActionLinkData;",
            ">;)Z"
        }
    .end annotation
.end method

.method private native ContentHandWriting_setActionLinkDataState(II)Z
.end method

.method private native ContentHandWriting_setBackgroundColor(II)Z
.end method

.method private native ContentHandWriting_setBackgroundPattern(II)Z
.end method

.method private native ContentHandWriting_setBackgroundPatternColor(II)Z
.end method

.method private native ContentHandWriting_setObjectRect(ILandroid/graphics/RectF;)Z
.end method

.method private native ContentHandWriting_setThumbnailCount(II)Z
.end method

.method private native ContentHandWriting_setThumbnailPath(IILjava/lang/String;)Z
.end method

.method private native ContentHandWriting_setThumbnailPathList(ILjava/util/ArrayList;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation
.end method

.method private native ContentHandWriting_setThumbnailRect(ILandroid/graphics/RectF;)Z
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

    const-string v1, "SpenContentHandWriting("

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

    invoke-virtual {p0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentHandWriting;->ContentHandWriting_attachFile(ILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentHandWriting;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public copy(Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getType()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x7

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getHandle()I

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getHandle()I

    move-result v1

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentHandWriting;->ContentHandWriting_copy(IILcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentHandWriting;->throwUncheckedException(I)V

    :cond_2
    return-void
.end method

.method public createNoteDoc(II)Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentHandWriting;->ContentHandWriting_createNoteDoc(III)Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;

    move-result-object p1

    if-nez p1, :cond_3

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p2

    const/4 v0, 0x5

    if-eq p2, v0, :cond_2

    const/16 v0, 0xb

    if-eq p2, v0, :cond_1

    const/16 v0, 0x13

    if-eq p2, v0, :cond_0

    const/4 v0, 0x7

    if-eq p2, v0, :cond_2

    const/16 v0, 0x8

    if-eq p2, v0, :cond_2

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/samsung/android/sdk/pen/document/SpenAlreadyClosedException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SpenNoteDoc("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ") is already closed."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/samsung/android/sdk/pen/document/SpenAlreadyClosedException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1

    :cond_2
    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p2

    invoke-static {p2}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(I)V

    :cond_3
    :goto_0
    return-object p1
.end method

.method public deleteNoteDoc()V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentHandWriting;->ContentHandWriting_deleteNoteDoc(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentHandWriting;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public getActionLinkData()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentHandWriting$ActionLinkData;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentHandWriting;->ContentHandWriting_getActionLinkData(I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getActionLinkDataState()I
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentHandWriting;->ContentHandWriting_getActionLinkDataState(I)I

    move-result v0

    return v0
.end method

.method public getAttachedFile()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentHandWriting;->ContentHandWriting_getAttachedFile(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBackgroundColor()I
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentHandWriting;->ContentHandWriting_getBackgroundColor(I)I

    move-result v0

    return v0
.end method

.method public getBackgroundPattern()I
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentHandWriting;->ContentHandWriting_getBackgroundPattern(I)I

    move-result v0

    return v0
.end method

.method public getBackgroundPatternColor()I
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentHandWriting;->ContentHandWriting_getBackgroundPatternColor(I)I

    move-result v0

    return v0
.end method

.method public getCanvasType()I
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentHandWriting;->ContentHandWriting_getCanvasType(I)I

    move-result v0

    return v0
.end method

.method public getNoteDoc()Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentHandWriting;->ContentHandWriting_getNoteDoc(I)Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;

    move-result-object v0

    return-object v0
.end method

.method public getObjectRect()Landroid/graphics/RectF;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentHandWriting;->ContentHandWriting_getObjectRect(I)Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public getThumbnailCount()I
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentHandWriting;->ContentHandWriting_getThumbnailCount(I)I

    move-result v0

    return v0
.end method

.method public getThumbnailPathList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentHandWriting;->ContentHandWriting_getThumbnailPathList(I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getThumbnailRect()Landroid/graphics/RectF;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentHandWriting;->ContentHandWriting_getThumbnailRect(I)Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public isEmptyNoteDoc()Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentHandWriting;->ContentHandWriting_isEmptyNoteDoc(I)Z

    move-result v0

    return v0
.end method

.method public isImageIncluded()Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentHandWriting;->ContentHandWriting_isImageIncluded(I)Z

    move-result v0

    return v0
.end method

.method public removeThumbnailPath(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentHandWriting;->ContentHandWriting_removeThumbnailPath(II)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentHandWriting;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setActionLinkData(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentHandWriting$ActionLinkData;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentHandWriting;->ContentHandWriting_setActionLinkData(ILjava/util/ArrayList;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentHandWriting;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setActionLinkDataState(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentHandWriting;->ContentHandWriting_setActionLinkDataState(II)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentHandWriting;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentHandWriting;->ContentHandWriting_setBackgroundColor(II)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentHandWriting;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setBackgroundPattern(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentHandWriting;->ContentHandWriting_setBackgroundPattern(II)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentHandWriting;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setBackgroundPatternColor(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentHandWriting;->ContentHandWriting_setBackgroundPatternColor(II)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentHandWriting;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setObjectRect(Landroid/graphics/RectF;)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentHandWriting;->ContentHandWriting_setObjectRect(ILandroid/graphics/RectF;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentHandWriting;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setThumbnailCount(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentHandWriting;->ContentHandWriting_setThumbnailCount(II)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentHandWriting;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setThumbnailPathList(ILjava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentHandWriting;->ContentHandWriting_setThumbnailPath(IILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentHandWriting;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setThumbnailPathList(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentHandWriting;->ContentHandWriting_setThumbnailPathList(ILjava/util/ArrayList;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentHandWriting;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setThumbnailRect(Landroid/graphics/RectF;)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentHandWriting;->ContentHandWriting_setThumbnailRect(ILandroid/graphics/RectF;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentHandWriting;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method
