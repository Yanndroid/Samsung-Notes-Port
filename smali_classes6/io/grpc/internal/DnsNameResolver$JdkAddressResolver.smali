.class final enum Lio/grpc/internal/DnsNameResolver$JdkAddressResolver;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lio/grpc/internal/DnsNameResolver$AddressResolver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/DnsNameResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "JdkAddressResolver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/grpc/internal/DnsNameResolver$JdkAddressResolver;",
        ">;",
        "Lio/grpc/internal/DnsNameResolver$AddressResolver;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/grpc/internal/DnsNameResolver$JdkAddressResolver;

.field public static final enum INSTANCE:Lio/grpc/internal/DnsNameResolver$JdkAddressResolver;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lio/grpc/internal/DnsNameResolver$JdkAddressResolver;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/grpc/internal/DnsNameResolver$JdkAddressResolver;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/grpc/internal/DnsNameResolver$JdkAddressResolver;->INSTANCE:Lio/grpc/internal/DnsNameResolver$JdkAddressResolver;

    const/4 v1, 0x1

    new-array v1, v1, [Lio/grpc/internal/DnsNameResolver$JdkAddressResolver;

    aput-object v0, v1, v2

    sput-object v1, Lio/grpc/internal/DnsNameResolver$JdkAddressResolver;->$VALUES:[Lio/grpc/internal/DnsNameResolver$JdkAddressResolver;

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

.method public static valueOf(Ljava/lang/String;)Lio/grpc/internal/DnsNameResolver$JdkAddressResolver;
    .locals 1

    const-class v0, Lio/grpc/internal/DnsNameResolver$JdkAddressResolver;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/grpc/internal/DnsNameResolver$JdkAddressResolver;

    return-object p0
.end method

.method public static values()[Lio/grpc/internal/DnsNameResolver$JdkAddressResolver;
    .locals 1

    sget-object v0, Lio/grpc/internal/DnsNameResolver$JdkAddressResolver;->$VALUES:[Lio/grpc/internal/DnsNameResolver$JdkAddressResolver;

    invoke-virtual {v0}, [Lio/grpc/internal/DnsNameResolver$JdkAddressResolver;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/grpc/internal/DnsNameResolver$JdkAddressResolver;

    return-object v0
.end method


# virtual methods
.method public resolveAddress(Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
