.class public Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentDrawing;
.super Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;-><init>(I)V

    return-void
.end method

.method private native ContentDrawing_attachFile(ILjava/lang/String;)Z
.end method

.method private native ContentDrawing_copy(IILcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;)Z
.end method

.method private native ContentDrawing_getAttachedFile(I)Ljava/lang/String;
.end method

.method private native ContentDrawing_getObjectRect(I)Landroid/graphics/RectF;
.end method

.method private native ContentDrawing_getRatio(I)F
.end method

.method private native ContentDrawing_init(I)Z
.end method

.method private native ContentDrawing_setObjectRect(ILandroid/graphics/RectF;)Z
.end method

.method private native ContentDrawing_setRatio(IF)Z
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

    const-string v1, "SpenContentDrawing("

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

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentDrawing;->ContentDrawing_attachFile(ILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentDrawing;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public copy(Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getType()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x7

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getHandle()I

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getHandle()I

    move-result v1

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentDrawing;->ContentDrawing_copy(IILcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentDrawing;->throwUncheckedException(I)V

    :cond_2
    return-void
.end method

.method public getAttachedFile()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentDrawing;->ContentDrawing_getAttachedFile(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getObjectRect()Landroid/graphics/RectF;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentDrawing;->ContentDrawing_getObjectRect(I)Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public getRatio()F
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentDrawing;->ContentDrawing_getRatio(I)F

    move-result v0

    return v0
.end method

.method public setObjectRect(Landroid/graphics/RectF;)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentDrawing;->ContentDrawing_setObjectRect(ILandroid/graphics/RectF;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentDrawing;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setRatio(F)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentDrawing;->ContentDrawing_setRatio(IF)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentDrawing;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method
