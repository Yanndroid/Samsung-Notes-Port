.class public final enum Lcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcz/msebera/android/httpclient/conn/routing/RouteInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TunnelType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;

.field public static final enum PLAIN:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;

.field public static final enum TUNNELLED:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;

    const-string v1, "PLAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;->PLAIN:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;

    new-instance v1, Lcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;

    const-string v3, "TUNNELLED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;->TUNNELLED:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;->$VALUES:[Lcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;

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

.method public static valueOf(Ljava/lang/String;)Lcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;
    .locals 1

    const-class v0, Lcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;

    return-object p0
.end method

.method public static values()[Lcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;
    .locals 1

    sget-object v0, Lcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;->$VALUES:[Lcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;

    invoke-virtual {v0}, [Lcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;

    return-object v0
.end method
