.class synthetic Lio/grpc/netty/NettyChannelBuilder$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/NettyChannelBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic $SwitchMap$io$grpc$netty$NegotiationType:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lio/grpc/netty/NegotiationType;->values()[Lio/grpc/netty/NegotiationType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lio/grpc/netty/NettyChannelBuilder$1;->$SwitchMap$io$grpc$netty$NegotiationType:[I

    :try_start_0
    sget-object v1, Lio/grpc/netty/NegotiationType;->PLAINTEXT:Lio/grpc/netty/NegotiationType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lio/grpc/netty/NettyChannelBuilder$1;->$SwitchMap$io$grpc$netty$NegotiationType:[I

    sget-object v1, Lio/grpc/netty/NegotiationType;->PLAINTEXT_UPGRADE:Lio/grpc/netty/NegotiationType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lio/grpc/netty/NettyChannelBuilder$1;->$SwitchMap$io$grpc$netty$NegotiationType:[I

    sget-object v1, Lio/grpc/netty/NegotiationType;->TLS:Lio/grpc/netty/NegotiationType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
