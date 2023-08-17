.class public Lcz/msebera/android/httpclient/impl/DefaultBHttpServerConnectionFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcz/msebera/android/httpclient/HttpConnectionFactory;


# annotations
.annotation build Lcz/msebera/android/httpclient/annotation/Contract;
    threading = .enum Lcz/msebera/android/httpclient/annotation/ThreadingBehavior;->IMMUTABLE_CONDITIONAL:Lcz/msebera/android/httpclient/annotation/ThreadingBehavior;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcz/msebera/android/httpclient/HttpConnectionFactory<",
        "Lcz/msebera/android/httpclient/impl/DefaultBHttpServerConnection;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcz/msebera/android/httpclient/impl/DefaultBHttpServerConnectionFactory;


# instance fields
.field private final cconfig:Lcz/msebera/android/httpclient/config/ConnectionConfig;

.field private final incomingContentStrategy:Lcz/msebera/android/httpclient/entity/ContentLengthStrategy;

.field private final outgoingContentStrategy:Lcz/msebera/android/httpclient/entity/ContentLengthStrategy;

.field private final requestParserFactory:Lcz/msebera/android/httpclient/io/HttpMessageParserFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcz/msebera/android/httpclient/io/HttpMessageParserFactory<",
            "Lcz/msebera/android/httpclient/HttpRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final responseWriterFactory:Lcz/msebera/android/httpclient/io/HttpMessageWriterFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcz/msebera/android/httpclient/io/HttpMessageWriterFactory<",
            "Lcz/msebera/android/httpclient/HttpResponse;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcz/msebera/android/httpclient/impl/DefaultBHttpServerConnectionFactory;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/DefaultBHttpServerConnectionFactory;-><init>()V

    sput-object v0, Lcz/msebera/android/httpclient/impl/DefaultBHttpServerConnectionFactory;->INSTANCE:Lcz/msebera/android/httpclient/impl/DefaultBHttpServerConnectionFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcz/msebera/android/httpclient/impl/DefaultBHttpServerConnectionFactory;-><init>(Lcz/msebera/android/httpclient/config/ConnectionConfig;Lcz/msebera/android/httpclient/entity/ContentLengthStrategy;Lcz/msebera/android/httpclient/entity/ContentLengthStrategy;Lcz/msebera/android/httpclient/io/HttpMessageParserFactory;Lcz/msebera/android/httpclient/io/HttpMessageWriterFactory;)V

    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/config/ConnectionConfig;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcz/msebera/android/httpclient/impl/DefaultBHttpServerConnectionFactory;-><init>(Lcz/msebera/android/httpclient/config/ConnectionConfig;Lcz/msebera/android/httpclient/entity/ContentLengthStrategy;Lcz/msebera/android/httpclient/entity/ContentLengthStrategy;Lcz/msebera/android/httpclient/io/HttpMessageParserFactory;Lcz/msebera/android/httpclient/io/HttpMessageWriterFactory;)V

    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/config/ConnectionConfig;Lcz/msebera/android/httpclient/entity/ContentLengthStrategy;Lcz/msebera/android/httpclient/entity/ContentLengthStrategy;Lcz/msebera/android/httpclient/io/HttpMessageParserFactory;Lcz/msebera/android/httpclient/io/HttpMessageWriterFactory;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcz/msebera/android/httpclient/config/ConnectionConfig;",
            "Lcz/msebera/android/httpclient/entity/ContentLengthStrategy;",
            "Lcz/msebera/android/httpclient/entity/ContentLengthStrategy;",
            "Lcz/msebera/android/httpclient/io/HttpMessageParserFactory<",
            "Lcz/msebera/android/httpclient/HttpRequest;",
            ">;",
            "Lcz/msebera/android/httpclient/io/HttpMessageWriterFactory<",
            "Lcz/msebera/android/httpclient/HttpResponse;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lcz/msebera/android/httpclient/config/ConnectionConfig;->DEFAULT:Lcz/msebera/android/httpclient/config/ConnectionConfig;

    :goto_0
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/DefaultBHttpServerConnectionFactory;->cconfig:Lcz/msebera/android/httpclient/config/ConnectionConfig;

    iput-object p2, p0, Lcz/msebera/android/httpclient/impl/DefaultBHttpServerConnectionFactory;->incomingContentStrategy:Lcz/msebera/android/httpclient/entity/ContentLengthStrategy;

    iput-object p3, p0, Lcz/msebera/android/httpclient/impl/DefaultBHttpServerConnectionFactory;->outgoingContentStrategy:Lcz/msebera/android/httpclient/entity/ContentLengthStrategy;

    iput-object p4, p0, Lcz/msebera/android/httpclient/impl/DefaultBHttpServerConnectionFactory;->requestParserFactory:Lcz/msebera/android/httpclient/io/HttpMessageParserFactory;

    iput-object p5, p0, Lcz/msebera/android/httpclient/impl/DefaultBHttpServerConnectionFactory;->responseWriterFactory:Lcz/msebera/android/httpclient/io/HttpMessageWriterFactory;

    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/config/ConnectionConfig;Lcz/msebera/android/httpclient/io/HttpMessageParserFactory;Lcz/msebera/android/httpclient/io/HttpMessageWriterFactory;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcz/msebera/android/httpclient/config/ConnectionConfig;",
            "Lcz/msebera/android/httpclient/io/HttpMessageParserFactory<",
            "Lcz/msebera/android/httpclient/HttpRequest;",
            ">;",
            "Lcz/msebera/android/httpclient/io/HttpMessageWriterFactory<",
            "Lcz/msebera/android/httpclient/HttpResponse;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcz/msebera/android/httpclient/impl/DefaultBHttpServerConnectionFactory;-><init>(Lcz/msebera/android/httpclient/config/ConnectionConfig;Lcz/msebera/android/httpclient/entity/ContentLengthStrategy;Lcz/msebera/android/httpclient/entity/ContentLengthStrategy;Lcz/msebera/android/httpclient/io/HttpMessageParserFactory;Lcz/msebera/android/httpclient/io/HttpMessageWriterFactory;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic createConnection(Ljava/net/Socket;)Lcz/msebera/android/httpclient/HttpConnection;
    .locals 0

    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/impl/DefaultBHttpServerConnectionFactory;->createConnection(Ljava/net/Socket;)Lcz/msebera/android/httpclient/impl/DefaultBHttpServerConnection;

    move-result-object p1

    return-object p1
