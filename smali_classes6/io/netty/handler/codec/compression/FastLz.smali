.class final Lio/netty/handler/codec/compression/FastLz;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final BLOCK_TYPE_COMPRESSED:B = 0x1t

.field public static final BLOCK_TYPE_NON_COMPRESSED:B = 0x0t

.field public static final BLOCK_WITHOUT_CHECKSUM:B = 0x0t

.field public static final BLOCK_WITH_CHECKSUM:B = 0x10t

.field public static final CHECKSUM_OFFSET:I = 0x4

.field private static final HASH_LOG:I = 0xd

.field private static final HASH_MASK:I = 0x1fff

.field private static final HASH_SIZE:I = 0x2000

.field public static final LEVEL_1:I = 0x1

.field public static final LEVEL_2:I = 0x2

.field public static final LEVEL_AUTO:I = 0x0

.field public static final MAGIC_NUMBER:I = 0x464c5a

.field public static final MAX_CHUNK_LENGTH:I = 0xffff

.field private static final MAX_COPY:I = 0x20

.field private static final MAX_DISTANCE:I = 0x1fff

.field private static final MAX_FARDISTANCE:I = 0x11ffd

.field private static final MAX_LEN:I = 0x108

.field public static final MIN_LENGTH_TO_COMPRESSION:I = 0x20

.field private static final MIN_RECOMENDED_LENGTH_FOR_LEVEL_2:I = 0x10000

