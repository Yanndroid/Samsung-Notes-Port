.class Lorg/apache/http/conn/scheme/SchemeLayeredSocketFactoryAdaptor;
.super Lorg/apache/http/conn/scheme/SchemeSocketFactoryAdaptor;
.source "SourceFile"

# interfaces
.implements Lorg/apache/http/conn/scheme/SchemeLayeredSocketFactory;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final factory:Lorg/apache/http/conn/scheme/LayeredSocketFactory;


# direct methods
.method public constructor <init>(Lorg/apache/http/conn/scheme/LayeredSocketFactory;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/http/conn/scheme/SchemeSocketFactoryAdaptor;-><init>(Lorg/apache/http/conn/scheme/SocketFactory;)V

    iput-object p1, p0, Lorg/apache/http/conn/scheme/SchemeLayeredSocketFactoryAdaptor;->factory:Lorg/apache/http/conn/scheme/LayeredSocketFactory;

    return-void
.end method


# virtual methods
.method public createLayeredSocket(Ljava/net/Socket;Ljava/lang/String;ILorg/apache/http/params/HttpParams;)Ljava/net/Socket;
    .locals 1

    iget-object p4, p0, Lorg/apache/http/conn/scheme/SchemeLayeredSocketFactoryAdaptor;->factory:Lorg/apache/http/conn/scheme/LayeredSocketFactory;

    const/4 v0, 0x1

    invoke-interface {p4, p1, p2, p3, v0}, Lorg/apache/http/conn/scheme/LayeredSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object p1

    return-object p1
.end method
