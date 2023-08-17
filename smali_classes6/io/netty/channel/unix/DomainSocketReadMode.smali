.class public final enum Lio/netty/channel/unix/DomainSocketReadMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/netty/channel/unix/DomainSocketReadMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/netty/channel/unix/DomainSocketReadMode;

.field public static final enum BYTES:Lio/netty/channel/unix/DomainSocketReadMode;

.field public static final enum FILE_DESCRIPTORS:Lio/netty/channel/unix/DomainSocketReadMode;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lio/netty/channel/unix/DomainSocketReadMode;

    const-string v1, "BYTES"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/netty/channel/unix/DomainSocketReadMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/netty/channel/unix/DomainSocketReadMode;->BYTES:Lio/netty/channel/unix/DomainSocketReadMode;

    new-instance v1, Lio/netty/channel/unix/DomainSocketReadMode;

    const-string v3, "FILE_DESCRIPTORS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lio/netty/channel/unix/DomainSocketReadMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/netty/channel/unix/DomainSocketReadMode;->FILE_DESCRIPTORS:Lio/netty/channel/unix/DomainSocketReadMode;

    const/4 v3, 0x2

    new-array v3, v3, [Lio/netty/channel/unix/DomainSocketReadMode;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lio/netty/channel/unix/DomainSocketReadMode;->$VALUES:[Lio/netty/channel/unix/DomainSocketReadMode;

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

.method public static valueOf(Ljava/lang/String;)Lio/netty/channel/unix/DomainSocketReadMode;
    .locals 1

    const-class v0, Lio/netty/channel/unix/DomainSocketReadMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/netty/channel/unix/DomainSocketReadMode;

    return-object p0
.end method

.method public static values()[Lio/netty/channel/unix/DomainSocketReadMode;
    .locals 1

    sget-object v0, Lio/netty/channel/unix/DomainSocketReadMode;->$VALUES:[Lio/netty/channel/unix/DomainSocketReadMode;

    invoke-virtual {v0}, [Lio/netty/channel/unix/DomainSocketReadMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/netty/channel/unix/DomainSocketReadMode;

    return-object v0
.end method