.field public static final OPTIONS_OFFSET:I = 0x3


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateOutputBufferLength(I)I
    .locals 4

    int-to-double v0, p0

    const-wide v2, 0x3ff0f5c28f5c28f6L    # 1.06

    mul-double/2addr v0, v2

    double-to-int p0, v0

    const/16 v0, 0x42

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public static compress(Lio/netty/buffer/ByteBuf;IILio/netty/buffer/ByteBuf;II)I
    .locals 25

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p4

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-nez p5, :cond_1

    const/high16 v6, 0x10000

    if-ge v1, v6, :cond_0

    move v6, v5

    goto :goto_0

    :cond_0
    move v6, v4

    goto :goto_0

    :cond_1
    move/from16 v6, p5

    :goto_0
    add-int/lit8 v7, v1, 0x0

    add-int/lit8 v8, v7, -0x2

    add-int/lit8 v7, v7, -0xc

    const/16 v9, 0x2000

    new-array v10, v9, [I

    const/4 v11, 0x4

    const/4 v12, 0x0

    if-ge v1, v11, :cond_4

    if-eqz v1, :cond_3

    add-int/lit8 v4, v3, 0x0

    add-int/lit8 v6, v1, -0x1

    int-to-byte v6, v6

    invoke-virtual {v2, v4, v6}, Lio/netty/buffer/ByteBuf;->setByte(II)Lio/netty/buffer/ByteBuf;

    add-int/2addr v8, v5

    move v4, v5

    :goto_1
    if-gt v12, v8, :cond_2

    add-int/lit8 v6, v4, 0x1

    add-int/2addr v4, v3

    add-int/lit8 v7, v12, 0x1

    add-int v9, p1, v12

    invoke-virtual {v0, v9}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v9

    invoke-virtual {v2, v4, v9}, Lio/netty/buffer/ByteBuf;->setByte(II)Lio/netty/buffer/ByteBuf;

    move v4, v6

    move v12, v7

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v1, 0x1

    return v0

    :cond_3
    return v12

    :cond_4
    move v1, v12

    :goto_2
    if-ge v1, v9, :cond_5

    aput v12, v10, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    add-int/lit8 v1, v3, 0x0

    const/16 v9, 0x1f

    invoke-virtual {v2, v1, v9}, Lio/netty/buffer/ByteBuf;->setByte(II)Lio/netty/buffer/ByteBuf;

    add-int/lit8 v1, v3, 0x1

    add-int/lit8 v11, p1, 0x0

    invoke-virtual {v0, v11}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v11

    invoke-virtual {v2, v1, v11}, Lio/netty/buffer/ByteBuf;->setByte(II)Lio/netty/buffer/ByteBuf;

    add-int/lit8 v1, v3, 0x2

    add-int/lit8 v11, p1, 0x1

    invoke-virtual {v0, v11}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v11

    invoke-virtual {v2, v1, v11}, Lio/netty/buffer/ByteBuf;->setByte(II)Lio/netty/buffer/ByteBuf;

    move v11, v4

    move v14, v11

    const/4 v13, 0x3

    :goto_3
    if-ge v11, v7, :cond_20

    const-wide/16 v16, 0x1

    const-wide/16 v18, 0x0

    if-ne v6, v4, :cond_6

    add-int v1, p1, v11

    invoke-virtual {v0, v1}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v12

    add-int/lit8 v9, v1, -0x1

    invoke-virtual {v0, v9}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v15

    if-ne v12, v15, :cond_6

    invoke-static {v0, v9}, Lio/netty/handler/codec/compression/FastLz;->readU16(Lio/netty/buffer/ByteBuf;I)I

    move-result v9

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lio/netty/handler/codec/compression/FastLz;->readU16(Lio/netty/buffer/ByteBuf;I)I

    move-result v1

    if-ne v9, v1, :cond_6

    add-int/lit8 v1, v11, 0x3

    add-int/lit8 v9, v11, 0x2

    move v12, v5

    move-wide/from16 v20, v16

    goto :goto_4

    :cond_6
    move v1, v11

    move-wide/from16 v20, v18

    const/4 v9, 0x0

    const/4 v12, 0x0

    :goto_4
    const-wide/16 v22, 0x1fff

    if-nez v12, :cond_10

    add-int v9, p1, v1

    invoke-static {v0, v9}, Lio/netty/handler/codec/compression/FastLz;->hashFunction(Lio/netty/buffer/ByteBuf;I)I

    move-result v12

    aget v15, v10, v12

    sub-int v4, v11, v15

    move/from16 v24, v6

    int-to-long v5, v4

    aput v11, v10, v12

    cmp-long v4, v5, v18

    if-eqz v4, :cond_d

    move/from16 v4, v24

    const/4 v12, 0x1

    if-ne v4, v12, :cond_7

    cmp-long v12, v5, v22

    if-ltz v12, :cond_8

    goto/16 :goto_6

    :cond_7
    const-wide/32 v20, 0x11ffd

    cmp-long v12, v5, v20

    if-gez v12, :cond_e

    :cond_8
    add-int/lit8 v12, v15, 0x1

    add-int v15, p1, v15

    invoke-virtual {v0, v15}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v15

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v9}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v9

    if-ne v15, v9, :cond_e

    add-int/lit8 v9, v12, 0x1

    add-int v12, p1, v12

    invoke-virtual {v0, v12}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v12

    add-int/lit8 v15, v1, 0x1

    add-int v1, p1, v1

    invoke-virtual {v0, v1}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v1

    if-ne v12, v1, :cond_e

    add-int/lit8 v1, v9, 0x1

    add-int v9, p1, v9

    invoke-virtual {v0, v9}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v9

    add-int/lit8 v12, v15, 0x1

    add-int v15, p1, v15

    invoke-virtual {v0, v15}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v15

    if-eq v9, v15, :cond_9

    goto :goto_6

    :cond_9
    const/4 v9, 0x2

    if-ne v4, v9, :cond_c

    cmp-long v9, v5, v22

    if-ltz v9, :cond_c

    add-int/lit8 v9, v12, 0x1

    add-int v12, p1, v12

    invoke-virtual {v0, v12}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v12

    add-int/lit8 v15, v1, 0x1

    add-int v1, p1, v1

    invoke-virtual {v0, v1}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v1

    if-ne v12, v1, :cond_b

    add-int v1, p1, v9

    invoke-virtual {v0, v1}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v1

    add-int/lit8 v9, v15, 0x1

    add-int v12, p1, v15

    invoke-virtual {v0, v12}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v12

    if-eq v1, v12, :cond_a

    goto :goto_5

    :cond_a
    const/4 v1, 0x5

    move-wide/from16 v20, v5

    goto :goto_a

    :cond_b
    :goto_5
    add-int/lit8 v1, v13, 0x1

    add-int v5, v3, v13

    add-int/lit8 v6, v11, 0x1

    add-int v9, p1, v11

    invoke-virtual {v0, v9}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v9

    invoke-virtual {v2, v5, v9}, Lio/netty/buffer/ByteBuf;->setByte(II)Lio/netty/buffer/ByteBuf;

    add-int/lit8 v14, v14, 0x1

    const/16 v5, 0x20

    if-ne v14, v5, :cond_f

    goto :goto_7

    :cond_c
    move v9, v1

    move-wide/from16 v20, v5

    goto :goto_9

    :cond_d
    move/from16 v4, v24

    :cond_e
    :goto_6
    add-int/lit8 v1, v13, 0x1

    add-int v5, v3, v13

    add-int/lit8 v6, v11, 0x1

    add-int v9, p1, v11

    invoke-virtual {v0, v9}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v9

    invoke-virtual {v2, v5, v9}, Lio/netty/buffer/ByteBuf;->setByte(II)Lio/netty/buffer/ByteBuf;

    add-int/lit8 v14, v14, 0x1

    const/16 v5, 0x20

    if-ne v14, v5, :cond_f

    :goto_7
    add-int/lit8 v13, v1, 0x1

    add-int/2addr v1, v3

    const/16 v5, 0x1f

    invoke-virtual {v2, v1, v5}, Lio/netty/buffer/ByteBuf;->setByte(II)Lio/netty/buffer/ByteBuf;

    move v9, v5

    move v11, v6

    const/4 v5, 0x1

    const/4 v12, 0x0

    const/4 v14, 0x0

    goto :goto_8

    :cond_f
    move v13, v1

    move v11, v6

    const/4 v5, 0x1

    const/16 v9, 0x1f

    const/4 v12, 0x0

    :goto_8
    move v6, v4

    const/4 v4, 0x2

    goto/16 :goto_3

    :cond_10
    move v4, v6

    :goto_9
    const/4 v1, 0x3

    :goto_a
    add-int/2addr v1, v11

    sub-long v20, v20, v16

    cmp-long v5, v20, v18

    const/16 v6, 0x8

    if-nez v5, :cond_12

    add-int v5, p1, v1

    const/4 v12, 0x1

    sub-int/2addr v5, v12

    invoke-virtual {v0, v5}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v5

    :goto_b
    if-ge v1, v8, :cond_16

    add-int/lit8 v12, v9, 0x1

    add-int v9, p1, v9

    invoke-virtual {v0, v9}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v9

    if-eq v9, v5, :cond_11

    goto :goto_f

    :cond_11
    add-int/lit8 v1, v1, 0x1

    move v9, v12

    goto :goto_b

    :cond_12
    const/4 v5, 0x0

    :goto_c
    if-ge v5, v6, :cond_14

    add-int/lit8 v12, v9, 0x1

    add-int v9, p1, v9

    invoke-virtual {v0, v9}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v9

    add-int/lit8 v15, v1, 0x1

    add-int v1, p1, v1

    invoke-virtual {v0, v1}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v1

    if-eq v9, v1, :cond_13

    move v9, v12

    move v1, v15

    const/4 v5, 0x1

    goto :goto_d

    :cond_13
    add-int/lit8 v5, v5, 0x1

    move v9, v12

    move v1, v15

    goto :goto_c

    :cond_14
    const/4 v5, 0x0

    :goto_d
    if-nez v5, :cond_16

    :goto_e
    if-ge v1, v8, :cond_16

    add-int/lit8 v5, v9, 0x1

    add-int v9, p1, v9

    invoke-virtual {v0, v9}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v9

    add-int/lit8 v12, v1, 0x1

    add-int v1, p1, v1

    invoke-virtual {v0, v1}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v1

    if-eq v9, v1, :cond_15

    move v1, v12

    goto :goto_f

    :cond_15
    move v9, v5

    move v1, v12

    goto :goto_e

    :cond_16
    :goto_f
    if-eqz v14, :cond_17

    add-int v5, v3, v13

    sub-int/2addr v5, v14

    const/4 v9, 0x1

    sub-int/2addr v5, v9

    add-int/lit8 v14, v14, -0x1

    int-to-byte v9, v14

    invoke-virtual {v2, v5, v9}, Lio/netty/buffer/ByteBuf;->setByte(II)Lio/netty/buffer/ByteBuf;

    goto :goto_10

    :cond_17
    add-int/lit8 v13, v13, -0x1

    :goto_10
    const/4 v5, -0x3

    add-int/2addr v1, v5

    sub-int v9, v1, v11

    const/4 v14, 0x7

    const-wide/16 v15, 0xff

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1d

    cmp-long v5, v20, v22

    if-gez v5, :cond_1a

    add-int/lit8 v5, v13, 0x1

    if-ge v9, v14, :cond_18

    add-int v11, v3, v13

    shl-int/lit8 v9, v9, 0x5

    int-to-long v12, v9

    ushr-long v17, v20, v6

    add-long v12, v12, v17

    long-to-int v6, v12

    int-to-byte v6, v6

    invoke-virtual {v2, v11, v6}, Lio/netty/buffer/ByteBuf;->setByte(II)Lio/netty/buffer/ByteBuf;

    goto/16 :goto_14

    :cond_18
    add-int/2addr v13, v3

    ushr-long v22, v20, v6

    const-wide/16 v17, 0xe0

    add-long v11, v22, v17

    long-to-int v6, v11

    int-to-byte v6, v6

    invoke-virtual {v2, v13, v6}, Lio/netty/buffer/ByteBuf;->setByte(II)Lio/netty/buffer/ByteBuf;

    add-int/lit8 v9, v9, -0x7

    :goto_11
    const/16 v6, 0xff

    if-lt v9, v6, :cond_19

    add-int/lit8 v6, v5, 0x1

    add-int/2addr v5, v3

    const/4 v11, -0x1

    invoke-virtual {v2, v5, v11}, Lio/netty/buffer/ByteBuf;->setByte(II)Lio/netty/buffer/ByteBuf;

    add-int/lit16 v9, v9, -0xff

    move v5, v6

    goto :goto_11

    :cond_19
    add-int/lit8 v6, v5, 0x1

    add-int/2addr v5, v3

    goto/16 :goto_16

    :cond_1a
    sub-long v20, v20, v22

    add-int/lit8 v5, v13, 0x1

    add-int v11, v3, v13

    if-ge v9, v14, :cond_1b

    shl-int/lit8 v9, v9, 0x5

    const/16 v12, 0x1f

    add-int/2addr v9, v12

    int-to-byte v9, v9

    invoke-virtual {v2, v11, v9}, Lio/netty/buffer/ByteBuf;->setByte(II)Lio/netty/buffer/ByteBuf;

    add-int/lit8 v9, v5, 0x1

    add-int/2addr v5, v3

    const/4 v11, -0x1

    invoke-virtual {v2, v5, v11}, Lio/netty/buffer/ByteBuf;->setByte(II)Lio/netty/buffer/ByteBuf;

    add-int/lit8 v5, v9, 0x1

    add-int/2addr v9, v3

    ushr-long v11, v20, v6

    long-to-int v6, v11

    int-to-byte v6, v6

    invoke-virtual {v2, v9, v6}, Lio/netty/buffer/ByteBuf;->setByte(II)Lio/netty/buffer/ByteBuf;

    goto/16 :goto_14

    :cond_1b
    const/4 v12, -0x1

    invoke-virtual {v2, v11, v12}, Lio/netty/buffer/ByteBuf;->setByte(II)Lio/netty/buffer/ByteBuf;

    add-int/lit8 v9, v9, -0x7

    const/16 v11, 0xff

    :goto_12
    if-lt v9, v11, :cond_1c

    add-int/lit8 v13, v5, 0x1

    add-int/2addr v5, v3

    invoke-virtual {v2, v5, v12}, Lio/netty/buffer/ByteBuf;->setByte(II)Lio/netty/buffer/ByteBuf;

    add-int/lit16 v9, v9, -0xff

    move v5, v13

    const/4 v12, -0x1

    goto :goto_12

    :cond_1c
    add-int/lit8 v11, v5, 0x1

    add-int/2addr v5, v3

    int-to-byte v9, v9

    invoke-virtual {v2, v5, v9}, Lio/netty/buffer/ByteBuf;->setByte(II)Lio/netty/buffer/ByteBuf;

    add-int/lit8 v5, v11, 0x1

    add-int v9, v3, v11

    const/4 v11, -0x1

    invoke-virtual {v2, v9, v11}, Lio/netty/buffer/ByteBuf;->setByte(II)Lio/netty/buffer/ByteBuf;

    add-int/lit8 v9, v5, 0x1

    add-int/2addr v5, v3

    ushr-long v11, v20, v6

    long-to-int v6, v11

    int-to-byte v6, v6

    invoke-virtual {v2, v5, v6}, Lio/netty/buffer/ByteBuf;->setByte(II)Lio/netty/buffer/ByteBuf;

    add-int/lit8 v6, v9, 0x1

    add-int v5, v3, v9

    goto :goto_15

    :cond_1d
    const/16 v5, 0x106

    if-le v9, v5, :cond_1e

    :goto_13
    if-le v9, v5, :cond_1e

    add-int/lit8 v11, v13, 0x1

    add-int v12, v3, v13

    ushr-long v22, v20, v6

    const-wide/16 v18, 0xe0

    add-long v5, v22, v18

    long-to-int v5, v5

    int-to-byte v5, v5

    invoke-virtual {v2, v12, v5}, Lio/netty/buffer/ByteBuf;->setByte(II)Lio/netty/buffer/ByteBuf;

    add-int/lit8 v5, v11, 0x1

    add-int v6, v3, v11

    const/4 v11, -0x3

    invoke-virtual {v2, v6, v11}, Lio/netty/buffer/ByteBuf;->setByte(II)Lio/netty/buffer/ByteBuf;

    add-int/lit8 v13, v5, 0x1

    add-int/2addr v5, v3

    and-long v11, v20, v15

    long-to-int v6, v11

    int-to-byte v6, v6

    invoke-virtual {v2, v5, v6}, Lio/netty/buffer/ByteBuf;->setByte(II)Lio/netty/buffer/ByteBuf;

    add-int/lit16 v9, v9, -0x106

    const/16 v5, 0x106

    const/16 v6, 0x8

    goto :goto_13

    :cond_1e
    add-int/lit8 v5, v13, 0x1

    add-int v6, v3, v13

    if-ge v9, v14, :cond_1f

    shl-int/lit8 v9, v9, 0x5

    int-to-long v11, v9

    const/16 v9, 0x8

    ushr-long v13, v20, v9

    add-long/2addr v11, v13

    long-to-int v9, v11

    int-to-byte v9, v9

    invoke-virtual {v2, v6, v9}, Lio/netty/buffer/ByteBuf;->setByte(II)Lio/netty/buffer/ByteBuf;

    :goto_14
    add-int/lit8 v6, v5, 0x1

    add-int/2addr v5, v3

    :goto_15
    and-long v11, v20, v15

    long-to-int v9, v11

    int-to-byte v9, v9

    invoke-virtual {v2, v5, v9}, Lio/netty/buffer/ByteBuf;->setByte(II)Lio/netty/buffer/ByteBuf;

    goto :goto_17

    :cond_1f
    const/16 v11, 0x8

    ushr-long v11, v20, v11

    const-wide/16 v13, 0xe0

    add-long/2addr v11, v13

    long-to-int v11, v11

    int-to-byte v11, v11

    invoke-virtual {v2, v6, v11}, Lio/netty/buffer/ByteBuf;->setByte(II)Lio/netty/buffer/ByteBuf;

    add-int/lit8 v6, v5, 0x1

    add-int/2addr v5, v3

    add-int/lit8 v9, v9, -0x7

    :goto_16
    int-to-byte v9, v9

    invoke-virtual {v2, v5, v9}, Lio/netty/buffer/ByteBuf;->setByte(II)Lio/netty/buffer/ByteBuf;

    add-int/lit8 v5, v6, 0x1

    add-int/2addr v6, v3

    and-long v11, v20, v15

    long-to-int v9, v11

    int-to-byte v9, v9

    invoke-virtual {v2, v6, v9}, Lio/netty/buffer/ByteBuf;->setByte(II)Lio/netty/buffer/ByteBuf;

    move v6, v5

    :goto_17
    add-int v5, p1, v1

    invoke-static {v0, v5}, Lio/netty/handler/codec/compression/FastLz;->hashFunction(Lio/netty/buffer/ByteBuf;I)I

    move-result v5

    add-int/lit8 v9, v1, 0x1

    aput v1, v10, v5

    add-int v1, p1, v9

    invoke-static {v0, v1}, Lio/netty/handler/codec/compression/FastLz;->hashFunction(Lio/netty/buffer/ByteBuf;I)I

    move-result v1

    add-int/lit8 v11, v9, 0x1

    aput v9, v10, v1

    add-int/lit8 v13, v6, 0x1

    add-int v1, v3, v6

    const/16 v5, 0x1f

    invoke-virtual {v2, v1, v5}, Lio/netty/buffer/ByteBuf;->setByte(II)Lio/netty/buffer/ByteBuf;

    move v6, v4

    move v9, v5

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v12, 0x0

    const/4 v14, 0x0

    goto/16 :goto_3

    :cond_20
    move v1, v5

    move v4, v6

    add-int/2addr v8, v1

    :goto_18
    if-gt v11, v8, :cond_22

    add-int/lit8 v1, v13, 0x1

    add-int v5, v3, v13

    add-int/lit8 v6, v11, 0x1

    add-int v7, p1, v11

    invoke-virtual {v0, v7}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v7

    invoke-virtual {v2, v5, v7}, Lio/netty/buffer/ByteBuf;->setByte(II)Lio/netty/buffer/ByteBuf;

    add-int/lit8 v14, v14, 0x1

    const/16 v5, 0x20

    if-ne v14, v5, :cond_21

    add-int/lit8 v13, v1, 0x1

    add-int/2addr v1, v3

    const/16 v5, 0x1f

    invoke-virtual {v2, v1, v5}, Lio/netty/buffer/ByteBuf;->setByte(II)Lio/netty/buffer/ByteBuf;

    move v11, v6

    const/4 v14, 0x0

    goto :goto_18

    :cond_21
    move v13, v1

    move v11, v6

    goto :goto_18

    :cond_22
    if-eqz v14, :cond_23

    add-int v0, v3, v13

    sub-int/2addr v0, v14

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    sub-int/2addr v14, v1

    int-to-byte v1, v14

    invoke-virtual {v2, v0, v1}, Lio/netty/buffer/ByteBuf;->setByte(II)Lio/netty/buffer/ByteBuf;

    goto :goto_19

    :cond_23
    add-int/lit8 v13, v13, -0x1

    :goto_19
    const/4 v0, 0x2

    if-ne v4, v0, :cond_24

    invoke-virtual/range {p3 .. p4}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v0

    const/16 v1, 0x20

    or-int/2addr v0, v1

    invoke-virtual {v2, v3, v0}, Lio/netty/buffer/ByteBuf;->setByte(II)Lio/netty/buffer/ByteBuf;

    :cond_24
    return v13
