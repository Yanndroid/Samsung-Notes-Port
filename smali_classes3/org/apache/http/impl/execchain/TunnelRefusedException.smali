.class public Lorg/apache/http/impl/execchain/TunnelRefusedException;
.super Lorg/apache/http/HttpException;
.source "SourceFile"


# annotations
.annotation build Lorg/apache/http/annotation/Immutable;
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x77ff549cf91bbbabL


# instance fields
.field private final response:Lorg/apache/http/HttpResponse;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/apache/http/HttpResponse;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/http/HttpException;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lorg/apache/http/impl/execchain/TunnelRefusedException;->response:Lorg/apache/http/HttpResponse;

    return-void
.end method


# virtual methods
.method public getResponse()Lorg/apache/http/HttpResponse;
    .locals 1

    iget-object v0, p0, Lorg/apache/http/impl/execchain/TunnelRefusedException;->response:Lorg/apache/http/HttpResponse;

    return-object v0
.end method
