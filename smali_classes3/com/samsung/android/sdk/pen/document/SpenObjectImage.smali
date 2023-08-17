.class public Lcom/samsung/android/sdk/pen/document/SpenObjectImage;
.super Lcom/samsung/android/sdk/pen/document/SpenObjectShape;
.source "SourceFile"


# static fields
.field public static final BORDER_TYPE_DOT:I = 0x3

.field public static final BORDER_TYPE_IMAGE:I = 0x4

.field public static final BORDER_TYPE_NONE:I = 0x0

.field public static final BORDER_TYPE_SHADOW:I = 0x2

.field public static final BORDER_TYPE_SQUARE:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;-><init>(II)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;-><init>(II)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;-><init>(II)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectImage;->ObjectImage_init(IZ)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectImage;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method private native Bitmap_saveImageTest()V
.end method

.method private native ObjectImage_clearChangedFlag(I)V
.end method

.method private native ObjectImage_copy(ILcom/samsung/android/sdk/pen/document/SpenObjectBase;I)Z
.end method

.method private native ObjectImage_getBorderType(I)I
.end method

.method private native ObjectImage_getCropRect(I)Landroid/graphics/Rect;
.end method

.method private native ObjectImage_getDrawnRect(I)Landroid/graphics/RectF;
.end method

.method private native ObjectImage_getHintText(I)Ljava/lang/String;
.end method

.method private native ObjectImage_getHintTextColor(I)I
.end method

.method private native ObjectImage_getHintTextFontSize(I)F
.end method

.method private native ObjectImage_getHintTextVerticalOffset(I)F
.end method

.method private native ObjectImage_getImage(I)Landroid/graphics/Bitmap;
.end method

.method private native ObjectImage_getImageBorder(I)Landroid/graphics/Bitmap;
.end method

.method private native ObjectImage_getImageBorderBottomWidth(I)F
.end method

.method private native ObjectImage_getImageBorderLeftWidth(I)F
.end method

.method private native ObjectImage_getImageBorderNinePatchRect(I)Landroid/graphics/Rect;
.end method

.method private native ObjectImage_getImageBorderPath(I)Ljava/lang/String;
.end method

.method private native ObjectImage_getImageBorderRightWidth(I)F
.end method

.method private native ObjectImage_getImageBorderTopWidth(I)F
.end method

.method private native ObjectImage_getImagePath(I)Ljava/lang/String;
.end method

.method private native ObjectImage_getLineBorderColor(I)I
.end method

.method private native ObjectImage_getLineBorderWidth(I)F
.end method

.method private native ObjectImage_getNinePatchRect(I)Landroid/graphics/Rect;
.end method

.method private native ObjectImage_getOriginalImagePath(I)Ljava/lang/String;
.end method

.method private native ObjectImage_getOriginalRect(I)Landroid/graphics/Rect;
.end method

.method private native ObjectImage_getTransparency(I)Z
.end method

.method private native ObjectImage_init(IZ)Z
.end method

.method private native ObjectImage_isChanged(I)Z
.end method

.method private native ObjectImage_isHintTextVisiable(I)Z
.end method

.method private native ObjectImage_setBorderType(II)Z
.end method

.method private native ObjectImage_setCropRect(ILandroid/graphics/Rect;)Z
.end method

.method private native ObjectImage_setHintText(ILjava/lang/String;)Z
.end method

.method private native ObjectImage_setHintTextColor(II)Z
.end method

.method private native ObjectImage_setHintTextFontSize(IF)Z
.end method

.method private native ObjectImage_setHintTextVerticalOffset(IF)Z
.end method

.method private native ObjectImage_setHintTextVisibility(IZ)Z
.end method

.method private native ObjectImage_setImage(ILandroid/graphics/Bitmap;Landroid/graphics/Rect;)Z
.end method

.method private native ObjectImage_setImage2(ILjava/lang/String;Landroid/graphics/Rect;)Z
.end method

.method private native ObjectImage_setImageBorder(ILandroid/graphics/Bitmap;Landroid/graphics/Rect;)Z
.end method

.method private native ObjectImage_setImageBorderWidth(IFFFF)Z
.end method

.method private native ObjectImage_setLineBorderColor(II)Z
.end method

.method private native ObjectImage_setLineBorderWidth(IF)Z
.end method

.method private native ObjectImage_setOriginalImage(ILjava/lang/String;)Z
.end method

.method private native ObjectImage_setOriginalRect(ILandroid/graphics/Rect;)Z
.end method

.method private native ObjectImage_setTransparency(IZ)Z
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

    const-string v1, "SpenObjectImage("

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
.method public clearChangedFlag()V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectImage;->ObjectImage_clearChangedFlag(I)V

    return-void
.end method

