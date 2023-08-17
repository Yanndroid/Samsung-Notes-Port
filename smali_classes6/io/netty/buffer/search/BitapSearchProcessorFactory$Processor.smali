.class public Lio/netty/buffer/search/BitapSearchProcessorFactory$Processor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/buffer/search/SearchProcessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/buffer/search/BitapSearchProcessorFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Processor"
.end annotation


# instance fields
.field private final bitMasks:[J

.field private currentMask:J

.field private final successBit:J


# direct methods
.method public constructor <init>([JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/netty/buffer/search/BitapSearchProcessorFactory$Processor;->bitMasks:[J

    iput-wide p2, p0, Lio/netty/buffer/search/BitapSearchProcessorFactory$Processor;->successBit:J

    return-void
.end method


# virtual methods
.method public process(B)Z
    .locals 8

    iget-wide v0, p0, Lio/netty/buffer/search/BitapSearchProcessorFactory$Processor;->currentMask:J

    const/4 v2, 0x1

    shl-long/2addr v0, v2

    const-wide/16 v3, 0x1

    or-long/2addr v0, v3

    iget-object v3, p0, Lio/netty/buffer/search/BitapSearchProcessorFactory$Processor;->bitMasks:[J

    int-to-long v4, p1

    const-wide/16 v6, 0xff

    and-long/2addr v4, v6

    invoke-static {v3, v4, v5}, Lio/netty/util/internal/PlatformDependent;->getLong([JJ)J

    move-result-wide v3

    and-long/2addr v0, v3

    iput-wide v0, p0, Lio/netty/buffer/search/BitapSearchProcessorFactory$Processor;->currentMask:J

    iget-wide v3, p0, Lio/netty/buffer/search/BitapSearchProcessorFactory$Processor;->successBit:J

    and-long/2addr v0, v3

    const-wide/16 v3, 0x0

    cmp-long p1, v0, v3

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public reset()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lio/netty/buffer/search/BitapSearchProcessorFactory$Processor;->currentMask:J

    return-void
.end method
