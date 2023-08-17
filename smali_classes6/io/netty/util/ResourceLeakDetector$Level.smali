.class public final enum Lio/netty/util/ResourceLeakDetector$Level;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/util/ResourceLeakDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Level"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/netty/util/ResourceLeakDetector$Level;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/netty/util/ResourceLeakDetector$Level;

.field public static final enum ADVANCED:Lio/netty/util/ResourceLeakDetector$Level;

.field public static final enum DISABLED:Lio/netty/util/ResourceLeakDetector$Level;

.field public static final enum PARANOID:Lio/netty/util/ResourceLeakDetector$Level;

.field public static final enum SIMPLE:Lio/netty/util/ResourceLeakDetector$Level;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v0, Lio/netty/util/ResourceLeakDetector$Level;

    const-string v1, "DISABLED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/netty/util/ResourceLeakDetector$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/netty/util/ResourceLeakDetector$Level;->DISABLED:Lio/netty/util/ResourceLeakDetector$Level;

    new-instance v1, Lio/netty/util/ResourceLeakDetector$Level;

    const-string v3, "SIMPLE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lio/netty/util/ResourceLeakDetector$Level;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/netty/util/ResourceLeakDetector$Level;->SIMPLE:Lio/netty/util/ResourceLeakDetector$Level;

    new-instance v3, Lio/netty/util/ResourceLeakDetector$Level;

    const-string v5, "ADVANCED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lio/netty/util/ResourceLeakDetector$Level;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lio/netty/util/ResourceLeakDetector$Level;->ADVANCED:Lio/netty/util/ResourceLeakDetector$Level;

    new-instance v5, Lio/netty/util/ResourceLeakDetector$Level;

    const-string v7, "PARANOID"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lio/netty/util/ResourceLeakDetector$Level;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lio/netty/util/ResourceLeakDetector$Level;->PARANOID:Lio/netty/util/ResourceLeakDetector$Level;

    const/4 v7, 0x4

    new-array v7, v7, [Lio/netty/util/ResourceLeakDetector$Level;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lio/netty/util/ResourceLeakDetector$Level;->$VALUES:[Lio/netty/util/ResourceLeakDetector$Level;

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

.method public static parseLevel(Ljava/lang/String;)Lio/netty/util/ResourceLeakDetector$Level;
    .locals 5

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lio/netty/util/ResourceLeakDetector$Level;->values()[Lio/netty/util/ResourceLeakDetector$Level;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v3

    :cond_2
    invoke-static {}, Lio/netty/util/ResourceLeakDetector;->access$000()Lio/netty/util/ResourceLeakDetector$Level;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/netty/util/ResourceLeakDetector$Level;
    .locals 1

    const-class v0, Lio/netty/util/ResourceLeakDetector$Level;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/netty/util/ResourceLeakDetector$Level;

    return-object p0
.end method

.method public static values()[Lio/netty/util/ResourceLeakDetector$Level;
    .locals 1

    sget-object v0, Lio/netty/util/ResourceLeakDetector$Level;->$VALUES:[Lio/netty/util/ResourceLeakDetector$Level;

    invoke-virtual {v0}, [Lio/netty/util/ResourceLeakDetector$Level;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/netty/util/ResourceLeakDetector$Level;

    return-object v0
.end method
