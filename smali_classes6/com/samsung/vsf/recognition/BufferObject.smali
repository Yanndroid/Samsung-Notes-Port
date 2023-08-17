.class public Lcom/samsung/vsf/recognition/BufferObject;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private buffer:[B

.field private isEPD:Z


# direct methods
.method public constructor <init>([BZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/vsf/recognition/BufferObject;->buffer:[B

    iput-boolean p2, p0, Lcom/samsung/vsf/recognition/BufferObject;->isEPD:Z

    return-void
.end method


# virtual methods
.method public getByteBuffer()[B
    .locals 1

    iget-object v0, p0, Lcom/samsung/vsf/recognition/BufferObject;->buffer:[B

    return-object v0
.end method

.method public isEPDDetected()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/vsf/recognition/BufferObject;->isEPD:Z

    return v0
.end method