.method public copy(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getHandle()I

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getHandle()I

    move-result v1

    invoke-direct {p0, v0, p1, v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectImage;->ObjectImage_copy(ILcom/samsung/android/sdk/pen/document/SpenObjectBase;I)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectImage;->throwUncheckedException(I)V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid source"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getBorderType()I
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectImage;->ObjectImage_getBorderType(I)I

    move-result v0

    return v0
.end method

.method public getCropRect()Landroid/graphics/Rect;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectImage;->ObjectImage_getCropRect(I)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getDrawnRect()Landroid/graphics/RectF;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectImage;->ObjectImage_getDrawnRect(I)Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public getHintTextVerticalOffset()F
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectImage;->ObjectImage_getHintTextVerticalOffset(I)F

    move-result v0

    return v0
.end method

.method public getImage()Landroid/graphics/Bitmap;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectImage;->ObjectImage_getImage(I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getImageBorder()Landroid/graphics/Bitmap;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectImage;->ObjectImage_getImageBorderPath(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getImageBorderBottomWidth()F
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectImage;->ObjectImage_getImageBorderBottomWidth(I)F

    move-result v0

    return v0
.end method

.method public getImageBorderLeftWidth()F
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectImage;->ObjectImage_getImageBorderLeftWidth(I)F

    move-result v0

    return v0
.end method

.method public getImageBorderNinePatchRect()Landroid/graphics/Rect;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectImage;->ObjectImage_getImageBorderNinePatchRect(I)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getImageBorderPath()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectImage;->ObjectImage_getImageBorderPath(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImageBorderRightWidth()F
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectImage;->ObjectImage_getImageBorderRightWidth(I)F

    move-result v0

    return v0
.end method

.method public getImageBorderTopWidth()F
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectImage;->ObjectImage_getImageBorderTopWidth(I)F

    move-result v0

    return v0
.end method

.method public getImagePath()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectImage;->ObjectImage_getImagePath(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLineBorderColor()I
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectImage;->ObjectImage_getLineBorderColor(I)I

    move-result v0

    return v0
.end method

.method public getLineBorderWidth()F
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectImage;->ObjectImage_getLineBorderWidth(I)F

    move-result v0

    return v0
.end method

.method public getNinePatchRect()Landroid/graphics/Rect;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectImage;->ObjectImage_getNinePatchRect(I)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getOriginalImagePath()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectImage;->ObjectImage_getOriginalImagePath(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOriginalRect()Landroid/graphics/Rect;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectImage;->ObjectImage_getOriginalRect(I)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getTransparency()Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectImage;->ObjectImage_getTransparency(I)Z

    move-result v0

    return v0
.end method

.method public isChanged()Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectImage;->ObjectImage_isChanged(I)Z

    move-result v0

    return v0
.end method

.method public setBorderType(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectImage;->ObjectImage_setBorderType(II)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectImage;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setCropRect(Landroid/graphics/Rect;)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectImage;->ObjectImage_setCropRect(ILandroid/graphics/Rect;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectImage;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setHintTextVerticalOffset(F)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectImage;->ObjectImage_setHintTextVerticalOffset(IF)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectImage;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setImage(Landroid/graphics/Bitmap;)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "image is recyled."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getHandle()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectImage;->ObjectImage_setImage(ILandroid/graphics/Bitmap;Landroid/graphics/Rect;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectImage;->throwUncheckedException(I)V

    :cond_2
    return-void
.end method

.method public setImage(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "image is recyled."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/sdk/pen/document/SpenObjectImage;->ObjectImage_setImage(ILandroid/graphics/Bitmap;Landroid/graphics/Rect;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectImage;->throwUncheckedException(I)V

    :cond_2
    return-void
.end method

.method public setImage(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getHandle()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectImage;->ObjectImage_setImage2(ILjava/lang/String;Landroid/graphics/Rect;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectImage;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setImage(Ljava/lang/String;Landroid/graphics/Rect;)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/sdk/pen/document/SpenObjectImage;->ObjectImage_setImage2(ILjava/lang/String;Landroid/graphics/Rect;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectImage;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setImageBorder(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "image is recyled."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/sdk/pen/document/SpenObjectImage;->ObjectImage_setImageBorder(ILandroid/graphics/Bitmap;Landroid/graphics/Rect;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectImage;->throwUncheckedException(I)V

    :cond_2
    return-void
.end method

.method public setImageBorderWidth(FFFF)V
    .locals 6

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getHandle()I

    move-result v1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/sdk/pen/document/SpenObjectImage;->ObjectImage_setImageBorderWidth(IFFFF)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectImage;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setLineBorderColor(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectImage;->ObjectImage_setLineBorderColor(II)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectImage;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setLineBorderWidth(F)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectImage;->ObjectImage_setLineBorderWidth(IF)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectImage;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setOriginalImage(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectImage;->ObjectImage_setOriginalImage(ILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectImage;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setOriginalRect(Landroid/graphics/Rect;)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectImage;->ObjectImage_setOriginalRect(ILandroid/graphics/Rect;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectImage;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setRect(Landroid/graphics/RectF;Z)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->setRect(Landroid/graphics/RectF;Z)V

    return-void
.end method

.method public setTransparency(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getHandle()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectImage;->ObjectImage_setTransparency(IZ)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectImage;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method
