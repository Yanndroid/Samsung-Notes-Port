.class public final enum Lio/netty/handler/codec/socks/SocksCmdStatus;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/netty/handler/codec/socks/SocksCmdStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/netty/handler/codec/socks/SocksCmdStatus;

.field public static final enum ADDRESS_NOT_SUPPORTED:Lio/netty/handler/codec/socks/SocksCmdStatus;

.field public static final enum COMMAND_NOT_SUPPORTED:Lio/netty/handler/codec/socks/SocksCmdStatus;

.field public static final enum FAILURE:Lio/netty/handler/codec/socks/SocksCmdStatus;

.field public static final enum FORBIDDEN:Lio/netty/handler/codec/socks/SocksCmdStatus;

.field public static final enum HOST_UNREACHABLE:Lio/netty/handler/codec/socks/SocksCmdStatus;

.field public static final enum NETWORK_UNREACHABLE:Lio/netty/handler/codec/socks/SocksCmdStatus;

.field public static final enum REFUSED:Lio/netty/handler/codec/socks/SocksCmdStatus;

.field public static final enum SUCCESS:Lio/netty/handler/codec/socks/SocksCmdStatus;

.field public static final enum TTL_EXPIRED:Lio/netty/handler/codec/socks/SocksCmdStatus;

.field public static final enum UNASSIGNED:Lio/netty/handler/codec/socks/SocksCmdStatus;


