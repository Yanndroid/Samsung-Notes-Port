.class public Lorg/apache/http/impl/io/DefaultHttpRequestWriterFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/http/io/HttpMessageWriterFactory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/http/io/HttpMessageWriterFactory<",
        "Lorg/apache/http/HttpRequest;",
        ">;"
    }
.end annotation

.annotation build Lorg/apache/http/annotation/Immutable;
.end annotation


# static fields
.field public static final INSTANCE:Lorg/apache/http/impl/io/DefaultHttpRequestWriterFactory;


# instance fields
.field private final lineFormatter:Lorg/apache/http/message/LineFormatter;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/http/impl/io/DefaultHttpRequestWriterFactory;

    invoke-direct {v0}, Lorg/apache/http/impl/io/DefaultHttpRequestWriterFactory;-><init>()V

    sput-object v0, Lorg/apache/http/impl/io/DefaultHttpRequestWriterFactory;->INSTANCE:Lorg/apache/http/impl/io/DefaultHttpRequestWriterFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/http/impl/io/DefaultHttpRequestWriterFactory;-><init>(Lorg/apache/http/message/LineFormatter;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/message/LineFormatter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lorg/apache/http/message/BasicLineFormatterHC4;->INSTANCE:Lorg/apache/http/message/BasicLineFormatterHC4;

    :goto_0
    iput-object p1, p0, Lorg/apache/http/impl/io/DefaultHttpRequestWriterFactory;->lineFormatter:Lorg/apache/http/message/LineFormatter;

    return-void
.end method


# virtual methods
.method public create(Lorg/apache/http/io/SessionOutputBuffer;)Lorg/apache/http/io/HttpMessageWriter;
    .locals 2

    new-instance v0, Lorg/apache/http/impl/io/DefaultHttpRequestWriter;

    iget-object v1, p0, Lorg/apache/http/impl/io/DefaultHttpRequestWriterFactory;->lineFormatter:Lorg/apache/http/message/LineFormatter;

    invoke-direct {v0, p1, v1}, Lorg/apache/http/impl/io/DefaultHttpRequestWriter;-><init>(Lorg/apache/http/io/SessionOutputBuffer;Lorg/apache/http/message/LineFormatter;)V

    return-object v0
.end method
