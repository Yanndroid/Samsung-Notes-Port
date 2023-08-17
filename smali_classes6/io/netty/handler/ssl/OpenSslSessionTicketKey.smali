.class public final Lio/netty/handler/ssl/OpenSslSessionTicketKey;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final AES_KEY_SIZE:I = 0x10

.field public static final HMAC_KEY_SIZE:I = 0x10

.field public static final NAME_SIZE:I = 0x10

.field public static final TICKET_KEY_SIZE:I = 0x30


# instance fields
.field public final key:Lio/netty/internal/tcnative/SessionTicketKey;


# direct methods
.method public constructor <init>([B[B[B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/netty/internal/tcnative/SessionTicketKey;

    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    invoke-virtual {p2}, [B->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [B

    invoke-virtual {p3}, [B->clone()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [B

    invoke-direct {v0, p1, p2, p3}, Lio/netty/internal/tcnative/SessionTicketKey;-><init>([B[B[B)V

    iput-object v0, p0, Lio/netty/handler/ssl/OpenSslSessionTicketKey;->key:Lio/netty/internal/tcnative/SessionTicketKey;

    return-void
.end method


# virtual methods
.method public aesKey()[B
    .locals 1

    iget-object v0, p0, Lio/netty/handler/ssl/OpenSslSessionTicketKey;->key:Lio/netty/internal/tcnative/SessionTicketKey;

    invoke-virtual {v0}, Lio/netty/internal/tcnative/SessionTicketKey;->getAesKey()[B

    move-result-object v0

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public hmacKey()[B
    .locals 1

    iget-object v0, p0, Lio/netty/handler/ssl/OpenSslSessionTicketKey;->key:Lio/netty/internal/tcnative/SessionTicketKey;

    invoke-virtual {v0}, Lio/netty/internal/tcnative/SessionTicketKey;->getHmacKey()[B

    move-result-object v0

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public name()[B
    .locals 1

    iget-object v0, p0, Lio/netty/handler/ssl/OpenSslSessionTicketKey;->key:Lio/netty/internal/tcnative/SessionTicketKey;

    invoke-virtual {v0}, Lio/netty/internal/tcnative/SessionTicketKey;->getName()[B

    move-result-object v0

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method
