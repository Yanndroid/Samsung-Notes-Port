.class public Lcom/sun/imageio/plugins/common/BogusColorSpace;
.super Lorg/apache/poi/java/awt/color/ColorSpace;
.source "SourceFile"


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-static {p1}, Lcom/sun/imageio/plugins/common/BogusColorSpace;->getType(I)I

    move-result v0

    invoke-direct {p0, v0, p1}, Lorg/apache/poi/java/awt/color/ColorSpace;-><init>(II)V

    return-void
.end method

.method private static getType(I)I
    .locals 1

    const/4 v0, 0x1

    if-lt p0, v0, :cond_1

    if-eq p0, v0, :cond_0

    add-int/lit8 p0, p0, 0xa

    goto :goto_0

    :cond_0
    const/4 p0, 0x6

    :goto_0
    return p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "numComponents < 1!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public fromCIEXYZ([F)[F
    .locals 3

    array-length v0, p1

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/color/ColorSpace;->getNumComponents()I

    move-result v0

    new-array v2, v0, [F

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p1, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v0, "xyzvalue.length < 3"

    invoke-direct {p1, v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public fromRGB([F)[F
    .locals 3

    array-length v0, p1

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/color/ColorSpace;->getNumComponents()I

    move-result v0

    new-array v2, v0, [F

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p1, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v0, "rgbvalue.length < 3"

    invoke-direct {p1, v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toCIEXYZ([F)[F
    .locals 3

    array-length v0, p1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/color/ColorSpace;->getNumComponents()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x3

    new-array v1, v0, [F

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/color/ColorSpace;->getNumComponents()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v2, 0x0

    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v0, "colorvalue.length < getNumComponents()"

    invoke-direct {p1, v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toRGB([F)[F
    .locals 3

    array-length v0, p1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/color/ColorSpace;->getNumComponents()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x3

    new-array v1, v0, [F

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/color/ColorSpace;->getNumComponents()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v2, 0x0

    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v0, "colorvalue.length < getNumComponents()"

    invoke-direct {p1, v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
