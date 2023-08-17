.class public Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentWeb;
.super Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;-><init>(I)V

    return-void
.end method

.method private native ContentWeb_attachHTMLFile(ILjava/lang/String;)Z
.end method

.method private native ContentWeb_copy(IILcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;)Z
.end method

.method private native ContentWeb_getAttachedHTMLFile(I)Ljava/lang/String;
.end method

.method private native ContentWeb_getBody(I)Ljava/lang/String;
.end method

.method private native ContentWeb_getImageTypeId(I)I
.end method

.method private native ContentWeb_getTitle(I)Ljava/lang/String;
.end method

.method private native ContentWeb_getUri(I)Ljava/lang/String;
.end method

.method private native ContentWeb_hasHTML(I)Z
.end method

.method private native ContentWeb_init(I)Z
.end method

.method private native ContentWeb_setBody(ILjava/lang/String;)Z
.end method

.method private native ContentWeb_setImageTypeId(II)Z
.end method

.method private native ContentWeb_setTitle(ILjava/lang/String;)Z
.end method

.method private native ContentWeb_setUri(ILjava/lang/String;)Z
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

    const-string v1, "SpenContentWeb("

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
.method public attachHTMLFile(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentWeb;->ContentWeb_attachHTMLFile(ILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentWeb;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public copy(Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getType()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x7

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getHandle()I

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getHandle()I

    move-result v1

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentWeb;->ContentWeb_copy(IILcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentWeb;->throwUncheckedException(I)V

    :cond_2
    return-void
.end method

.method public getAttachedHTMLFile()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentWeb;->ContentWeb_getAttachedHTMLFile(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBody()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentWeb;->ContentWeb_getBody(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImageTypeId()I
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentWeb;->ContentWeb_getImageTypeId(I)I

    move-result v0

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentWeb;->ContentWeb_getTitle(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentWeb;->ContentWeb_getUri(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasHTML()Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentWeb;->ContentWeb_hasHTML(I)Z

    move-result v0

    return v0
.end method

.method public setBody(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentWeb;->ContentWeb_setBody(ILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentWeb;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setImageTypeId(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentWeb;->ContentWeb_setImageTypeId(II)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentWeb;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentWeb;->ContentWeb_setTitle(ILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentWeb;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setUri(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentWeb;->ContentWeb_setUri(ILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentWeb;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method
