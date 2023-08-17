.class public Lcom/samsung/android/support/senl/docscan/detect/presenter/DetectTask;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/docscan/detect/presenter/DetectTask$Contract;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DetectTask"


# instance fields
.field private final mContract:Lcom/samsung/android/support/senl/docscan/detect/presenter/DetectTask$Contract;

.field private final mImage:Landroid/media/Image;

.field private final mPreviewBuffer:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(Landroid/media/Image;Ljava/nio/ByteBuffer;Lcom/samsung/android/support/senl/docscan/detect/presenter/DetectTask$Contract;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/docscan/detect/presenter/DetectTask;->mImage:Landroid/media/Image;

    iput-object p2, p0, Lcom/samsung/android/support/senl/docscan/detect/presenter/DetectTask;->mPreviewBuffer:Ljava/nio/ByteBuffer;

    iput-object p3, p0, Lcom/samsung/android/support/senl/docscan/detect/presenter/DetectTask;->mContract:Lcom/samsung/android/support/senl/docscan/detect/presenter/DetectTask$Contract;

    return-void
.end method

.method private convertYuvToNV21(Landroid/media/Image;Ljava/nio/ByteBuffer;)[B
    .locals 8

    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/nio/ByteBuffer;

    new-array v6, v1, [I

    new-array v7, v1, [I

    const/4 v1, 0x0

    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    aget-object v3, v0, v1

    invoke-virtual {v3}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    aput-object v3, v2, v1

    aget-object v3, v0, v1

    invoke-virtual {v3}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v3

    aput v3, v6, v1

    aget-object v3, v0, v1

    invoke-virtual {v3}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v3

    aput v3, v7, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    new-array v0, v0, [B

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Landroid/media/Image;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/media/Image;->getHeight()I

    move-result v5

    move-object v3, v0

    invoke-static/range {v2 .. v7}, Lcom/samsung/android/support/senl/docscan/detect/controller/DetectLibWrapper;->convertYuvToNV21([Ljava/nio/ByteBuffer;[BII[I[I)Z

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/presenter/DetectTask;->mImage:Landroid/media/Image;

    invoke-virtual {v0}, Landroid/media/Image;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/docscan/detect/presenter/DetectTask;->mImage:Landroid/media/Image;

    invoke-virtual {v1}, Landroid/media/Image;->getHeight()I

    move-result v1

    mul-int v2, v0, v1

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    invoke-static {v2}, Lcom/samsung/android/support/senl/docscan/detect/controller/DetectLibWrapper;->allocateDirectBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/presenter/DetectTask;->mImage:Landroid/media/Image;

    invoke-virtual {v0}, Landroid/media/Image;->close()V

    return-void

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/support/senl/docscan/detect/presenter/DetectTask;->mPreviewBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v3, p0, Lcom/samsung/android/support/senl/docscan/detect/presenter/DetectTask;->mImage:Landroid/media/Image;

    invoke-direct {p0, v3, v2}, Lcom/samsung/android/support/senl/docscan/detect/presenter/DetectTask;->convertYuvToNV21(Landroid/media/Image;Ljava/nio/ByteBuffer;)[B

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/support/senl/docscan/detect/presenter/DetectTask;->mContract:Lcom/samsung/android/support/senl/docscan/detect/presenter/DetectTask$Contract;

    invoke-interface {v4}, Lcom/samsung/android/support/senl/docscan/detect/presenter/DetectTask$Contract;->isRunningDetectLib()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/presenter/DetectTask;->mImage:Landroid/media/Image;

    invoke-virtual {v0}, Landroid/media/Image;->close()V

    const-string v0, "DetectTask"

    const-string v1, "Detect library is not running"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/docscan/common/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-static {v0, v1, v3}, Lcom/samsung/android/support/senl/docscan/detect/controller/DetectLibWrapper;->tracking(II[B)V

    invoke-static {v2}, Lcom/samsung/android/support/senl/docscan/detect/controller/DetectLibWrapper;->releaseDirectBuffer(Ljava/nio/ByteBuffer;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/presenter/DetectTask;->mImage:Landroid/media/Image;

    invoke-virtual {v0}, Landroid/media/Image;->close()V

    return-void
.end method