.end method

.method public createConnection(Ljava/net/Socket;)Lcz/msebera/android/httpclient/impl/DefaultBHttpServerConnection;
    .locals 11

    new-instance v10, Lcz/msebera/android/httpclient/impl/DefaultBHttpServerConnection;

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/DefaultBHttpServerConnectionFactory;->cconfig:Lcz/msebera/android/httpclient/config/ConnectionConfig;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/config/ConnectionConfig;->getBufferSize()I

    move-result v1

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/DefaultBHttpServerConnectionFactory;->cconfig:Lcz/msebera/android/httpclient/config/ConnectionConfig;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/config/ConnectionConfig;->getFragmentSizeHint()I

    move-result v2

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/DefaultBHttpServerConnectionFactory;->cconfig:Lcz/msebera/android/httpclient/config/ConnectionConfig;

    invoke-static {v0}, Lcz/msebera/android/httpclient/impl/ConnSupport;->createDecoder(Lcz/msebera/android/httpclient/config/ConnectionConfig;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v3

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/DefaultBHttpServerConnectionFactory;->cconfig:Lcz/msebera/android/httpclient/config/ConnectionConfig;

    invoke-static {v0}, Lcz/msebera/android/httpclient/impl/ConnSupport;->createEncoder(Lcz/msebera/android/httpclient/config/ConnectionConfig;)Ljava/nio/charset/CharsetEncoder;

    move-result-object v4

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/DefaultBHttpServerConnectionFactory;->cconfig:Lcz/msebera/android/httpclient/config/ConnectionConfig;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/config/ConnectionConfig;->getMessageConstraints()Lcz/msebera/android/httpclient/config/MessageConstraints;

    move-result-object v5

    iget-object v6, p0, Lcz/msebera/android/httpclient/impl/DefaultBHttpServerConnectionFactory;->incomingContentStrategy:Lcz/msebera/android/httpclient/entity/ContentLengthStrategy;

    iget-object v7, p0, Lcz/msebera/android/httpclient/impl/DefaultBHttpServerConnectionFactory;->outgoingContentStrategy:Lcz/msebera/android/httpclient/entity/ContentLengthStrategy;

    iget-object v8, p0, Lcz/msebera/android/httpclient/impl/DefaultBHttpServerConnectionFactory;->requestParserFactory:Lcz/msebera/android/httpclient/io/HttpMessageParserFactory;

    iget-object v9, p0, Lcz/msebera/android/httpclient/impl/DefaultBHttpServerConnectionFactory;->responseWriterFactory:Lcz/msebera/android/httpclient/io/HttpMessageWriterFactory;

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcz/msebera/android/httpclient/impl/DefaultBHttpServerConnection;-><init>(IILjava/nio/charset/CharsetDecoder;Ljava/nio/charset/CharsetEncoder;Lcz/msebera/android/httpclient/config/MessageConstraints;Lcz/msebera/android/httpclient/entity/ContentLengthStrategy;Lcz/msebera/android/httpclient/entity/ContentLengthStrategy;Lcz/msebera/android/httpclient/io/HttpMessageParserFactory;Lcz/msebera/android/httpclient/io/HttpMessageWriterFactory;)V

    invoke-virtual {v10, p1}, Lcz/msebera/android/httpclient/impl/DefaultBHttpServerConnection;->bind(Ljava/net/Socket;)V

    return-object v10
.end method
