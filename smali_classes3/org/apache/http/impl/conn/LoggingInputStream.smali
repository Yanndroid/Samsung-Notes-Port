.class Lorg/apache/http/impl/conn/LoggingInputStream;
.super Ljava/io/InputStream;
.source "SourceFile"


# annotations
.annotation build Lorg/apache/http/annotation/NotThreadSafe;
.end annotation


# instance fields
.field private final in:Ljava/io/InputStream;

.field private final wire:Lorg/apache/http/impl/conn/WireHC4;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lorg/apache/http/impl/conn/WireHC4;)V
    .locals 0

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-object p1, p0, Lorg/apache/http/impl/conn/LoggingInputStream;->in:Ljava/io/InputStream;

    iput-object p2, p0, Lorg/apache/http/impl/conn/LoggingInputStream;->wire:Lorg/apache/http/impl/conn/WireHC4;

    return-void
.end method


# virtual methods
.method public available()I
    .locals 4

    :try_start_0
    iget-object v0, p0, Lorg/apache/http/impl/conn/LoggingInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/http/impl/conn/LoggingInputStream;->wire:Lorg/apache/http/impl/conn/WireHC4;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[available] I/O error : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/http/impl/conn/WireHC4;->input(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lorg/apache/http/impl/conn/LoggingInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/http/impl/conn/LoggingInputStream;->wire:Lorg/apache/http/impl/conn/WireHC4;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[close] I/O error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/http/impl/conn/WireHC4;->input(Ljava/lang/String;)V

    throw v0
.end method

.method public mark(I)V
    .locals 0

    invoke-super {p0, p1}, Ljava/io/InputStream;->mark(I)V

    return-void
.end method

.method public markSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .locals 4

    :try_start_0
    iget-object v0, p0, Lorg/apache/http/impl/conn/LoggingInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lorg/apache/http/impl/conn/LoggingInputStream;->wire:Lorg/apache/http/impl/conn/WireHC4;

    const-string v2, "end of stream"

    invoke-virtual {v1, v2}, Lorg/apache/http/impl/conn/WireHC4;->input(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/apache/http/impl/conn/LoggingInputStream;->wire:Lorg/apache/http/impl/conn/WireHC4;

    invoke-virtual {v1, v0}, Lorg/apache/http/impl/conn/WireHC4;->input(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/http/impl/conn/LoggingInputStream;->wire:Lorg/apache/http/impl/conn/WireHC4;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[read] I/O error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/http/impl/conn/WireHC4;->input(Ljava/lang/String;)V

    throw v0
.end method

.method public read([B)I
    .locals 3

    :try_start_0
    iget-object v0, p0, Lorg/apache/http/impl/conn/LoggingInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object p1, p0, Lorg/apache/http/impl/conn/LoggingInputStream;->wire:Lorg/apache/http/impl/conn/WireHC4;

    const-string v1, "end of stream"

    invoke-virtual {p1, v1}, Lorg/apache/http/impl/conn/WireHC4;->input(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-lez v0, :cond_1

    iget-object v1, p0, Lorg/apache/http/impl/conn/LoggingInputStream;->wire:Lorg/apache/http/impl/conn/WireHC4;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v0}, Lorg/apache/http/impl/conn/WireHC4;->input([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return v0

    :catch_0
    move-exception p1

    iget-object v0, p0, Lorg/apache/http/impl/conn/LoggingInputStream;->wire:Lorg/apache/http/impl/conn/WireHC4;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[read] I/O error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/conn/WireHC4;->input(Ljava/lang/String;)V

    throw p1
.end method

.method public read([BII)I
    .locals 1

    :try_start_0
    iget-object v0, p0, Lorg/apache/http/impl/conn/LoggingInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p3

    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    iget-object p1, p0, Lorg/apache/http/impl/conn/LoggingInputStream;->wire:Lorg/apache/http/impl/conn/WireHC4;

    const-string p2, "end of stream"

    invoke-virtual {p1, p2}, Lorg/apache/http/impl/conn/WireHC4;->input(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-lez p3, :cond_1

    iget-object v0, p0, Lorg/apache/http/impl/conn/LoggingInputStream;->wire:Lorg/apache/http/impl/conn/WireHC4;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/http/impl/conn/WireHC4;->input([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return p3

    :catch_0
    move-exception p1

    iget-object p2, p0, Lorg/apache/http/impl/conn/LoggingInputStream;->wire:Lorg/apache/http/impl/conn/WireHC4;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "[read] I/O error: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lorg/apache/http/impl/conn/WireHC4;->input(Ljava/lang/String;)V

    throw p1
.end method

.method public reset()V
    .locals 0

    invoke-super {p0}, Ljava/io/InputStream;->reset()V

    return-void
.end method

.method public skip(J)J
    .locals 2

    :try_start_0
    invoke-super {p0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p1

    :catch_0
    move-exception p1

    iget-object p2, p0, Lorg/apache/http/impl/conn/LoggingInputStream;->wire:Lorg/apache/http/impl/conn/WireHC4;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[skip] I/O error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/apache/http/impl/conn/WireHC4;->input(Ljava/lang/String;)V

    throw p1
.end method
