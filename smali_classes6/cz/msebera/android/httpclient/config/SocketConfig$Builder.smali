.class public Lcz/msebera/android/httpclient/config/SocketConfig$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcz/msebera/android/httpclient/config/SocketConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private backlogSize:I

.field private rcvBufSize:I

.field private sndBufSize:I

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

    iput v0, p0, Lcz/msebera/android/httpclient/config/SocketConfig$Builder;->soLinger:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcz/msebera/android/httpclient/config/SocketConfig$Builder;->tcpNoDelay:Z

    return-void
.end method


# virtual methods
.method public build()Lcz/msebera/android/httpclient/config/SocketConfig;
    .locals 10

    new-instance v9, Lcz/msebera/android/httpclient/config/SocketConfig;

    iget v1, p0, Lcz/msebera/android/httpclient/config/SocketConfig$Builder;->soTimeout:I

    iget-boolean v2, p0, Lcz/msebera/android/httpclient/config/SocketConfig$Builder;->soReuseAddress:Z

    iget v3, p0, Lcz/msebera/android/httpclient/config/SocketConfig$Builder;->soLinger:I

    iget-boolean v4, p0, Lcz/msebera/android/httpclient/config/SocketConfig$Builder;->soKeepAlive:Z

    iget-boolean v5, p0, Lcz/msebera/android/httpclient/config/SocketConfig$Builder;->tcpNoDelay:Z

    iget v6, p0, Lcz/msebera/android/httpclient/config/SocketConfig$Builder;->sndBufSize:I

    iget v7, p0, Lcz/msebera/android/httpclient/config/SocketConfig$Builder;->rcvBufSize:I

    iget v8, p0, Lcz/msebera/android/httpclient/config/SocketConfig$Builder;->backlogSize:I

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcz/msebera/android/httpclient/config/SocketConfig;-><init>(IZIZZIII)V

    return-object v9
.end method

.method public setBacklogSize(I)Lcz/msebera/android/httpclient/config/SocketConfig$Builder;
    .locals 0

    iput p1, p0, Lcz/msebera/android/httpclient/config/SocketConfig$Builder;->backlogSize:I

    return-object p0
.end method

.method public setRcvBufSize(I)Lcz/msebera/android/httpclient/config/SocketConfig$Builder;
    .locals 0

    iput p1, p0, Lcz/msebera/android/httpclient/config/SocketConfig$Builder;->rcvBufSize:I

    return-object p0
.end method

.method public setSndBufSize(I)Lcz/msebera/android/httpclient/config/SocketConfig$Builder;
    .locals 0

    iput p1, p0, Lcz/msebera/android/httpclient/config/SocketConfig$Builder;->sndBufSize:I

    return-object p0
.end method

.method public setSoKeepAlive(Z)Lcz/msebera/android/httpclient/config/SocketConfig$Builder;
    .locals 0

    iput-boolean p1, p0, Lcz/msebera/android/httpclient/config/SocketConfig$Builder;->soKeepAlive:Z

    return-object p0
.end method

.method public setSoLinger(I)Lcz/msebera/android/httpclient/config/SocketConfig$Builder;
    .locals 0

    iput p1, p0, Lcz/msebera/android/httpclient/config/SocketConfig$Builder;->soLinger:I

    return-object p0
.end method

.method public setSoReuseAddress(Z)Lcz/msebera/android/httpclient/config/SocketConfig$Builder;
    .locals 0

    iput-boolean p1, p0, Lcz/msebera/android/httpclient/config/SocketConfig$Builder;->soReuseAddress:Z

    return-object p0
.end method

.method public setSoTimeout(I)Lcz/msebera/android/httpclient/config/SocketConfig$Builder;
    .locals 0

    iput p1, p0, Lcz/msebera/android/httpclient/config/SocketConfig$Builder;->soTimeout:I

    return-object p0
.end method

.method public setTcpNoDelay(Z)Lcz/msebera/android/httpclient/config/SocketConfig$Builder;
    .locals 0

    iput-boolean p1, p0, Lcz/msebera/android/httpclient/config/SocketConfig$Builder;->tcpNoDelay:Z

    return-object p0
.end method
