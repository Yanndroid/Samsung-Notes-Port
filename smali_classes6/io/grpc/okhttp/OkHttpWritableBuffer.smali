.class Lio/grpc/okhttp/OkHttpWritableBuffer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/internal/WritableBuffer;


# instance fields
.field private final buffer:Lokio/Buffer;

.field private readableBytes:I

.field private writableBytes:I


# direct methods
.method public constructor <init>(Lokio/Buffer;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/grpc/okhttp/OkHttpWritableBuffer;->buffer:Lokio/Buffer;

    iput p2, p0, Lio/grpc/okhttp/OkHttpWritableBuffer;->writableBytes:I

    return-void
.end method


# virtual methods
.method public buffer()Lokio/Buffer;
    .locals 1

    iget-object v0, p0, Lio/grpc/okhttp/OkHttpWritableBuffer;->buffer:Lokio/Buffer;

    return-object v0
.end method

.method public readableBytes()I
    .locals 1

    iget v0, p0, Lio/grpc/okhttp/OkHttpWritableBuffer;->readableBytes:I

    return v0
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public writableBytes()I
    .locals 1

    iget v0, p0, Lio/grpc/okhttp/OkHttpWritableBuffer;->writableBytes:I

    return v0
.end method

.method public write(B)V
    .locals 1

    iget-object v0, p0, Lio/grpc/okhttp/OkHttpWritableBuffer;->buffer:Lokio/Buffer;

    invoke-virtual {v0, p1}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    iget p1, p0, Lio/grpc/okhttp/OkHttpWritableBuffer;->writableBytes:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lio/grpc/okhttp/OkHttpWritableBuffer;->writableBytes:I

    iget p1, p0, Lio/grpc/okhttp/OkHttpWritableBuffer;->readableBytes:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lio/grpc/okhttp/OkHttpWritableBuffer;->readableBytes:I

    return-void
.end method

.method public write([BII)V
    .locals 1

    iget-object v0, p0, Lio/grpc/okhttp/OkHttpWritableBuffer;->buffer:Lokio/Buffer;

    invoke-virtual {v0, p1, p2, p3}, Lokio/Buffer;->write([BII)Lokio/Buffer;

    iget p1, p0, Lio/grpc/okhttp/OkHttpWritableBuffer;->writableBytes:I

    sub-int/2addr p1, p3

    iput p1, p0, Lio/grpc/okhttp/OkHttpWritableBuffer;->writableBytes:I

    iget p1, p0, Lio/grpc/okhttp/OkHttpWritableBuffer;->readableBytes:I

    add-int/2addr p1, p3

    iput p1, p0, Lio/grpc/okhttp/OkHttpWritableBuffer;->readableBytes:I

    return-void
.end method
