.class public Lio/netty/buffer/search/KmpSearchProcessorFactory$Processor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/buffer/search/SearchProcessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/buffer/search/KmpSearchProcessorFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Processor"
.end annotation


# instance fields
.field private currentPosition:J

.field private final jumpTable:[I

.field private final needle:[B


# direct methods
.method public constructor <init>([B[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/netty/buffer/search/KmpSearchProcessorFactory$Processor;->needle:[B

    iput-object p2, p0, Lio/netty/buffer/search/KmpSearchProcessorFactory$Processor;->jumpTable:[I

    return-void
.end method


# virtual methods
.method public process(B)Z
    .locals 4

    :goto_0
    iget-wide v0, p0, Lio/netty/buffer/search/KmpSearchProcessorFactory$Processor;->currentPosition:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lio/netty/buffer/search/KmpSearchProcessorFactory$Processor;->needle:[B

    invoke-static {v2, v0, v1}, Lio/netty/util/internal/PlatformDependent;->getByte([BJ)B

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lio/netty/buffer/search/KmpSearchProcessorFactory$Processor;->jumpTable:[I

    iget-wide v1, p0, Lio/netty/buffer/search/KmpSearchProcessorFactory$Processor;->currentPosition:J

    invoke-static {v0, v1, v2}, Lio/netty/util/internal/PlatformDependent;->getInt([IJ)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lio/netty/buffer/search/KmpSearchProcessorFactory$Processor;->currentPosition:J

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/netty/buffer/search/KmpSearchProcessorFactory$Processor;->needle:[B

    iget-wide v1, p0, Lio/netty/buffer/search/KmpSearchProcessorFactory$Processor;->currentPosition:J

    invoke-static {v0, v1, v2}, Lio/netty/util/internal/PlatformDependent;->getByte([BJ)B

    move-result v0

    if-ne v0, p1, :cond_1

    iget-wide v0, p0, Lio/netty/buffer/search/KmpSearchProcessorFactory$Processor;->currentPosition:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lio/netty/buffer/search/KmpSearchProcessorFactory$Processor;->currentPosition:J

    :cond_1
    iget-wide v0, p0, Lio/netty/buffer/search/KmpSearchProcessorFactory$Processor;->currentPosition:J

    iget-object p1, p0, Lio/netty/buffer/search/KmpSearchProcessorFactory$Processor;->needle:[B

    array-length p1, p1

    int-to-long v2, p1

    cmp-long p1, v0, v2

    if-nez p1, :cond_2

    iget-object p1, p0, Lio/netty/buffer/search/KmpSearchProcessorFactory$Processor;->jumpTable:[I

    invoke-static {p1, v0, v1}, Lio/netty/util/internal/PlatformDependent;->getInt([IJ)I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lio/netty/buffer/search/KmpSearchProcessorFactory$Processor;->currentPosition:J

    const/4 p1, 0x0

    return p1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public reset()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lio/netty/buffer/search/KmpSearchProcessorFactory$Processor;->currentPosition:J

    return-void
.end method
