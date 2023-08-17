.class public Lorg/apache/poi/util/BitField;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
    since = "POI 3.15 beta 3"
.end annotation


# instance fields
.field private final _mask:I

.field private final _shift_count:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/apache/poi/util/BitField;->_mask:I

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    :goto_0
    and-int/lit8 v1, p1, 0x1

    if-nez v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    shr-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iput v0, p0, Lorg/apache/poi/util/BitField;->_shift_count:I

    return-void
.end method


# virtual methods
.method public clear(I)I
    .locals 1

    iget v0, p0, Lorg/apache/poi/util/BitField;->_mask:I

    not-int v0, v0

    and-int/2addr p1, v0

    return p1
.end method

.method public clearByte(B)B
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/poi/util/BitField;->clear(I)I

    move-result p1

    int-to-byte p1, p1

    return p1
.end method

.method public clearShort(S)S
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/poi/util/BitField;->clear(I)I

    move-result p1

    int-to-short p1, p1

    return p1
.end method

.method public getRawValue(I)I
    .locals 1

    iget v0, p0, Lorg/apache/poi/util/BitField;->_mask:I

    and-int/2addr p1, v0

    return p1
.end method

.method public getShortRawValue(S)S
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/poi/util/BitField;->getRawValue(I)I

    move-result p1

    int-to-short p1, p1

    return p1
.end method

.method public getShortValue(S)S
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/poi/util/BitField;->getValue(I)I

    move-result p1

    int-to-short p1, p1

    return p1
.end method

.method public getValue(I)I
    .locals 1

    invoke-virtual {p0, p1}, Lorg/apache/poi/util/BitField;->getRawValue(I)I

    move-result p1

    iget v0, p0, Lorg/apache/poi/util/BitField;->_shift_count:I

    ushr-int/2addr p1, v0

    return p1
.end method

.method public isAllSet(I)Z
    .locals 1

    iget v0, p0, Lorg/apache/poi/util/BitField;->_mask:I

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isSet(I)Z
    .locals 1

    iget v0, p0, Lorg/apache/poi/util/BitField;->_mask:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public set(I)I
    .locals 1

    iget v0, p0, Lorg/apache/poi/util/BitField;->_mask:I

    or-int/2addr p1, v0

    return p1
.end method

.method public setBoolean(IZ)I
    .locals 0

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/poi/util/BitField;->set(I)I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/poi/util/BitField;->clear(I)I

    move-result p1

    :goto_0
    return p1
.end method

.method public setByte(B)B
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/poi/util/BitField;->set(I)I

    move-result p1

    int-to-byte p1, p1

    return p1
.end method

.method public setByteBoolean(BZ)B
    .locals 0

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/poi/util/BitField;->setByte(B)B

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/poi/util/BitField;->clearByte(B)B

    move-result p1

    :goto_0
    return p1
.end method

.method public setShort(S)S
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/poi/util/BitField;->set(I)I

    move-result p1

    int-to-short p1, p1

    return p1
.end method

.method public setShortBoolean(SZ)S
    .locals 0

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/poi/util/BitField;->setShort(S)S

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/poi/util/BitField;->clearShort(S)S

    move-result p1

    :goto_0
    return p1
.end method

.method public setShortValue(SS)S
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/util/BitField;->setValue(II)I

    move-result p1

    int-to-short p1, p1

    return p1
.end method

.method public setValue(II)I
    .locals 2

    iget v0, p0, Lorg/apache/poi/util/BitField;->_mask:I

    not-int v1, v0

    and-int/2addr p1, v1

    iget v1, p0, Lorg/apache/poi/util/BitField;->_shift_count:I

    shl-int/2addr p2, v1

    and-int/2addr p2, v0

    or-int/2addr p1, p2

    return p1
.end method
