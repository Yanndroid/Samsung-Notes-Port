.class public final enum Lio/netty/handler/ssl/ApplicationProtocolConfig$Protocol;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/ssl/ApplicationProtocolConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Protocol"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/netty/handler/ssl/ApplicationProtocolConfig$Protocol;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/netty/handler/ssl/ApplicationProtocolConfig$Protocol;

.field public static final enum ALPN:Lio/netty/handler/ssl/ApplicationProtocolConfig$Protocol;

.field public static final enum NONE:Lio/netty/handler/ssl/ApplicationProtocolConfig$Protocol;

.field public static final enum NPN:Lio/netty/handler/ssl/ApplicationProtocolConfig$Protocol;

.field public static final enum NPN_AND_ALPN:Lio/netty/handler/ssl/ApplicationProtocolConfig$Protocol;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v0, Lio/netty/handler/ssl/ApplicationProtocolConfig$Protocol;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/netty/handler/ssl/ApplicationProtocolConfig$Protocol;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/netty/handler/ssl/ApplicationProtocolConfig$Protocol;->NONE:Lio/netty/handler/ssl/ApplicationProtocolConfig$Protocol;

    new-instance v1, Lio/netty/handler/ssl/ApplicationProtocolConfig$Protocol;

    const-string v3, "NPN"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lio/netty/handler/ssl/ApplicationProtocolConfig$Protocol;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/netty/handler/ssl/ApplicationProtocolConfig$Protocol;->NPN:Lio/netty/handler/ssl/ApplicationProtocolConfig$Protocol;

    new-instance v3, Lio/netty/handler/ssl/ApplicationProtocolConfig$Protocol;

    const-string v5, "ALPN"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lio/netty/handler/ssl/ApplicationProtocolConfig$Protocol;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lio/netty/handler/ssl/ApplicationProtocolConfig$Protocol;->ALPN:Lio/netty/handler/ssl/ApplicationProtocolConfig$Protocol;

    new-instance v5, Lio/netty/handler/ssl/ApplicationProtocolConfig$Protocol;

    const-string v7, "NPN_AND_ALPN"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lio/netty/handler/ssl/ApplicationProtocolConfig$Protocol;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lio/netty/handler/ssl/ApplicationProtocolConfig$Protocol;->NPN_AND_ALPN:Lio/netty/handler/ssl/ApplicationProtocolConfig$Protocol;

    const/4 v7, 0x4

    new-array v7, v7, [Lio/netty/handler/ssl/ApplicationProtocolConfig$Protocol;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lio/netty/handler/ssl/ApplicationProtocolConfig$Protocol;->$VALUES:[Lio/netty/handler/ssl/ApplicationProtocolConfig$Protocol;

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

.method public static valueOf(Ljava/lang/String;)Lio/netty/handler/ssl/ApplicationProtocolConfig$Protocol;
    .locals 1

    const-class v0, Lio/netty/handler/ssl/ApplicationProtocolConfig$Protocol;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/netty/handler/ssl/ApplicationProtocolConfig$Protocol;

    return-object p0
.end method

.method public static values()[Lio/netty/handler/ssl/ApplicationProtocolConfig$Protocol;
    .locals 1

    sget-object v0, Lio/netty/handler/ssl/ApplicationProtocolConfig$Protocol;->$VALUES:[Lio/netty/handler/ssl/ApplicationProtocolConfig$Protocol;

    invoke-virtual {v0}, [Lio/netty/handler/ssl/ApplicationProtocolConfig$Protocol;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/netty/handler/ssl/ApplicationProtocolConfig$Protocol;

    return-object v0
.end method
