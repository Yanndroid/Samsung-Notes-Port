.class public Lorg/apache/http/config/SocketConfig$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/http/config/SocketConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private soKeepAlive:Z

.field private soLinger:I

.field private soReuseAddress:Z

.field private soTimeout:I

.field private tcpNoDelay:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/http/config/SocketConfig$Builder;->soLinger:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/http/config/SocketConfig$Builder;->tcpNoDelay:Z

    return-void
.end method


# virtual methods
.method public build()Lorg/apache/http/config/SocketConfig;
    .locals 7

    new-instance v6, Lorg/apache/http/config/SocketConfig;

    iget v1, p0, Lorg/apache/http/config/SocketConfig$Builder;->soTimeout:I

    iget-boolean v2, p0, Lorg/apache/http/config/SocketConfig$Builder;->soReuseAddress:Z

    iget v3, p0, Lorg/apache/http/config/SocketConfig$Builder;->soLinger:I

    iget-boolean v4, p0, Lorg/apache/http/config/SocketConfig$Builder;->soKeepAlive:Z

    iget-boolean v5, p0, Lorg/apache/http/config/SocketConfig$Builder;->tcpNoDelay:Z

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/apache/http/config/SocketConfig;-><init>(IZIZZ)V

    return-object v6
.end method

.method public setSoKeepAlive(Z)Lorg/apache/http/config/SocketConfig$Builder;
    .locals 0

    iput-boolean p1, p0, Lorg/apache/http/config/SocketConfig$Builder;->soKeepAlive:Z

    return-object p0
.end method

.method public setSoLinger(I)Lorg/apache/http/config/SocketConfig$Builder;
    .locals 0

    iput p1, p0, Lorg/apache/http/config/SocketConfig$Builder;->soLinger:I

    return-object p0
.end method

.method public setSoReuseAddress(Z)Lorg/apache/http/config/SocketConfig$Builder;
    .locals 0

    iput-boolean p1, p0, Lorg/apache/http/config/SocketConfig$Builder;->soReuseAddress:Z

    return-object p0
.end method

.method public setSoTimeout(I)Lorg/apache/http/config/SocketConfig$Builder;
    .locals 0

    iput p1, p0, Lorg/apache/http/config/SocketConfig$Builder;->soTimeout:I

    return-object p0
.end method

.method public setTcpNoDelay(Z)Lorg/apache/http/config/SocketConfig$Builder;
    .locals 0

    iput-boolean p1, p0, Lorg/apache/http/config/SocketConfig$Builder;->tcpNoDelay:Z

    return-object p0
.end method
