.class public final Lio/grpc/okhttp/SslSocketFactoryServerCredentials;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/okhttp/SslSocketFactoryServerCredentials$ServerCredentials;
    }
.end annotation

.annotation build Lio/grpc/ExperimentalApi;
    value = "https://github.com/grpc/grpc-java/issues/1785"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljavax/net/ssl/SSLSocketFactory;)Lio/grpc/ServerCredentials;
    .locals 1

    new-instance v0, Lio/grpc/okhttp/SslSocketFactoryServerCredentials$ServerCredentials;

    invoke-direct {v0, p0}, Lio/grpc/okhttp/SslSocketFactoryServerCredentials$ServerCredentials;-><init>(Ljavax/net/ssl/SSLSocketFactory;)V

    return-object v0
.end method

.method public static create(Ljavax/net/ssl/SSLSocketFactory;Lcom/squareup/okhttp/ConnectionSpec;)Lio/grpc/ServerCredentials;
    .locals 1

    new-instance v0, Lio/grpc/okhttp/SslSocketFactoryServerCredentials$ServerCredentials;

    invoke-static {p1}, Lio/grpc/okhttp/Utils;->convertSpec(Lcom/squareup/okhttp/ConnectionSpec;)Lio/grpc/okhttp/internal/ConnectionSpec;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lio/grpc/okhttp/SslSocketFactoryServerCredentials$ServerCredentials;-><init>(Ljavax/net/ssl/SSLSocketFactory;Lio/grpc/okhttp/internal/ConnectionSpec;)V

    return-object v0
.end method
