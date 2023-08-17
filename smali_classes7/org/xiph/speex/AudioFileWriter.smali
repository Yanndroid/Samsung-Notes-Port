.class public abstract Lorg/xiph/speex/AudioFileWriter;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildOggPageHeader(IJIII[B)[B
    .locals 10

    add-int/lit8 v0, p5, 0x1b

    new-array v9, v0, [B

    const/4 v1, 0x0

    move-object v0, v9

    move v2, p0

    move-wide v3, p1

    move v5, p3

    move v6, p4

    move v7, p5

    move-object/from16 v8, p6

    invoke-static/range {v0 .. v8}, Lorg/xiph/speex/AudioFileWriter;->writeOggPageHeader([BIIJIII[B)I

    return-object v9
.end method

.method public static buildSpeexComment(Ljava/lang/String;)[B
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    new-array v0, v0, [B

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Lorg/xiph/speex/AudioFileWriter;->writeSpeexComment([BILjava/lang/String;)I

    return-object v0
.end method

.method public static buildSpeexHeader(IIIZI)[B
    .locals 8

    const/16 v0, 0x50

    new-array v0, v0, [B

    const/4 v2, 0x0

    move-object v1, v0

    move v3, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-static/range {v1 .. v7}, Lorg/xiph/speex/AudioFileWriter;->writeSpeexHeader([BIIIIZI)I

    return-object v0
.end method

.method public static writeInt(Ljava/io/DataOutput;I)V
    .locals 1

    and-int/lit16 v0, p1, 0xff

    invoke-interface {p0, v0}, Ljava/io/DataOutput;->writeByte(I)V

    ushr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-interface {p0, v0}, Ljava/io/DataOutput;->writeByte(I)V

    ushr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    invoke-interface {p0, v0}, Ljava/io/DataOutput;->writeByte(I)V

    ushr-int/lit8 p1, p1, 0x18

    and-int/lit16 p1, p1, 0xff

    invoke-interface {p0, p1}, Ljava/io/DataOutput;->writeByte(I)V

    return-void
.end method

.method public static writeInt(Ljava/io/OutputStream;I)V
    .locals 1

    and-int/lit16 v0, p1, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    ushr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    ushr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    ushr-int/lit8 p1, p1, 0x18

    and-int/lit16 p1, p1, 0xff

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public static writeInt([BII)V
    .locals 2

    and-int/lit16 v0, p2, 0xff

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    add-int/lit8 v0, p1, 0x1

    ushr-int/lit8 v1, p2, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, p1, 0x2

    ushr-int/lit8 v1, p2, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 p1, p1, 0x3

    ushr-int/lit8 p2, p2, 0x18

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    aput-byte p2, p0, p1

    return-void
.end method

.method public static writeLong(Ljava/io/OutputStream;J)V
    .locals 4

    const-wide/16 v0, 0xff

    and-long v2, p1, v0

    long-to-int v2, v2

    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write(I)V

    const/16 v2, 0x8

    ushr-long v2, p1, v2

    and-long/2addr v2, v0

    long-to-int v2, v2

    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write(I)V

    const/16 v2, 0x10

    ushr-long v2, p1, v2

    and-long/2addr v2, v0

    long-to-int v2, v2

    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write(I)V

    const/16 v2, 0x18

    ushr-long v2, p1, v2

    and-long/2addr v2, v0

    long-to-int v2, v2

    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write(I)V

    const/16 v2, 0x20

    ushr-long v2, p1, v2

    and-long/2addr v2, v0

    long-to-int v2, v2

    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write(I)V

    const/16 v2, 0x28

    ushr-long v2, p1, v2

    and-long/2addr v2, v0

    long-to-int v2, v2

    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write(I)V

    const/16 v2, 0x30

    ushr-long v2, p1, v2

    and-long/2addr v2, v0

    long-to-int v2, v2

    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write(I)V

    const/16 v2, 0x38

    ushr-long/2addr p1, v2

    and-long/2addr p1, v0

    long-to-int p1, p1

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public static writeLong([BIJ)V
    .locals 5

    const-wide/16 v0, 0xff

    and-long v2, p2, v0

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, p0, p1

    add-int/lit8 v2, p1, 0x1

    const/16 v3, 0x8

    ushr-long v3, p2, v3

    and-long/2addr v3, v0

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, p0, v2

    add-int/lit8 v2, p1, 0x2

    const/16 v3, 0x10

    ushr-long v3, p2, v3

    and-long/2addr v3, v0

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, p0, v2

    add-int/lit8 v2, p1, 0x3

    const/16 v3, 0x18

    ushr-long v3, p2, v3

    and-long/2addr v3, v0

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, p0, v2

    add-int/lit8 v2, p1, 0x4

    const/16 v3, 0x20

    ushr-long v3, p2, v3

    and-long/2addr v3, v0

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, p0, v2

    add-int/lit8 v2, p1, 0x5

    const/16 v3, 0x28

    ushr-long v3, p2, v3

    and-long/2addr v3, v0

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, p0, v2

    add-int/lit8 v2, p1, 0x6

    const/16 v3, 0x30

    ushr-long v3, p2, v3

    and-long/2addr v3, v0

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, p0, v2

    add-int/lit8 p1, p1, 0x7

    const/16 v2, 0x38

    ushr-long/2addr p2, v2

    and-long/2addr p2, v0

    long-to-int p2, p2

    int-to-byte p2, p2

    aput-byte p2, p0, p1

    return-void
.end method

.method public static writeOggPageHeader([BIIJIII[B)I
    .locals 2

    const-string v0, "OggS"

    invoke-static {p0, p1, v0}, Lorg/xiph/speex/AudioFileWriter;->writeString([BILjava/lang/String;)V

    add-int/lit8 v0, p1, 0x4

    const/4 v1, 0x0

    aput-byte v1, p0, v0

    add-int/lit8 v0, p1, 0x5

    int-to-byte p2, p2

    aput-byte p2, p0, v0

    add-int/lit8 p2, p1, 0x6

    invoke-static {p0, p2, p3, p4}, Lorg/xiph/speex/AudioFileWriter;->writeLong([BIJ)V

    add-int/lit8 p2, p1, 0xe

    invoke-static {p0, p2, p5}, Lorg/xiph/speex/AudioFileWriter;->writeInt([BII)V

    add-int/lit8 p2, p1, 0x12

    invoke-static {p0, p2, p6}, Lorg/xiph/speex/AudioFileWriter;->writeInt([BII)V

    add-int/lit8 p2, p1, 0x16

    invoke-static {p0, p2, v1}, Lorg/xiph/speex/AudioFileWriter;->writeInt([BII)V

    add-int/lit8 p2, p1, 0x1a

    int-to-byte p3, p7

    aput-byte p3, p0, p2

    add-int/lit8 p1, p1, 0x1b

    invoke-static {p8, v1, p0, p1, p7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 p7, p7, 0x1b

    return p7
.end method

.method public static writeShort(Ljava/io/DataOutput;S)V
    .locals 1

    and-int/lit16 v0, p1, 0xff

    invoke-interface {p0, v0}, Ljava/io/DataOutput;->writeByte(I)V

    ushr-int/lit8 p1, p1, 0x8

    and-int/lit16 p1, p1, 0xff

    invoke-interface {p0, p1}, Ljava/io/DataOutput;->writeByte(I)V

    return-void
.end method

.method public static writeShort(Ljava/io/OutputStream;S)V
    .locals 1

    and-int/lit16 v0, p1, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    ushr-int/lit8 p1, p1, 0x8

    and-int/lit16 p1, p1, 0xff

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public static writeShort([BII)V
    .locals 1

    and-int/lit16 v0, p2, 0xff

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    add-int/lit8 p1, p1, 0x1

    ushr-int/lit8 p2, p2, 0x8

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    aput-byte p2, p0, p1

    return-void
.end method

.method public static writeSpeexComment([BILjava/lang/String;)I
    .locals 2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {p0, p1, v0}, Lorg/xiph/speex/AudioFileWriter;->writeInt([BII)V

    add-int/lit8 v1, p1, 0x4

    invoke-static {p0, v1, p2}, Lorg/xiph/speex/AudioFileWriter;->writeString([BILjava/lang/String;)V

    add-int/2addr p1, v0

    add-int/lit8 p1, p1, 0x4

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Lorg/xiph/speex/AudioFileWriter;->writeInt([BII)V

    add-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public static writeSpeexHeader([BIIIIZI)I
    .locals 4

    const-string v0, "Speex   "

    invoke-static {p0, p1, v0}, Lorg/xiph/speex/AudioFileWriter;->writeString([BILjava/lang/String;)V

    add-int/lit8 v0, p1, 0x8

    const-string v1, "speex-1.0"

    invoke-static {p0, v0, v1}, Lorg/xiph/speex/AudioFileWriter;->writeString([BILjava/lang/String;)V

    const/16 v0, 0xb

    new-array v1, v0, [B

    add-int/lit8 v2, p1, 0x11

    const/4 v3, 0x0

    invoke-static {v1, v3, p0, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, p1, 0x1c

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lorg/xiph/speex/AudioFileWriter;->writeInt([BII)V

    add-int/lit8 v0, p1, 0x20

    const/16 v1, 0x50

    invoke-static {p0, v0, v1}, Lorg/xiph/speex/AudioFileWriter;->writeInt([BII)V

    add-int/lit8 v0, p1, 0x24

    invoke-static {p0, v0, p2}, Lorg/xiph/speex/AudioFileWriter;->writeInt([BII)V

    add-int/lit8 p2, p1, 0x28

    invoke-static {p0, p2, p3}, Lorg/xiph/speex/AudioFileWriter;->writeInt([BII)V

    add-int/lit8 p2, p1, 0x2c

    const/4 v0, 0x4

    invoke-static {p0, p2, v0}, Lorg/xiph/speex/AudioFileWriter;->writeInt([BII)V

    add-int/lit8 p2, p1, 0x30

    invoke-static {p0, p2, p4}, Lorg/xiph/speex/AudioFileWriter;->writeInt([BII)V

    add-int/lit8 p2, p1, 0x34

    const/4 p4, -0x1

    invoke-static {p0, p2, p4}, Lorg/xiph/speex/AudioFileWriter;->writeInt([BII)V

    add-int/lit8 p2, p1, 0x38

    const/16 p4, 0xa0

    shl-int p3, p4, p3

    invoke-static {p0, p2, p3}, Lorg/xiph/speex/AudioFileWriter;->writeInt([BII)V

    add-int/lit8 p2, p1, 0x3c

    invoke-static {p0, p2, p5}, Lorg/xiph/speex/AudioFileWriter;->writeInt([BII)V

    add-int/lit8 p2, p1, 0x40

    invoke-static {p0, p2, p6}, Lorg/xiph/speex/AudioFileWriter;->writeInt([BII)V

    add-int/lit8 p2, p1, 0x44

    invoke-static {p0, p2, v3}, Lorg/xiph/speex/AudioFileWriter;->writeInt([BII)V

    add-int/lit8 p2, p1, 0x48

    invoke-static {p0, p2, v3}, Lorg/xiph/speex/AudioFileWriter;->writeInt([BII)V

    add-int/lit8 p1, p1, 0x4c

    invoke-static {p0, p1, v3}, Lorg/xiph/speex/AudioFileWriter;->writeInt([BII)V

    return v1
.end method

.method public static writeString([BILjava/lang/String;)V
    .locals 2

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    array-length v0, p2

    const/4 v1, 0x0

    invoke-static {p2, v1, p0, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method


# virtual methods
.method public abstract close()V
.end method

.method public abstract open(Ljava/io/File;)V
.end method

.method public abstract open(Ljava/lang/String;)V
.end method

.method public abstract writeHeader(Ljava/lang/String;)V
.end method

.method public abstract writePacket([BII)V
.end method
