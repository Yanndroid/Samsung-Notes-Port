.class final enum Lio/grpc/okhttp/OkHttpChannelBuilder$NegotiationType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/okhttp/OkHttpChannelBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NegotiationType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/grpc/okhttp/OkHttpChannelBuilder$NegotiationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/grpc/okhttp/OkHttpChannelBuilder$NegotiationType;

.field public static final enum PLAINTEXT:Lio/grpc/okhttp/OkHttpChannelBuilder$NegotiationType;

.field public static final enum TLS:Lio/grpc/okhttp/OkHttpChannelBuilder$NegotiationType;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lio/grpc/okhttp/OkHttpChannelBuilder$NegotiationType;

    const-string v1, "TLS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/grpc/okhttp/OkHttpChannelBuilder$NegotiationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/grpc/okhttp/OkHttpChannelBuilder$NegotiationType;->TLS:Lio/grpc/okhttp/OkHttpChannelBuilder$NegotiationType;

    new-instance v1, Lio/grpc/okhttp/OkHttpChannelBuilder$NegotiationType;

    const-string v3, "PLAINTEXT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lio/grpc/okhttp/OkHttpChannelBuilder$NegotiationType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/grpc/okhttp/OkHttpChannelBuilder$NegotiationType;->PLAINTEXT:Lio/grpc/okhttp/OkHttpChannelBuilder$NegotiationType;

    const/4 v3, 0x2

    new-array v3, v3, [Lio/grpc/okhttp/OkHttpChannelBuilder$NegotiationType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lio/grpc/okhttp/OkHttpChannelBuilder$NegotiationType;->$VALUES:[Lio/grpc/okhttp/OkHttpChannelBuilder$NegotiationType;

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

.method public static valueOf(Ljava/lang/String;)Lio/grpc/okhttp/OkHttpChannelBuilder$NegotiationType;
    .locals 1

    const-class v0, Lio/grpc/okhttp/OkHttpChannelBuilder$NegotiationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/grpc/okhttp/OkHttpChannelBuilder$NegotiationType;

    return-object p0
.end method

.method public static values()[Lio/grpc/okhttp/OkHttpChannelBuilder$NegotiationType;
    .locals 1

    sget-object v0, Lio/grpc/okhttp/OkHttpChannelBuilder$NegotiationType;->$VALUES:[Lio/grpc/okhttp/OkHttpChannelBuilder$NegotiationType;

    invoke-virtual {v0}, [Lio/grpc/okhttp/OkHttpChannelBuilder$NegotiationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/grpc/okhttp/OkHttpChannelBuilder$NegotiationType;

    return-object v0
.end method
