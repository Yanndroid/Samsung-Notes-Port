.class final Lio/netty/buffer/ByteBufUtil$SWARByteSearch;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/buffer/ByteBufUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SWARByteSearch"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$200(B)J
    .locals 2

    invoke-static {p0}, Lio/netty/buffer/ByteBufUtil$SWARByteSearch;->compilePattern(B)J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic access$300(JJZ)I
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lio/netty/buffer/ByteBufUtil$SWARByteSearch;->firstAnyPattern(JJZ)I

    move-result p0

    return p0
.end method

.method private static compilePattern(B)J
    .locals 4

    int-to-long v0, p0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    const-wide v2, 0x101010101010101L

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method private static firstAnyPattern(JJZ)I
    .locals 2

    xor-long/2addr p0, p2

    const-wide p2, 0x7f7f7f7f7f7f7f7fL    # 1.3824172084878715E306

    and-long v0, p0, p2

    add-long/2addr v0, p2

    or-long/2addr p0, v0

    or-long/2addr p0, p2

    not-long p0, p0

    if-eqz p4, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result p0

    :goto_0
    ushr-int/lit8 p0, p0, 0x3

    return p0
.end method
