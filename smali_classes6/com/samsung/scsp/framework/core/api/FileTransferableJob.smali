.class public abstract Lcom/samsung/scsp/framework/core/api/FileTransferableJob;
.super Lcom/samsung/scsp/framework/core/api/AbstractJob;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/scsp/framework/core/network/Network$TransferListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/scsp/framework/core/api/FileTransferableJob$FileVo;
    }
.end annotation


# instance fields
.field private final apiPath:Ljava/lang/String;

.field private final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/samsung/scsp/framework/core/network/HttpRequest;",
            "Lcom/samsung/scsp/framework/core/api/FileTransferableJob$FileVo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/scsp/framework/core/network/HttpRequest$Method;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/scsp/framework/core/api/AbstractJob;-><init>(Lcom/samsung/scsp/framework/core/network/HttpRequest$Method;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/samsung/scsp/framework/core/api/FileTransferableJob;->map:Ljava/util/Map;

    iput-object p3, p0, Lcom/samsung/scsp/framework/core/api/FileTransferableJob;->apiPath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getFileUrl(Lcom/samsung/scsp/framework/core/SContext;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Lcom/samsung/scsp/framework/core/SContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/scsp/framework/core/SContext;->getAccountInfoSupplier()Lcom/samsung/scsp/framework/core/identity/AccountInfoSupplier;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/scsp/framework/core/identity/AccountInfoSupplier;->getAppId()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/samsung/scsp/framework/core/api/FileTransferableJob;->apiPath:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/samsung/scsp/framework/core/ers/ScspErs;->getBaseUrlOfPath(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTransferListener()Lcom/samsung/scsp/framework/core/network/Network$TransferListener;
    .locals 0

    return-object p0
.end method

.method public onCompleted(Lcom/samsung/scsp/framework/core/network/HttpRequest;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/scsp/framework/core/api/FileTransferableJob;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/scsp/framework/core/api/FileTransferableJob$FileVo;

    iget-object v0, v0, Lcom/samsung/scsp/framework/core/api/FileTransferableJob$FileVo;->channel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :try_start_1
    iget-object v0, p0, Lcom/samsung/scsp/framework/core/api/FileTransferableJob;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/scsp/framework/core/api/FileTransferableJob$FileVo;

    iget-object v0, v0, Lcom/samsung/scsp/framework/core/api/FileTransferableJob$FileVo;->fileOutputStream:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    iget-object v0, p0, Lcom/samsung/scsp/framework/core/api/FileTransferableJob;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onTransferred(Lcom/samsung/scsp/framework/core/network/HttpRequest;Ljava/util/Map;JJLjava/nio/ByteBuffer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/scsp/framework/core/network/HttpRequest;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;JJ",
            "Ljava/nio/ByteBuffer;",
            ")V"
        }
    .end annotation

    :try_start_0
    iget-object p2, p0, Lcom/samsung/scsp/framework/core/api/FileTransferableJob;->map:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/scsp/framework/core/api/FileTransferableJob$FileVo;

    if-eqz p2, :cond_0

    iget-object p3, p2, Lcom/samsung/scsp/framework/core/api/FileTransferableJob$FileVo;->channel:Ljava/nio/channels/FileChannel;

    if-eqz p3, :cond_0

    invoke-virtual {p7}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iget-wide p3, p2, Lcom/samsung/scsp/framework/core/api/FileTransferableJob$FileVo;->transferred:J

    iget-object v0, p2, Lcom/samsung/scsp/framework/core/api/FileTransferableJob$FileVo;->channel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0, p7}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v0

    int-to-long v0, v0

    add-long/2addr p3, v0

    iput-wide p3, p2, Lcom/samsung/scsp/framework/core/api/FileTransferableJob$FileVo;->transferred:J

    invoke-virtual {p7}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    invoke-interface {p1}, Lcom/samsung/scsp/framework/core/network/HttpRequest;->getProgressListener()Lcom/samsung/scsp/framework/core/listeners/ProgressListener;

    move-result-object p3

    if-eqz p3, :cond_0

    const-wide/16 p3, 0x0

    cmp-long p3, p5, p3

    if-lez p3, :cond_0

    invoke-interface {p1}, Lcom/samsung/scsp/framework/core/network/HttpRequest;->getProgressListener()Lcom/samsung/scsp/framework/core/listeners/ProgressListener;

    move-result-object p1

    iget-wide p2, p2, Lcom/samsung/scsp/framework/core/api/FileTransferableJob$FileVo;->transferred:J

    invoke-interface {p1, p2, p3, p5, p6}, Lcom/samsung/scsp/framework/core/listeners/ProgressListener;->onProgress(JJ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lcom/samsung/scsp/framework/core/ScspException;

    const p3, 0x3938700

    const-string p4, "IOException occurred while storing the data received from the server in a file."

    invoke-direct {p2, p3, p4, p1}, Lcom/samsung/scsp/framework/core/ScspException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public setFilePath(Lcom/samsung/scsp/framework/core/network/HttpRequest;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/scsp/framework/core/api/FileTransferableJob;->setFilePath(Lcom/samsung/scsp/framework/core/network/HttpRequest;Ljava/lang/String;Z)V

    return-void
.end method

.method public setFilePath(Lcom/samsung/scsp/framework/core/network/HttpRequest;Ljava/lang/String;Z)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/scsp/framework/core/api/FileTransferableJob;->map:Ljava/util/Map;

    new-instance v1, Lcom/samsung/scsp/framework/core/api/FileTransferableJob$FileVo;

    invoke-direct {v1, p0, p2, p3}, Lcom/samsung/scsp/framework/core/api/FileTransferableJob$FileVo;-><init>(Lcom/samsung/scsp/framework/core/api/FileTransferableJob;Ljava/lang/String;Z)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lcom/samsung/scsp/framework/core/ScspException;

    const p3, 0x3938700

    const-string v0, "There is no file for storing the data received from the server."

    invoke-direct {p2, p3, v0, p1}, Lcom/samsung/scsp/framework/core/ScspException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method
