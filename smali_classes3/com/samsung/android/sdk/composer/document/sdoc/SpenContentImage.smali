.class public Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentImage;
.super Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;-><init>(I)V

    return-void
.end method

.method private native ContentImage_copy(IILcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;)Z
.end method

.method private native ContentImage_getParagraphNumber(I)I
.end method

.method private native ContentImage_getRatio(I)F
.end method

.method private native ContentImage_init(I)Z
.end method

.method private native ContentImage_setParagraphNumber(II)Z
.end method

.method private native ContentImage_setRatio(IF)Z
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

    const-string v1, "SpenContentImage("

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
.method public copy(Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x7

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getHandle()I

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getHandle()I

    move-result v1

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentImage;->ContentImage_copy(IILcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentImage;->throwUncheckedException(I)V

    :cond_2
    return-void
.end method

.method public getParagraphNumber()I
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentImage;->ContentImage_getParagraphNumber(I)I

    move-result v0

    return v0
.end method

.method public getRatio()F
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentImage;->ContentImage_getRatio(I)F

    move-result v0

    return v0
.end method

.method public setParagraphNumber(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentImage;->ContentImage_setParagraphNumber(II)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentImage;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setRatio(F)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentImage;->ContentImage_setRatio(IF)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentImage;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method
