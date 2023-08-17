.class final enum Lio/netty/handler/pcap/TCPPacket$TCPFlag;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/pcap/TCPPacket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TCPFlag"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/netty/handler/pcap/TCPPacket$TCPFlag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/netty/handler/pcap/TCPPacket$TCPFlag;

.field public static final enum ACK:Lio/netty/handler/pcap/TCPPacket$TCPFlag;

.field public static final enum CWR:Lio/netty/handler/pcap/TCPPacket$TCPFlag;

.field public static final enum ECE:Lio/netty/handler/pcap/TCPPacket$TCPFlag;

.field public static final enum FIN:Lio/netty/handler/pcap/TCPPacket$TCPFlag;

.field public static final enum PSH:Lio/netty/handler/pcap/TCPPacket$TCPFlag;

.field public static final enum RST:Lio/netty/handler/pcap/TCPPacket$TCPFlag;

.field public static final enum SYN:Lio/netty/handler/pcap/TCPPacket$TCPFlag;

.field public static final enum URG:Lio/netty/handler/pcap/TCPPacket$TCPFlag;


# instance fields
.field private final value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    new-instance v0, Lio/netty/handler/pcap/TCPPacket$TCPFlag;

    const-string v1, "FIN"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lio/netty/handler/pcap/TCPPacket$TCPFlag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/netty/handler/pcap/TCPPacket$TCPFlag;->FIN:Lio/netty/handler/pcap/TCPPacket$TCPFlag;

    new-instance v1, Lio/netty/handler/pcap/TCPPacket$TCPFlag;

    const-string v4, "SYN"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lio/netty/handler/pcap/TCPPacket$TCPFlag;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lio/netty/handler/pcap/TCPPacket$TCPFlag;->SYN:Lio/netty/handler/pcap/TCPPacket$TCPFlag;

    new-instance v4, Lio/netty/handler/pcap/TCPPacket$TCPFlag;

    const-string v6, "RST"

    const/4 v7, 0x4

    invoke-direct {v4, v6, v5, v7}, Lio/netty/handler/pcap/TCPPacket$TCPFlag;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lio/netty/handler/pcap/TCPPacket$TCPFlag;->RST:Lio/netty/handler/pcap/TCPPacket$TCPFlag;

    new-instance v6, Lio/netty/handler/pcap/TCPPacket$TCPFlag;

    const-string v8, "PSH"

    const/4 v9, 0x3

    const/16 v10, 0x8

    invoke-direct {v6, v8, v9, v10}, Lio/netty/handler/pcap/TCPPacket$TCPFlag;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lio/netty/handler/pcap/TCPPacket$TCPFlag;->PSH:Lio/netty/handler/pcap/TCPPacket$TCPFlag;

    new-instance v8, Lio/netty/handler/pcap/TCPPacket$TCPFlag;

    const-string v11, "ACK"

    const/16 v12, 0x10

    invoke-direct {v8, v11, v7, v12}, Lio/netty/handler/pcap/TCPPacket$TCPFlag;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lio/netty/handler/pcap/TCPPacket$TCPFlag;->ACK:Lio/netty/handler/pcap/TCPPacket$TCPFlag;

    new-instance v11, Lio/netty/handler/pcap/TCPPacket$TCPFlag;

    const-string v12, "URG"

    const/4 v13, 0x5

    const/16 v14, 0x20

    invoke-direct {v11, v12, v13, v14}, Lio/netty/handler/pcap/TCPPacket$TCPFlag;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lio/netty/handler/pcap/TCPPacket$TCPFlag;->URG:Lio/netty/handler/pcap/TCPPacket$TCPFlag;

    new-instance v12, Lio/netty/handler/pcap/TCPPacket$TCPFlag;

    const-string v14, "ECE"

    const/4 v15, 0x6

    const/16 v13, 0x40

    invoke-direct {v12, v14, v15, v13}, Lio/netty/handler/pcap/TCPPacket$TCPFlag;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lio/netty/handler/pcap/TCPPacket$TCPFlag;->ECE:Lio/netty/handler/pcap/TCPPacket$TCPFlag;

    new-instance v13, Lio/netty/handler/pcap/TCPPacket$TCPFlag;

    const-string v14, "CWR"

    const/4 v15, 0x7

    const/16 v7, 0x80

    invoke-direct {v13, v14, v15, v7}, Lio/netty/handler/pcap/TCPPacket$TCPFlag;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lio/netty/handler/pcap/TCPPacket$TCPFlag;->CWR:Lio/netty/handler/pcap/TCPPacket$TCPFlag;

    new-array v7, v10, [Lio/netty/handler/pcap/TCPPacket$TCPFlag;

    aput-object v0, v7, v2

    aput-object v1, v7, v3

    aput-object v4, v7, v5

    aput-object v6, v7, v9

    const/4 v0, 0x4

    aput-object v8, v7, v0

    const/4 v0, 0x5

    aput-object v11, v7, v0

    const/4 v0, 0x6

    aput-object v12, v7, v0

    aput-object v13, v7, v15

    sput-object v7, Lio/netty/handler/pcap/TCPPacket$TCPFlag;->$VALUES:[Lio/netty/handler/pcap/TCPPacket$TCPFlag;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lio/netty/handler/pcap/TCPPacket$TCPFlag;->value:I

    return-void
.end method

.method public static varargs getFlag([Lio/netty/handler/pcap/TCPPacket$TCPFlag;)I
    .locals 4

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v3, p0, v1

    iget v3, v3, Lio/netty/handler/pcap/TCPPacket$TCPFlag;->value:I

    or-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method public static valueOf(Ljava/lang/String;)Lio/netty/handler/pcap/TCPPacket$TCPFlag;
    .locals 1

    const-class v0, Lio/netty/handler/pcap/TCPPacket$TCPFlag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/netty/handler/pcap/TCPPacket$TCPFlag;

    return-object p0
.end method

.method public static values()[Lio/netty/handler/pcap/TCPPacket$TCPFlag;
    .locals 1

    sget-object v0, Lio/netty/handler/pcap/TCPPacket$TCPFlag;->$VALUES:[Lio/netty/handler/pcap/TCPPacket$TCPFlag;

    invoke-virtual {v0}, [Lio/netty/handler/pcap/TCPPacket$TCPFlag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/netty/handler/pcap/TCPPacket$TCPFlag;

    return-object v0
.end method
