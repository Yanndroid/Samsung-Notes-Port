.class public Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentText;
.super Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;
.source "SourceFile"


# static fields
.field public static final STYLE_BOLD:I = 0x1

.field public static final STYLE_ITALIC:I = 0x2

.field public static final STYLE_NONE:I = 0x0

.field public static final STYLE_UNDERLINE:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;-><init>(I)V

    return-void
.end method

.method private native ContentText_appendSpan(ILcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;)Z
.end method

.method private native ContentText_copy(IILcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;)Z
.end method

.method private native ContentText_doneParsingText(I)V
.end method

.method private native ContentText_findSpan(III)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;",
            ">;"
        }
    .end annotation
.end method

.method private native ContentText_getCursorPosition(I)I
.end method

.method private native ContentText_getHintText(I)Ljava/lang/String;
.end method

.method private native ContentText_getHintTextColor(I)I
.end method

.method private native ContentText_getHintTextSize(I)F
.end method

.method private native ContentText_getHintTextStyle(I)I
.end method

.method private native ContentText_getParagraphNumber(I)I
.end method

.method private native ContentText_getSpan(I)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;",
            ">;"
        }
    .end annotation
.end method

.method private native ContentText_init(I)Z
.end method

.method private native ContentText_insertText(ILjava/lang/String;I)Z
.end method

.method private native ContentText_insertTextAtCursor(ILjava/lang/String;)Z
.end method

.method private native ContentText_isHintTextEnabled(I)Z
.end method

.method private native ContentText_isParsedText(I)Z
.end method

.method private native ContentText_removeAllText(I)Z
.end method

.method private native ContentText_removeSpan(ILcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;)Z
.end method

.method private native ContentText_removeText(III)Z
.end method

.method private native ContentText_replaceText(ILjava/lang/String;II)Z
.end method

.method private native ContentText_setCursorPosition(II)Z
.end method

.method private native ContentText_setHintText(ILjava/lang/String;)Z
.end method

.method private native ContentText_setHintTextColor(II)Z
.end method

.method private native ContentText_setHintTextEnabled(IZ)Z
.end method

.method private native ContentText_setHintTextSize(IF)Z
.end method

.method private native ContentText_setHintTextStyle(II)Z
.end method

.method private native ContentText_setParagraphNumber(II)Z
.end method

.method private native ContentText_setParsingState(IZ)V
.end method

.method private native ContentText_setSpan(ILjava/util/ArrayList;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;",
            ">;)Z"
        }
    .end annotation
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

    const-string v1, "SpenContentText("

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

    invoke-virtual {p0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentText;->ContentText_appendSpan(ILcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentText;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public copy(Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x7

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getHandle()I

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getHandle()I

    move-result v1

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentText;->ContentText_copy(IILcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentText;->throwUncheckedException(I)V

    :cond_2
    return-void
.end method

.method public doneParsingText()V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentText;->ContentText_doneParsingText(I)V

    return-void
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

    invoke-virtual {p0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentText;->ContentText_findSpan(III)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public getCursorPosition()I
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentText;->ContentText_getCursorPosition(I)I

    move-result v0

    return v0
.end method

.method public getHintText()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentText;->ContentText_getHintText(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHintTextColor()I
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentText;->ContentText_getHintTextColor(I)I

    move-result v0

    return v0
.end method

.method public getHintTextSize()F
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentText;->ContentText_getHintTextSize(I)F

    move-result v0

    return v0
.end method

.method public getHintTextStyle()I
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentText;->ContentText_getHintTextStyle(I)I

    move-result v0

    return v0
.end method

.method public getParagraphNumber()I
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentText;->ContentText_getParagraphNumber(I)I

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

    invoke-virtual {p0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentText;->ContentText_getSpan(I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public insertText(Ljava/lang/String;I)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentText;->ContentText_insertText(ILjava/lang/String;I)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentText;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public insertTextAtCursor(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentText;->ContentText_insertTextAtCursor(ILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentText;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public isHintTextEnabled()Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentText;->ContentText_isHintTextEnabled(I)Z

    move-result v0

    return v0
.end method

.method public isParsedText()Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentText;->ContentText_isParsedText(I)Z

    move-result v0

    return v0
.end method

.method public removeAllText()V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentText;->ContentText_removeAllText(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentText;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public removeSpan(Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentText;->ContentText_removeSpan(ILcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentText;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public removeText(II)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentText;->ContentText_removeText(III)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentText;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public replaceText(Ljava/lang/String;II)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentText;->ContentText_replaceText(ILjava/lang/String;II)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentText;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setCursorPosition(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentText;->ContentText_setCursorPosition(II)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentText;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setHintText(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentText;->ContentText_setHintText(ILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentText;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setHintTextColor(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentText;->ContentText_setHintTextColor(II)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentText;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setHintTextEnabled(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentText;->ContentText_setHintTextEnabled(IZ)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentText;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setHintTextSize(F)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentText;->ContentText_setHintTextSize(IF)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentText;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setHintTextStyle(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentText;->ContentText_setHintTextStyle(II)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentText;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setParagraphNumber(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentText;->ContentText_setParagraphNumber(II)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentText;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setParsingState(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentText;->ContentText_setParsingState(IZ)V

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

    invoke-virtual {p0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentText;->ContentText_setSpan(ILjava/util/ArrayList;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentText;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method
