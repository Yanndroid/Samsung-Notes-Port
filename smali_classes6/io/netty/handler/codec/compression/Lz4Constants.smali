.class final Lio/netty/handler/codec/compression/Lz4Constants;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final BLOCK_TYPE_COMPRESSED:I = 0x20

.field public static final BLOCK_TYPE_NON_COMPRESSED:I = 0x10

.field public static final CHECKSUM_OFFSET:I = 0x11

.field public static final COMPRESSED_LENGTH_OFFSET:I = 0x9

.field public static final COMPRESSION_LEVEL_BASE:I = 0xa

.field public static final DECOMPRESSED_LENGTH_OFFSET:I = 0xd

.field public static final DEFAULT_BLOCK_SIZE:I = 0x10000

.field public static final DEFAULT_SEED:I = -0x68b84d74

.field public static final HEADER_LENGTH:I = 0x15

.field public static final MAGIC_NUMBER:J = 0x4c5a34426c6f636bL

.field public static final MAX_BLOCK_SIZE:I = 0x2000000

.field public static final MIN_BLOCK_SIZE:I = 0x40

.field public static final THREAD_POOL_DELAY_SECONDS:I = 0xa

.field public static final TOKEN_OFFSET:I = 0x8


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
