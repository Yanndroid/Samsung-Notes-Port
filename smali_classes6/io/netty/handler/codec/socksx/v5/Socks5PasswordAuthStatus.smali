.class public Lio/netty/handler/codec/socksx/v5/Socks5PasswordAuthStatus;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lio/netty/handler/codec/socksx/v5/Socks5PasswordAuthStatus;",
        ">;"
    }
.end annotation


# static fields
.field public static final FAILURE:Lio/netty/handler/codec/socksx/v5/Socks5PasswordAuthStatus;

.field public static final SUCCESS:Lio/netty/handler/codec/socksx/v5/Socks5PasswordAuthStatus;


# instance fields
.field private final byteValue:B

.field private final name:Ljava/lang/String;

.field private text:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lio/netty/handler/codec/socksx/v5/Socks5PasswordAuthStatus;

    const/4 v1, 0x0

    const-string v2, "SUCCESS"

    invoke-direct {v0, v1, v2}, Lio/netty/handler/codec/socksx/v5/Socks5PasswordAuthStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lio/netty/handler/codec/socksx/v5/Socks5PasswordAuthStatus;->SUCCESS:Lio/netty/handler/codec/socksx/v5/Socks5PasswordAuthStatus;

    new-instance v0, Lio/netty/handler/codec/socksx/v5/Socks5PasswordAuthStatus;

    const/16 v1, 0xff

    const-string v2, "FAILURE"

    invoke-direct {v0, v1, v2}, Lio/netty/handler/codec/socksx/v5/Socks5PasswordAuthStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lio/netty/handler/codec/socksx/v5/Socks5PasswordAuthStatus;->FAILURE:Lio/netty/handler/codec/socksx/v5/Socks5PasswordAuthStatus;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const-string v0, "UNKNOWN"

    invoke-direct {p0, p1, v0}, Lio/netty/handler/codec/socksx/v5/Socks5PasswordAuthStatus;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "name"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lio/netty/handler/codec/socksx/v5/Socks5PasswordAuthStatus;->name:Ljava/lang/String;

    int-to-byte p1, p1

    iput-byte p1, p0, Lio/netty/handler/codec/socksx/v5/Socks5PasswordAuthStatus;->byteValue:B

    return-void
.end method

.method public static valueOf(B)Lio/netty/handler/codec/socksx/v5/Socks5PasswordAuthStatus;
    .locals 1

    const/4 v0, -0x1

    if-eq p0, v0, :cond_1

    if-eqz p0, :cond_0

    new-instance v0, Lio/netty/handler/codec/socksx/v5/Socks5PasswordAuthStatus;

    invoke-direct {v0, p0}, Lio/netty/handler/codec/socksx/v5/Socks5PasswordAuthStatus;-><init>(I)V

    return-object v0

    :cond_0
    sget-object p0, Lio/netty/handler/codec/socksx/v5/Socks5PasswordAuthStatus;->SUCCESS:Lio/netty/handler/codec/socksx/v5/Socks5PasswordAuthStatus;

    return-object p0

    :cond_1
    sget-object p0, Lio/netty/handler/codec/socksx/v5/Socks5PasswordAuthStatus;->FAILURE:Lio/netty/handler/codec/socksx/v5/Socks5PasswordAuthStatus;

    return-object p0
.end method


# virtual methods
.method public byteValue()B
    .locals 1

    iget-byte v0, p0, Lio/netty/handler/codec/socksx/v5/Socks5PasswordAuthStatus;->byteValue:B

    return v0
.end method

.method public compareTo(Lio/netty/handler/codec/socksx/v5/Socks5PasswordAuthStatus;)I
    .locals 1

    iget-byte v0, p0, Lio/netty/handler/codec/socksx/v5/Socks5PasswordAuthStatus;->byteValue:B

    iget-byte p1, p1, Lio/netty/handler/codec/socksx/v5/Socks5PasswordAuthStatus;->byteValue:B

    sub-int/2addr v0, p1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lio/netty/handler/codec/socksx/v5/Socks5PasswordAuthStatus;

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/socksx/v5/Socks5PasswordAuthStatus;->compareTo(Lio/netty/handler/codec/socksx/v5/Socks5PasswordAuthStatus;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lio/netty/handler/codec/socksx/v5/Socks5PasswordAuthStatus;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-byte v0, p0, Lio/netty/handler/codec/socksx/v5/Socks5PasswordAuthStatus;->byteValue:B

    check-cast p1, Lio/netty/handler/codec/socksx/v5/Socks5PasswordAuthStatus;

    iget-byte p1, p1, Lio/netty/handler/codec/socksx/v5/Socks5PasswordAuthStatus;->byteValue:B

    if-ne v0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 1

    iget-byte v0, p0, Lio/netty/handler/codec/socksx/v5/Socks5PasswordAuthStatus;->byteValue:B

    return v0
.end method

.method public isSuccess()Z
    .locals 1

    iget-byte v0, p0, Lio/netty/handler/codec/socksx/v5/Socks5PasswordAuthStatus;->byteValue:B

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lio/netty/handler/codec/socksx/v5/Socks5PasswordAuthStatus;->text:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lio/netty/handler/codec/socksx/v5/Socks5PasswordAuthStatus;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lio/netty/handler/codec/socksx/v5/Socks5PasswordAuthStatus;->byteValue:B

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/codec/socksx/v5/Socks5PasswordAuthStatus;->text:Ljava/lang/String;

    :cond_0
    return-object v0
.end method
