.class public final enum Lio/grpc/netty/NegotiationType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/grpc/netty/NegotiationType;",
        ">;"
    }
.end annotation

.annotation build Lio/grpc/ExperimentalApi;
    value = "https://github.com/grpc/grpc-java/issues/1784"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/grpc/netty/NegotiationType;

.field public static final enum PLAINTEXT:Lio/grpc/netty/NegotiationType;

.field public static final enum PLAINTEXT_UPGRADE:Lio/grpc/netty/NegotiationType;

.field public static final enum TLS:Lio/grpc/netty/NegotiationType;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lio/grpc/netty/NegotiationType;

    const-string v1, "TLS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/grpc/netty/NegotiationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/grpc/netty/NegotiationType;->TLS:Lio/grpc/netty/NegotiationType;

    new-instance v1, Lio/grpc/netty/NegotiationType;

    const-string v3, "PLAINTEXT_UPGRADE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lio/grpc/netty/NegotiationType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/grpc/netty/NegotiationType;->PLAINTEXT_UPGRADE:Lio/grpc/netty/NegotiationType;

    new-instance v3, Lio/grpc/netty/NegotiationType;

    const-string v5, "PLAINTEXT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lio/grpc/netty/NegotiationType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lio/grpc/netty/NegotiationType;->PLAINTEXT:Lio/grpc/netty/NegotiationType;

    const/4 v5, 0x3

    new-array v5, v5, [Lio/grpc/netty/NegotiationType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lio/grpc/netty/NegotiationType;->$VALUES:[Lio/grpc/netty/NegotiationType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/grpc/netty/NegotiationType;
    .locals 1

    const-class v0, Lio/grpc/netty/NegotiationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/grpc/netty/NegotiationType;

    return-object p0
.end method

.method public static values()[Lio/grpc/netty/NegotiationType;
    .locals 1

    sget-object v0, Lio/grpc/netty/NegotiationType;->$VALUES:[Lio/grpc/netty/NegotiationType;

    invoke-virtual {v0}, [Lio/grpc/netty/NegotiationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/grpc/netty/NegotiationType;

    return-object v0
.end method
