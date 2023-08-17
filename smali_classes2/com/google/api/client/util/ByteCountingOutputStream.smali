.class final Lcom/google/api/client/util/ByteCountingOutputStream;
.super Ljava/io/OutputStream;
.source "SourceFile"


# instance fields
.field public count:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public write(I)V
    .locals 4

    iget-wide v0, p0, Lcom/google/api/client/util/ByteCountingOutputStream;->count:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/api/client/util/ByteCountingOutputStream;->count:J

    return-void
.end method

.method public write([BII)V
    .locals 2

    iget-wide p1, p0, Lcom/google/api/client/util/ByteCountingOutputStream;->count:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/google/api/client/util/ByteCountingOutputStream;->count:J

    return-void
.end method
