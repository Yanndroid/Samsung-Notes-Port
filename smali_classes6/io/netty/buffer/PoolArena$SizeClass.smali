.class final enum Lio/netty/buffer/PoolArena$SizeClass;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/buffer/PoolArena;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SizeClass"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/netty/buffer/PoolArena$SizeClass;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/netty/buffer/PoolArena$SizeClass;

.field public static final enum Normal:Lio/netty/buffer/PoolArena$SizeClass;

.field public static final enum Small:Lio/netty/buffer/PoolArena$SizeClass;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lio/netty/buffer/PoolArena$SizeClass;

    const-string v1, "Small"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/netty/buffer/PoolArena$SizeClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/netty/buffer/PoolArena$SizeClass;->Small:Lio/netty/buffer/PoolArena$SizeClass;

    new-instance v1, Lio/netty/buffer/PoolArena$SizeClass;

    const-string v3, "Normal"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lio/netty/buffer/PoolArena$SizeClass;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/netty/buffer/PoolArena$SizeClass;->Normal:Lio/netty/buffer/PoolArena$SizeClass;

    const/4 v3, 0x2

    new-array v3, v3, [Lio/netty/buffer/PoolArena$SizeClass;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lio/netty/buffer/PoolArena$SizeClass;->$VALUES:[Lio/netty/buffer/PoolArena$SizeClass;

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

.method public static valueOf(Ljava/lang/String;)Lio/netty/buffer/PoolArena$SizeClass;
    .locals 1

    const-class v0, Lio/netty/buffer/PoolArena$SizeClass;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/netty/buffer/PoolArena$SizeClass;

    return-object p0
.end method

.method public static values()[Lio/netty/buffer/PoolArena$SizeClass;
    .locals 1

    sget-object v0, Lio/netty/buffer/PoolArena$SizeClass;->$VALUES:[Lio/netty/buffer/PoolArena$SizeClass;

    invoke-virtual {v0}, [Lio/netty/buffer/PoolArena$SizeClass;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/netty/buffer/PoolArena$SizeClass;

    return-object v0
.end method
