.class public final Lcom/samsung/scsp/framework/core/network/ByteBufferWriter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/scsp/framework/core/network/ByteBufferWriter$BufferWriterListener;
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x50000


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static write(Ljava/io/OutputStream;Ljava/io/InputStream;Lcom/samsung/scsp/framework/core/network/ByteBufferWriter$BufferWriterListener;)V
    .locals 3

    const/high16 v0, 0x50000

    :try_start_0
    new-array v0, v0, [B

    :cond_0
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    if-eqz p2, :cond_0

    int-to-long v1, v1

    invoke-interface {p2, v1, v2}, Lcom/samsung/scsp/framework/core/network/ByteBufferWriter$BufferWriterListener;->onWritten(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    new-instance p1, Lcom/samsung/scsp/framework/core/ScspException;

    const p2, 0x3938700

    const-string v0, "An error occurred while transmitting data to the server."

    invoke-direct {p1, p2, v0, p0}, Lcom/samsung/scsp/framework/core/ScspException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method
