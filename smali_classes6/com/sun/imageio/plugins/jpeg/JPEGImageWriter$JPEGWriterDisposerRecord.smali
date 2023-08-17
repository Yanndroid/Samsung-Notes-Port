.class Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter$JPEGWriterDisposerRecord;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sun/java2d/DisposerRecord;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JPEGWriterDisposerRecord"
.end annotation


# instance fields
.field private pData:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter$JPEGWriterDisposerRecord;->pData:J

    return-void
.end method


# virtual methods
.method public declared-synchronized dispose()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter$JPEGWriterDisposerRecord;->pData:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-static {v0, v1}, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->access$200(J)V

    iput-wide v2, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter$JPEGWriterDisposerRecord;->pData:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
