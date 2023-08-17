.class public abstract Lorg/apache/http/impl/io/AbstractMessageWriterHC4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/http/io/HttpMessageWriter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/apache/http/HttpMessage;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/http/io/HttpMessageWriter;"
    }
.end annotation

.annotation build Lorg/apache/http/annotation/NotThreadSafe;
.end annotation


# instance fields
.field public final lineBuf:Lorg/apache/http/util/CharArrayBuffer;

.field public final lineFormatter:Lorg/apache/http/message/LineFormatter;

.field public final sessionBuffer:Lorg/apache/http/io/SessionOutputBuffer;


# direct methods
.method public constructor <init>(Lorg/apache/http/io/SessionOutputBuffer;Lorg/apache/http/message/LineFormatter;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Session input buffer"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/http/io/SessionOutputBuffer;

    iput-object p1, p0, Lorg/apache/http/impl/io/AbstractMessageWriterHC4;->sessionBuffer:Lorg/apache/http/io/SessionOutputBuffer;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    sget-object p2, Lorg/apache/http/message/BasicLineFormatterHC4;->INSTANCE:Lorg/apache/http/message/BasicLineFormatterHC4;

    :goto_0
    iput-object p2, p0, Lorg/apache/http/impl/io/AbstractMessageWriterHC4;->lineFormatter:Lorg/apache/http/message/LineFormatter;

    new-instance p1, Lorg/apache/http/util/CharArrayBuffer;

    const/16 p2, 0x80

    invoke-direct {p1, p2}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    iput-object p1, p0, Lorg/apache/http/impl/io/AbstractMessageWriterHC4;->lineBuf:Lorg/apache/http/util/CharArrayBuffer;

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/io/SessionOutputBuffer;Lorg/apache/http/message/LineFormatter;Lorg/apache/http/params/HttpParams;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p3, "Session input buffer"

    invoke-static {p1, p3}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lorg/apache/http/impl/io/AbstractMessageWriterHC4;->sessionBuffer:Lorg/apache/http/io/SessionOutputBuffer;

    new-instance p1, Lorg/apache/http/util/CharArrayBuffer;

    const/16 p3, 0x80

    invoke-direct {p1, p3}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    iput-object p1, p0, Lorg/apache/http/impl/io/AbstractMessageWriterHC4;->lineBuf:Lorg/apache/http/util/CharArrayBuffer;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    sget-object p2, Lorg/apache/http/message/BasicLineFormatterHC4;->INSTANCE:Lorg/apache/http/message/BasicLineFormatterHC4;

    :goto_0
    iput-object p2, p0, Lorg/apache/http/impl/io/AbstractMessageWriterHC4;->lineFormatter:Lorg/apache/http/message/LineFormatter;

    return-void
.end method


# virtual methods
.method public write(Lorg/apache/http/HttpMessage;)V
    .locals 4

    const-string v0, "HTTP message"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lorg/apache/http/impl/io/AbstractMessageWriterHC4;->writeHeadLine(Lorg/apache/http/HttpMessage;)V

    invoke-interface {p1}, Lorg/apache/http/HttpMessage;->headerIterator()Lorg/apache/http/HeaderIterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Lorg/apache/http/HeaderIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lorg/apache/http/impl/io/AbstractMessageWriterHC4;->lineBuf:Lorg/apache/http/util/CharArrayBuffer;

    invoke-virtual {p1}, Lorg/apache/http/util/CharArrayBuffer;->clear()V

    iget-object p1, p0, Lorg/apache/http/impl/io/AbstractMessageWriterHC4;->sessionBuffer:Lorg/apache/http/io/SessionOutputBuffer;

    iget-object v0, p0, Lorg/apache/http/impl/io/AbstractMessageWriterHC4;->lineBuf:Lorg/apache/http/util/CharArrayBuffer;

    invoke-interface {p1, v0}, Lorg/apache/http/io/SessionOutputBuffer;->writeLine(Lorg/apache/http/util/CharArrayBuffer;)V

    return-void

    :cond_0
    invoke-interface {p1}, Lorg/apache/http/HeaderIterator;->nextHeader()Lorg/apache/http/Header;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/http/impl/io/AbstractMessageWriterHC4;->sessionBuffer:Lorg/apache/http/io/SessionOutputBuffer;

    iget-object v2, p0, Lorg/apache/http/impl/io/AbstractMessageWriterHC4;->lineFormatter:Lorg/apache/http/message/LineFormatter;

    iget-object v3, p0, Lorg/apache/http/impl/io/AbstractMessageWriterHC4;->lineBuf:Lorg/apache/http/util/CharArrayBuffer;

    invoke-interface {v2, v3, v0}, Lorg/apache/http/message/LineFormatter;->formatHeader(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/Header;)Lorg/apache/http/util/CharArrayBuffer;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/apache/http/io/SessionOutputBuffer;->writeLine(Lorg/apache/http/util/CharArrayBuffer;)V

    goto :goto_0
.end method

.method public abstract writeHeadLine(Lorg/apache/http/HttpMessage;)V
.end method