.end method

.method public static decompress(Lio/netty/buffer/ByteBuf;IILio/netty/buffer/ByteBuf;II)I
    .locals 29

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p5

    invoke-virtual/range {p0 .. p1}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v4

    const/4 v5, 0x5

    shr-int/2addr v4, v5

    const/4 v6, 0x1

    add-int/2addr v4, v6

    const/4 v7, 0x0

    if-eq v4, v6, :cond_1

    const/4 v8, 0x2

    if-ne v4, v8, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lio/netty/handler/codec/compression/DecompressionException;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v8

    const-string v2, "invalid level: %d (expected: %d or %d)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/netty/handler/codec/compression/DecompressionException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    add-int/lit8 v8, p1, 0x0

    invoke-virtual {v0, v8}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v8

    and-int/lit8 v8, v8, 0x1f

    int-to-long v8, v8

    move v11, v6

    move v12, v11

    move v10, v7

    :goto_1
    shr-long v13, v8, v5

    const-wide/16 v15, 0x1f

    and-long/2addr v15, v8

    const/16 v17, 0x8

    shl-long v15, v15, v17

    const-wide/16 v18, 0x20

    cmp-long v18, v8, v18

    const-wide/16 v19, 0x0

    const-wide/16 v21, 0x1

    if-ltz v18, :cond_d

    sub-long v13, v13, v21

    move-wide/from16 v23, v8

    int-to-long v7, v10

    sub-long v5, v7, v15

    long-to-int v5, v5

    const-wide/16 v25, 0x6

    cmp-long v6, v13, v25

    if-nez v6, :cond_4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_2

    add-int/lit8 v6, v11, 0x1

    add-int v11, p1, v11

    invoke-virtual {v0, v11}, Lio/netty/buffer/ByteBuf;->getUnsignedByte(I)S

    move-result v11

    move/from16 v26, v10

    int-to-long v9, v11

    add-long/2addr v13, v9

    move v11, v6

    goto :goto_2

    :cond_2
    move/from16 v26, v10

    :cond_3
    add-int/lit8 v6, v11, 0x1

    add-int v9, p1, v11

    invoke-virtual {v0, v9}, Lio/netty/buffer/ByteBuf;->getUnsignedByte(I)S

    move-result v9

    int-to-long v10, v9

    add-long/2addr v13, v10

    const/16 v10, 0xff

    move v11, v6

    if-eq v9, v10, :cond_3

    goto :goto_2

    :cond_4
    move/from16 v26, v10

    :goto_2
    const/4 v6, 0x1

    if-ne v4, v6, :cond_6

    add-int/lit8 v6, v11, 0x1

    add-int v9, p1, v11

    invoke-virtual {v0, v9}, Lio/netty/buffer/ByteBuf;->getUnsignedByte(I)S

    move-result v9

    sub-int/2addr v5, v9

    :cond_5
    move v15, v4

    goto :goto_3

    :cond_6
    add-int/lit8 v6, v11, 0x1

    add-int v9, p1, v11

    invoke-virtual {v0, v9}, Lio/netty/buffer/ByteBuf;->getUnsignedByte(I)S

    move-result v9

    sub-int/2addr v5, v9

    const/16 v10, 0xff

    if-ne v9, v10, :cond_5

    const-wide/16 v9, 0x1f00

    cmp-long v9, v15, v9

    if-nez v9, :cond_5

    add-int/lit8 v5, v6, 0x1

    add-int v6, p1, v6

    invoke-virtual {v0, v6}, Lio/netty/buffer/ByteBuf;->getUnsignedByte(I)S

    move-result v6

    shl-int/lit8 v6, v6, 0x8

    int-to-long v9, v6

    add-int/lit8 v6, v5, 0x1

    add-int v5, p1, v5

    invoke-virtual {v0, v5}, Lio/netty/buffer/ByteBuf;->getUnsignedByte(I)S

    move-result v5

    move v15, v4

    int-to-long v4, v5

    add-long/2addr v9, v4

    sub-long v4, v7, v9

    const-wide/16 v9, 0x1fff

    sub-long/2addr v4, v9

    long-to-int v5, v4

    :goto_3
    add-long/2addr v7, v13

    const-wide/16 v9, 0x3

    add-long/2addr v7, v9

    int-to-long v9, v3

    cmp-long v4, v7, v9

    if-lez v4, :cond_7

    const/4 v4, 0x0

    return v4

    :cond_7
    const/4 v4, 0x0

    add-int/lit8 v7, v5, -0x1

    if-gez v7, :cond_8

    return v4

    :cond_8
    if-ge v6, v1, :cond_9

    add-int/lit8 v4, v6, 0x1

    add-int v6, p1, v6

    invoke-virtual {v0, v6}, Lio/netty/buffer/ByteBuf;->getUnsignedByte(I)S

    move-result v6

    int-to-long v8, v6

    move v6, v4

    move/from16 v7, v26

    goto :goto_4

    :cond_9
    move-wide/from16 v8, v23

    move/from16 v7, v26

    const/4 v12, 0x0

    :goto_4
    if-ne v5, v7, :cond_b

    add-int v4, p4, v5

    const/4 v10, 0x1

    sub-int/2addr v4, v10

    invoke-virtual {v2, v4}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v4

    add-int/lit8 v5, v7, 0x1

    add-int v7, p4, v7

    invoke-virtual {v2, v7, v4}, Lio/netty/buffer/ByteBuf;->setByte(II)Lio/netty/buffer/ByteBuf;

    add-int/lit8 v7, v5, 0x1

    add-int v5, p4, v5

    invoke-virtual {v2, v5, v4}, Lio/netty/buffer/ByteBuf;->setByte(II)Lio/netty/buffer/ByteBuf;

    add-int/lit8 v5, v7, 0x1

    add-int v7, p4, v7

    invoke-virtual {v2, v7, v4}, Lio/netty/buffer/ByteBuf;->setByte(II)Lio/netty/buffer/ByteBuf;

    :goto_5
    cmp-long v7, v13, v19

    if-eqz v7, :cond_a

    add-int/lit8 v7, v5, 0x1

    add-int v5, p4, v5

    invoke-virtual {v2, v5, v4}, Lio/netty/buffer/ByteBuf;->setByte(II)Lio/netty/buffer/ByteBuf;

    sub-long v13, v13, v21

    move v5, v7

    goto :goto_5

    :cond_a
    move v4, v5

    goto :goto_7

    :cond_b
    const/4 v10, 0x1

    add-int/lit8 v5, v5, -0x1

    add-int/lit8 v4, v7, 0x1

    add-int v7, p4, v7

    add-int/lit8 v11, v5, 0x1

    add-int v5, p4, v5

    invoke-virtual {v2, v5}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v5

    invoke-virtual {v2, v7, v5}, Lio/netty/buffer/ByteBuf;->setByte(II)Lio/netty/buffer/ByteBuf;

    add-int/lit8 v5, v4, 0x1

    add-int v4, p4, v4

    add-int/lit8 v7, v11, 0x1

    add-int v11, p4, v11

    invoke-virtual {v2, v11}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v11

    invoke-virtual {v2, v4, v11}, Lio/netty/buffer/ByteBuf;->setByte(II)Lio/netty/buffer/ByteBuf;

    add-int/lit8 v4, v5, 0x1

    add-int v5, p4, v5

    add-int/lit8 v11, v7, 0x1

    add-int v7, p4, v7

    invoke-virtual {v2, v7}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v7

    invoke-virtual {v2, v5, v7}, Lio/netty/buffer/ByteBuf;->setByte(II)Lio/netty/buffer/ByteBuf;

    :goto_6
    cmp-long v5, v13, v19

    if-eqz v5, :cond_c

    add-int/lit8 v5, v4, 0x1

    add-int v4, p4, v4

    add-int/lit8 v7, v11, 0x1

    add-int v11, p4, v11

    invoke-virtual {v2, v11}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v11

    invoke-virtual {v2, v4, v11}, Lio/netty/buffer/ByteBuf;->setByte(II)Lio/netty/buffer/ByteBuf;

    sub-long v13, v13, v21

    move v4, v5

    move v11, v7

    goto :goto_6

    :cond_c
    :goto_7
    move v11, v6

    const/4 v6, 0x0

    goto/16 :goto_a

    :cond_d
    move v15, v4

    move-wide/from16 v23, v8

    move v7, v10

    move v10, v6

    add-long v8, v23, v21

    int-to-long v4, v7

    add-long/2addr v4, v8

    int-to-long v12, v3

    cmp-long v4, v4, v12

    const/4 v6, 0x0

    if-lez v4, :cond_e

    return v6

    :cond_e
    int-to-long v4, v11

    add-long/2addr v4, v8

    int-to-long v12, v1

    cmp-long v4, v4, v12

    if-lez v4, :cond_f

    return v6

    :cond_f
    add-int/lit8 v4, v7, 0x1

    add-int v5, p4, v7

    add-int/lit8 v7, v11, 0x1

    add-int v11, p1, v11

    invoke-virtual {v0, v11}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v11

    invoke-virtual {v2, v5, v11}, Lio/netty/buffer/ByteBuf;->setByte(II)Lio/netty/buffer/ByteBuf;

    sub-long v8, v8, v21

    :goto_8
    cmp-long v5, v8, v19

    if-eqz v5, :cond_10

    add-int/lit8 v5, v4, 0x1

    add-int v4, p4, v4

    add-int/lit8 v11, v7, 0x1

    add-int v7, p1, v7

    invoke-virtual {v0, v7}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v7

    invoke-virtual {v2, v4, v7}, Lio/netty/buffer/ByteBuf;->setByte(II)Lio/netty/buffer/ByteBuf;

    sub-long v8, v8, v21

    move v4, v5

    move v7, v11

    goto :goto_8

    :cond_10
    if-ge v7, v1, :cond_11

    move v5, v10

    goto :goto_9

    :cond_11
    move v5, v6

    :goto_9
    if-eqz v5, :cond_12

    add-int/lit8 v8, v7, 0x1

    add-int v7, p1, v7

    invoke-virtual {v0, v7}, Lio/netty/buffer/ByteBuf;->getUnsignedByte(I)S

    move-result v7

    int-to-long v11, v7

    move-wide/from16 v27, v11

    move v12, v5

    move v11, v8

    move-wide/from16 v8, v27

    goto :goto_a

    :cond_12
    move v12, v5

    move v11, v7

    :goto_a
    if-nez v12, :cond_13

    return v4

    :cond_13
    move v7, v6

    move v6, v10

    const/4 v5, 0x5

    move v10, v4

    move v4, v15

    goto/16 :goto_1
.end method

.method private static hashFunction(Lio/netty/buffer/ByteBuf;I)I
    .locals 1

    invoke-static {p0, p1}, Lio/netty/handler/codec/compression/FastLz;->readU16(Lio/netty/buffer/ByteBuf;I)I

    move-result v0

    add-int/lit8 p1, p1, 0x1

    invoke-static {p0, p1}, Lio/netty/handler/codec/compression/FastLz;->readU16(Lio/netty/buffer/ByteBuf;I)I

    move-result p0

    shr-int/lit8 p1, v0, 0x3

    xor-int/2addr p0, p1

    xor-int/2addr p0, v0

    and-int/lit16 p0, p0, 0x1fff

    return p0
.end method

.method private static readU16(Lio/netty/buffer/ByteBuf;I)I
    .locals 2

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v1

    if-lt v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lio/netty/buffer/ByteBuf;->getUnsignedByte(I)S

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0, v0}, Lio/netty/buffer/ByteBuf;->getUnsignedByte(I)S

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    invoke-virtual {p0, p1}, Lio/netty/buffer/ByteBuf;->getUnsignedByte(I)S

    move-result p0

    or-int/2addr p0, v0

    return p0
.end method
