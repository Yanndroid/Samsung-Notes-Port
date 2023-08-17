.class final enum Lio/grpc/okhttp/OkHttpFrameLogger$Direction;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/okhttp/OkHttpFrameLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Direction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/grpc/okhttp/OkHttpFrameLogger$Direction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/grpc/okhttp/OkHttpFrameLogger$Direction;

.field public static final enum INBOUND:Lio/grpc/okhttp/OkHttpFrameLogger$Direction;

.field public static final enum OUTBOUND:Lio/grpc/okhttp/OkHttpFrameLogger$Direction;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lio/grpc/okhttp/OkHttpFrameLogger$Direction;

    const-string v1, "INBOUND"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/grpc/okhttp/OkHttpFrameLogger$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/grpc/okhttp/OkHttpFrameLogger$Direction;->INBOUND:Lio/grpc/okhttp/OkHttpFrameLogger$Direction;

    new-instance v1, Lio/grpc/okhttp/OkHttpFrameLogger$Direction;

    const-string v3, "OUTBOUND"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lio/grpc/okhttp/OkHttpFrameLogger$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/grpc/okhttp/OkHttpFrameLogger$Direction;->OUTBOUND:Lio/grpc/okhttp/OkHttpFrameLogger$Direction;

    const/4 v3, 0x2

    new-array v3, v3, [Lio/grpc/okhttp/OkHttpFrameLogger$Direction;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lio/grpc/okhttp/OkHttpFrameLogger$Direction;->$VALUES:[Lio/grpc/okhttp/OkHttpFrameLogger$Direction;

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

.method public static valueOf(Ljava/lang/String;)Lio/grpc/okhttp/OkHttpFrameLogger$Direction;
    .locals 1

    const-class v0, Lio/grpc/okhttp/OkHttpFrameLogger$Direction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/grpc/okhttp/OkHttpFrameLogger$Direction;

    return-object p0
.end method

.method public static values()[Lio/grpc/okhttp/OkHttpFrameLogger$Direction;
    .locals 1

    sget-object v0, Lio/grpc/okhttp/OkHttpFrameLogger$Direction;->$VALUES:[Lio/grpc/okhttp/OkHttpFrameLogger$Direction;

    invoke-virtual {v0}, [Lio/grpc/okhttp/OkHttpFrameLogger$Direction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/grpc/okhttp/OkHttpFrameLogger$Direction;

    return-object v0
.end method
