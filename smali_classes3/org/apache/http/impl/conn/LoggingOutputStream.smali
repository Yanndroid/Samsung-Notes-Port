.class Lorg/apache/http/impl/conn/LoggingOutputStream;
.super Ljava/io/OutputStream;
.source "SourceFile"


# annotations
.annotation build Lorg/apache/http/annotation/NotThreadSafe;
.end annotation


# instance fields
.field private final out:Ljava/io/OutputStream;

.field private final wire:Lorg/apache/http/impl/conn/WireHC4;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Lorg/apache/http/impl/conn/WireHC4;)V
    .locals 0

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    iput-object p1, p0, Lorg/apache/http/impl/conn/LoggingOutputStream;->out:Ljava/io/OutputStream;

    iput-object p2, p0, Lorg/apache/http/impl/conn/LoggingOutputStream;->wire:Lorg/apache/http/impl/conn/WireHC4;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lorg/apache/http/impl/conn/LoggingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/http/impl/conn/LoggingOutputStream;->wire:Lorg/apache/http/impl/conn/WireHC4;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[close] I/O error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/http/impl/conn/WireHC4;->output(Ljava/lang/String;)V

    throw v0
.end method

.method public flush()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lorg/apache/http/impl/conn/LoggingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/http/impl/conn/LoggingOutputStream;->wire:Lorg/apache/http/impl/conn/WireHC4;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[flush] I/O error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/http/impl/conn/WireHC4;->output(Ljava/lang/String;)V

    throw v0
.end method

.method public write(I)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lorg/apache/http/impl/conn/LoggingOutputStream;->wire:Lorg/apache/http/impl/conn/WireHC4;

    invoke-virtual {v0, p1}, Lorg/apache/http/impl/conn/WireHC4;->output(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object v0, p0, Lorg/apache/http/impl/conn/LoggingOutputStream;->wire:Lorg/apache/http/impl/conn/WireHC4;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[write] I/O error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/conn/WireHC4;->output(Ljava/lang/String;)V

    throw p1
.end method

.method public write([B)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lorg/apache/http/impl/conn/LoggingOutputStream;->wire:Lorg/apache/http/impl/conn/WireHC4;

    invoke-virtual {v0, p1}, Lorg/apache/http/impl/conn/WireHC4;->output([B)V

    iget-object v0, p0, Lorg/apache/http/impl/conn/LoggingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object v0, p0, Lorg/apache/http/impl/conn/LoggingOutputStream;->wire:Lorg/apache/http/impl/conn/WireHC4;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[write] I/O error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/conn/WireHC4;->output(Ljava/lang/String;)V

    throw p1
.end method

.method public write([BII)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lorg/apache/http/impl/conn/LoggingOutputStream;->wire:Lorg/apache/http/impl/conn/WireHC4;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/http/impl/conn/WireHC4;->output([BII)V

    iget-object v0, p0, Lorg/apache/http/impl/conn/LoggingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object p2, p0, Lorg/apache/http/impl/conn/LoggingOutputStream;->wire:Lorg/apache/http/impl/conn/WireHC4;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "[write] I/O error: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lorg/apache/http/impl/conn/WireHC4;->output(Ljava/lang/String;)V

    throw p1
.end method