# instance fields
.field private final b:B


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    new-instance v0, Lio/netty/handler/codec/socks/SocksCmdStatus;

    const-string v1, "SUCCESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lio/netty/handler/codec/socks/SocksCmdStatus;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lio/netty/handler/codec/socks/SocksCmdStatus;->SUCCESS:Lio/netty/handler/codec/socks/SocksCmdStatus;

    new-instance v1, Lio/netty/handler/codec/socks/SocksCmdStatus;

    const-string v3, "FAILURE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lio/netty/handler/codec/socks/SocksCmdStatus;-><init>(Ljava/lang/String;IB)V

    sput-object v1, Lio/netty/handler/codec/socks/SocksCmdStatus;->FAILURE:Lio/netty/handler/codec/socks/SocksCmdStatus;

    new-instance v3, Lio/netty/handler/codec/socks/SocksCmdStatus;

    const-string v5, "FORBIDDEN"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lio/netty/handler/codec/socks/SocksCmdStatus;-><init>(Ljava/lang/String;IB)V

    sput-object v3, Lio/netty/handler/codec/socks/SocksCmdStatus;->FORBIDDEN:Lio/netty/handler/codec/socks/SocksCmdStatus;

    new-instance v5, Lio/netty/handler/codec/socks/SocksCmdStatus;

    const-string v7, "NETWORK_UNREACHABLE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lio/netty/handler/codec/socks/SocksCmdStatus;-><init>(Ljava/lang/String;IB)V

    sput-object v5, Lio/netty/handler/codec/socks/SocksCmdStatus;->NETWORK_UNREACHABLE:Lio/netty/handler/codec/socks/SocksCmdStatus;

    new-instance v7, Lio/netty/handler/codec/socks/SocksCmdStatus;

    const-string v9, "HOST_UNREACHABLE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lio/netty/handler/codec/socks/SocksCmdStatus;-><init>(Ljava/lang/String;IB)V

    sput-object v7, Lio/netty/handler/codec/socks/SocksCmdStatus;->HOST_UNREACHABLE:Lio/netty/handler/codec/socks/SocksCmdStatus;

    new-instance v9, Lio/netty/handler/codec/socks/SocksCmdStatus;

    const-string v11, "REFUSED"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lio/netty/handler/codec/socks/SocksCmdStatus;-><init>(Ljava/lang/String;IB)V

    sput-object v9, Lio/netty/handler/codec/socks/SocksCmdStatus;->REFUSED:Lio/netty/handler/codec/socks/SocksCmdStatus;

    new-instance v11, Lio/netty/handler/codec/socks/SocksCmdStatus;

    const-string v13, "TTL_EXPIRED"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lio/netty/handler/codec/socks/SocksCmdStatus;-><init>(Ljava/lang/String;IB)V

    sput-object v11, Lio/netty/handler/codec/socks/SocksCmdStatus;->TTL_EXPIRED:Lio/netty/handler/codec/socks/SocksCmdStatus;

    new-instance v13, Lio/netty/handler/codec/socks/SocksCmdStatus;

    const-string v15, "COMMAND_NOT_SUPPORTED"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Lio/netty/handler/codec/socks/SocksCmdStatus;-><init>(Ljava/lang/String;IB)V

    sput-object v13, Lio/netty/handler/codec/socks/SocksCmdStatus;->COMMAND_NOT_SUPPORTED:Lio/netty/handler/codec/socks/SocksCmdStatus;

    new-instance v15, Lio/netty/handler/codec/socks/SocksCmdStatus;

    const-string v14, "ADDRESS_NOT_SUPPORTED"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v12}, Lio/netty/handler/codec/socks/SocksCmdStatus;-><init>(Ljava/lang/String;IB)V

    sput-object v15, Lio/netty/handler/codec/socks/SocksCmdStatus;->ADDRESS_NOT_SUPPORTED:Lio/netty/handler/codec/socks/SocksCmdStatus;

    new-instance v14, Lio/netty/handler/codec/socks/SocksCmdStatus;

    const-string v12, "UNASSIGNED"

    const/16 v10, 0x9

    const/4 v8, -0x1

    invoke-direct {v14, v12, v10, v8}, Lio/netty/handler/codec/socks/SocksCmdStatus;-><init>(Ljava/lang/String;IB)V

    sput-object v14, Lio/netty/handler/codec/socks/SocksCmdStatus;->UNASSIGNED:Lio/netty/handler/codec/socks/SocksCmdStatus;

    const/16 v8, 0xa

    new-array v8, v8, [Lio/netty/handler/codec/socks/SocksCmdStatus;

    aput-object v0, v8, v2

    aput-object v1, v8, v4

    aput-object v3, v8, v6

    const/4 v0, 0x3

    aput-object v5, v8, v0

    const/4 v0, 0x4

    aput-object v7, v8, v0

    const/4 v0, 0x5

    aput-object v9, v8, v0

    const/4 v0, 0x6

    aput-object v11, v8, v0

    const/4 v0, 0x7

    aput-object v13, v8, v0

    const/16 v0, 0x8

    aput-object v15, v8, v0

    aput-object v14, v8, v10

    sput-object v8, Lio/netty/handler/codec/socks/SocksCmdStatus;->$VALUES:[Lio/netty/handler/codec/socks/SocksCmdStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IB)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-byte p3, p0, Lio/netty/handler/codec/socks/SocksCmdStatus;->b:B

    return-void
.end method

.method public static fromByte(B)Lio/netty/handler/codec/socks/SocksCmdStatus;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lio/netty/handler/codec/socks/SocksCmdStatus;->valueOf(B)Lio/netty/handler/codec/socks/SocksCmdStatus;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(B)Lio/netty/handler/codec/socks/SocksCmdStatus;
    .locals 5

    invoke-static {}, Lio/netty/handler/codec/socks/SocksCmdStatus;->values()[Lio/netty/handler/codec/socks/SocksCmdStatus;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget-byte v4, v3, Lio/netty/handler/codec/socks/SocksCmdStatus;->b:B

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lio/netty/handler/codec/socks/SocksCmdStatus;->UNASSIGNED:Lio/netty/handler/codec/socks/SocksCmdStatus;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/netty/handler/codec/socks/SocksCmdStatus;
    .locals 1

    const-class v0, Lio/netty/handler/codec/socks/SocksCmdStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/netty/handler/codec/socks/SocksCmdStatus;

    return-object p0
.end method

.method public static values()[Lio/netty/handler/codec/socks/SocksCmdStatus;
    .locals 1

    sget-object v0, Lio/netty/handler/codec/socks/SocksCmdStatus;->$VALUES:[Lio/netty/handler/codec/socks/SocksCmdStatus;

    invoke-virtual {v0}, [Lio/netty/handler/codec/socks/SocksCmdStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/netty/handler/codec/socks/SocksCmdStatus;

    return-object v0
.end method


# virtual methods
.method public byteValue()B
    .locals 1

    iget-byte v0, p0, Lio/netty/handler/codec/socks/SocksCmdStatus;->b:B

    return v0
.end method
