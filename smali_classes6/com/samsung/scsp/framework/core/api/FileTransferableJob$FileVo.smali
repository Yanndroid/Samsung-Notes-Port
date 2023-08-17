.class Lcom/samsung/scsp/framework/core/api/FileTransferableJob$FileVo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/scsp/framework/core/api/FileTransferableJob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FileVo"
.end annotation


# instance fields
.field public channel:Ljava/nio/channels/FileChannel;

.field public fileOutputStream:Ljava/io/FileOutputStream;

.field public final synthetic this$0:Lcom/samsung/scsp/framework/core/api/FileTransferableJob;

.field public transferred:J


# direct methods
.method public constructor <init>(Lcom/samsung/scsp/framework/core/api/FileTransferableJob;Ljava/lang/String;Z)V
    .locals 2

    iput-object p1, p0, Lcom/samsung/scsp/framework/core/api/FileTransferableJob$FileVo;->this$0:Lcom/samsung/scsp/framework/core/api/FileTransferableJob;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/scsp/framework/core/api/FileTransferableJob$FileVo;->transferred:J

    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, p2, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    iput-object p1, p0, Lcom/samsung/scsp/framework/core/api/FileTransferableJob$FileVo;->fileOutputStream:Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/scsp/framework/core/api/FileTransferableJob$FileVo;->channel:Ljava/nio/channels/FileChannel;

    return-void
.end method
