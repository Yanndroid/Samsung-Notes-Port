.class public Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ALIGN_BOTH:I = 0x3

.field public static final ALIGN_CENTER:I = 0x2

.field public static final ALIGN_LEFT:I = 0x0

.field public static final ALIGN_NONE:I = 0x4

.field public static final ALIGN_RIGHT:I = 0x1

.field public static final STATE_CANCELED:I = 0x7

.field public static final STATE_DONE:I = 0x4

.field public static final STATE_EXCEPTION:I = 0x6

.field public static final STATE_FAIL:I = 0x5

.field public static final STATE_INIT:I = 0x1

.field public static final STATE_NONE:I = 0x0

.field public static final STATE_READY:I = 0x2

.field public static final STATE_RUNNING:I = 0x3

.field public static final TASK_BULLET:I = 0x3

.field public static final TASK_DONE:I = 0x2

.field public static final TASK_NONE:I = 0x0

.field public static final TASK_NUMBER:I = 0x4

.field public static final TASK_TODO:I = 0x1

.field public static final TYPE_DRAWING:I = 0x4

.field public static final TYPE_HANDWRITING:I = 0x3

.field public static final TYPE_IMAGE:I = 0x2

.field public static final TYPE_MAP:I = 0x6

.field public static final TYPE_NONE:I = 0x0

.field public static final TYPE_PDF:I = 0x8

.field public static final TYPE_TEXT:I = 0x1

.field public static final TYPE_VIDEO:I = 0x9

.field public static final TYPE_VOICE:I = 0x7

.field public static final TYPE_WEB:I = 0x5


# instance fields
.field private mHandle:I

.field private final mType:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->mType:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->mHandle:I

    return-void
.end method

.method private native ContentBase_appendSpan(ILcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;)Z
.end method

.method private native ContentBase_clearChangedFlag(I)V
.end method

.method private native ContentBase_finalize(I)V
.end method

.method private native ContentBase_findSpan(III)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;",
            ">;"
        }
    .end annotation
.end method

.method private native ContentBase_getAlignment(I)I
.end method

.method private native ContentBase_getItemHeight(I)I
.end method

.method private native ContentBase_getLength(I)I
.end method

.method private native ContentBase_getSpan(I)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;",
            ">;"
        }
    .end annotation
.end method

.method private native ContentBase_getState(I)I
.end method

.method private native ContentBase_getTaskId(I)I
.end method

.method private native ContentBase_getTaskNumber(I)I
.end method

.method private native ContentBase_getTaskStyle(I)I
.end method

.method private native ContentBase_getText(I)Ljava/lang/String;
.end method

.method private native ContentBase_getThumbnailPath(I)Ljava/lang/String;
.end method

.method private native ContentBase_getType(I)I
.end method

.method private native ContentBase_isChanged(I)Z
.end method

.method private native ContentBase_prepareHistoryForSaving(I)Z
.end method

.method private native ContentBase_removeSpan(ILcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;)Z
.end method

.method private native ContentBase_setAlignment(II)Z
.end method

.method private native ContentBase_setItemHeight(II)Z
.end method

.method private native ContentBase_setSpan(ILjava/util/ArrayList;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;",
            ">;)Z"
        }
    .end annotation
.end method

.method private native ContentBase_setState(II)Z
.end method

.method private native ContentBase_setTaskId(II)Z
.end method

.method private native ContentBase_setTaskNumber(II)Z
.end method

.method private native ContentBase_setTaskStyle(II)Z
.end method

.method private native ContentBase_setText(ILjava/lang/String;)Z
.end method

.method private native ContentBase_setThumbnailPath(ILjava/lang/String;)Z
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

    const-string v1, "SpenContentBase("

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
.method public appendSpan(Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->ContentBase_appendSpan(ILcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public clearChangedFlag()V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->ContentBase_clearChangedFlag(I)V

    return-void
.end method

.method public copy(Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;)V
    .locals 0

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->mHandle:I

    check-cast p1, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;

    iget p1, p1, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->mHandle:I

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
    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->ContentBase_finalize(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->mHandle:I

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public findSpan(II)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;",
            ">;"
        }
    .end annotation

    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->mHandle:I

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->ContentBase_findSpan(III)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public getAlignment()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->ContentBase_getAlignment(I)I

    move-result v0

    return v0
.end method

.method public getHandle()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->mHandle:I

    return v0
.end method

.method public getItemHeight()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->ContentBase_getItemHeight(I)I

    move-result v0

    return v0
.end method

.method public getLength()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->ContentBase_getLength(I)I

    move-result v0

    return v0
.end method

.method public getSpan()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;",
            ">;"
        }
    .end annotation

    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->ContentBase_getSpan(I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getState()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->ContentBase_getState(I)I

    move-result v0

    return v0
.end method

.method public getTaskId()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->ContentBase_getTaskId(I)I

    move-result v0

    return v0
.end method

.method public getTaskNumber()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->ContentBase_getTaskNumber(I)I

    move-result v0

    return v0
.end method

.method public getTaskStyle()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->ContentBase_getTaskStyle(I)I

    move-result v0

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->ContentBase_getText(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getThumbnailPath()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->ContentBase_getThumbnailPath(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->ContentBase_getType(I)I

    move-result v0

    return v0
.end method

.method public isChanged()Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->ContentBase_isChanged(I)Z

    move-result v0

    return v0
.end method

.method public prepareHistoryForSaving()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->ContentBase_prepareHistoryForSaving(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->throwUncheckedException(I)V

    :cond_0
    return v0
.end method

.method public removeSpan(Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->ContentBase_removeSpan(ILcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setAlignment(I)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->ContentBase_setAlignment(II)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setItemHeight(I)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->ContentBase_setItemHeight(II)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setSpan(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;",
            ">;)V"
        }
    .end annotation

    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->ContentBase_setSpan(ILjava/util/ArrayList;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setState(I)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->ContentBase_setState(II)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setTaskId(I)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->ContentBase_setTaskId(II)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setTaskNumber(I)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->ContentBase_setTaskNumber(II)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setTaskStyle(I)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->ContentBase_setTaskStyle(II)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->ContentBase_setText(ILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setThumbnailPath(Ljava/lang/String;)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->ContentBase_setThumbnailPath(ILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    const/16 v0, 0xb

    if-eq p1, v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->throwUncheckedException(I)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "E_FILE_CAN_NOT_OPEN"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method
