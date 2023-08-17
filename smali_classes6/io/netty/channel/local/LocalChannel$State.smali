.class final enum Lio/netty/channel/local/LocalChannel$State;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/channel/local/LocalChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/netty/channel/local/LocalChannel$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/netty/channel/local/LocalChannel$State;

.field public static final enum BOUND:Lio/netty/channel/local/LocalChannel$State;

.field public static final enum CLOSED:Lio/netty/channel/local/LocalChannel$State;

.field public static final enum CONNECTED:Lio/netty/channel/local/LocalChannel$State;

.field public static final enum OPEN:Lio/netty/channel/local/LocalChannel$State;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v0, Lio/netty/channel/local/LocalChannel$State;

    const-string v1, "OPEN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/netty/channel/local/LocalChannel$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/netty/channel/local/LocalChannel$State;->OPEN:Lio/netty/channel/local/LocalChannel$State;

    new-instance v1, Lio/netty/channel/local/LocalChannel$State;

    const-string v3, "BOUND"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lio/netty/channel/local/LocalChannel$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/netty/channel/local/LocalChannel$State;->BOUND:Lio/netty/channel/local/LocalChannel$State;

    new-instance v3, Lio/netty/channel/local/LocalChannel$State;

    const-string v5, "CONNECTED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lio/netty/channel/local/LocalChannel$State;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lio/netty/channel/local/LocalChannel$State;->CONNECTED:Lio/netty/channel/local/LocalChannel$State;

    new-instance v5, Lio/netty/channel/local/LocalChannel$State;

    const-string v7, "CLOSED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lio/netty/channel/local/LocalChannel$State;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lio/netty/channel/local/LocalChannel$State;->CLOSED:Lio/netty/channel/local/LocalChannel$State;

    const/4 v7, 0x4

    new-array v7, v7, [Lio/netty/channel/local/LocalChannel$State;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lio/netty/channel/local/LocalChannel$State;->$VALUES:[Lio/netty/channel/local/LocalChannel$State;

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

.method public static valueOf(Ljava/lang/String;)Lio/netty/channel/local/LocalChannel$State;
    .locals 1

    const-class v0, Lio/netty/channel/local/LocalChannel$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/netty/channel/local/LocalChannel$State;

    return-object p0
.end method

.method public static values()[Lio/netty/channel/local/LocalChannel$State;
    .locals 1

    sget-object v0, Lio/netty/channel/local/LocalChannel$State;->$VALUES:[Lio/netty/channel/local/LocalChannel$State;

    invoke-virtual {v0}, [Lio/netty/channel/local/LocalChannel$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/netty/channel/local/LocalChannel$State;

    return-object v0
.end method
