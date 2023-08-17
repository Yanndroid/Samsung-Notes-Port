.class public Lorg/xiph/speex/RawWriter;
.super Lorg/xiph/speex/AudioFileWriter;
.source "SourceFile"


# instance fields
.field private out:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/xiph/speex/AudioFileWriter;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lorg/xiph/speex/RawWriter;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public open(Ljava/io/File;)V
    .locals 1

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lorg/xiph/speex/RawWriter;->out:Ljava/io/OutputStream;

    return-void
.end method

.method public open(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/xiph/speex/RawWriter;->open(Ljava/io/File;)V

    return-void
.end method

.method public writeHeader(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public writePacket([BII)V
    .locals 1

    iget-object v0, p0, Lorg/xiph/speex/RawWriter;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method
