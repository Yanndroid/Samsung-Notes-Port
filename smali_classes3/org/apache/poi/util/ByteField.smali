.class public Lorg/apache/poi/util/ByteField;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/util/FixedField;


# static fields
.field private static final _default_value:B


# instance fields
.field private final _offset:I

.field private _value:B


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/util/ByteField;-><init>(IB)V

    return-void
.end method

.method public constructor <init>(IB)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p1, :cond_0

    iput p1, p0, Lorg/apache/poi/util/ByteField;->_offset:I

    invoke-virtual {p0, p2}, Lorg/apache/poi/util/ByteField;->set(B)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "offset cannot be negative"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(IB[B)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/util/ByteField;-><init>(IB)V

    invoke-virtual {p0, p3}, Lorg/apache/poi/util/ByteField;->writeToBytes([B)V

    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/util/ByteField;-><init>(I)V

    invoke-virtual {p0, p2}, Lorg/apache/poi/util/ByteField;->readFromBytes([B)V

    return-void
.end method


# virtual methods
.method public get()B
    .locals 1

    iget-byte v0, p0, Lorg/apache/poi/util/ByteField;->_value:B

    return v0
.end method

.method public readFromBytes([B)V
    .locals 1

    iget v0, p0, Lorg/apache/poi/util/ByteField;->_offset:I

    aget-byte p1, p1, v0

    iput-byte p1, p0, Lorg/apache/poi/util/ByteField;->_value:B

    return-void
.end method

.method public readFromStream(Ljava/io/InputStream;)V
    .locals 0

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result p1

    if-ltz p1, :cond_0

    int-to-byte p1, p1

    iput-byte p1, p0, Lorg/apache/poi/util/ByteField;->_value:B

    return-void

    :cond_0
    new-instance p1, Ljava/nio/BufferUnderflowException;

    invoke-direct {p1}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw p1
.end method

.method public set(B)V
    .locals 0

    iput-byte p1, p0, Lorg/apache/poi/util/ByteField;->_value:B

    return-void
.end method

.method public set(B[B)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/poi/util/ByteField;->set(B)V

    invoke-virtual {p0, p2}, Lorg/apache/poi/util/ByteField;->writeToBytes([B)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-byte v0, p0, Lorg/apache/poi/util/ByteField;->_value:B

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToBytes([B)V
    .locals 2

    iget v0, p0, Lorg/apache/poi/util/ByteField;->_offset:I

    iget-byte v1, p0, Lorg/apache/poi/util/ByteField;->_value:B

    aput-byte v1, p1, v0

    return-void
.end method
