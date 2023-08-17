.class public final Lio/grpc/InsecureChannelCredentials;
.super Lio/grpc/ChannelCredentials;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/grpc/ChannelCredentials;-><init>()V

    return-void
.end method

.method public static create()Lio/grpc/ChannelCredentials;
    .locals 1

    new-instance v0, Lio/grpc/InsecureChannelCredentials;

    invoke-direct {v0}, Lio/grpc/InsecureChannelCredentials;-><init>()V

    return-object v0
.end method


# virtual methods
.method public withoutBearerTokens()Lio/grpc/ChannelCredentials;
    .locals 0

    return-object p0
.end method
