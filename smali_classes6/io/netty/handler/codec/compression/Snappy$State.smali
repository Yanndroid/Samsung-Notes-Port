.class final enum Lio/netty/handler/codec/compression/Snappy$State;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/compression/Snappy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/netty/handler/codec/compression/Snappy$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/netty/handler/codec/compression/Snappy$State;

.field public static final enum READING_COPY:Lio/netty/handler/codec/compression/Snappy$State;

.field public static final enum READING_LITERAL:Lio/netty/handler/codec/compression/Snappy$State;

.field public static final enum READING_PREAMBLE:Lio/netty/handler/codec/compression/Snappy$State;

.field public static final enum READING_TAG:Lio/netty/handler/codec/compression/Snappy$State;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v0, Lio/netty/handler/codec/compression/Snappy$State;

    const-string v1, "READING_PREAMBLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/netty/handler/codec/compression/Snappy$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/netty/handler/codec/compression/Snappy$State;->READING_PREAMBLE:Lio/netty/handler/codec/compression/Snappy$State;

    new-instance v1, Lio/netty/handler/codec/compression/Snappy$State;

    const-string v3, "READING_TAG"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lio/netty/handler/codec/compression/Snappy$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/netty/handler/codec/compression/Snappy$State;->READING_TAG:Lio/netty/handler/codec/compression/Snappy$State;

    new-instance v3, Lio/netty/handler/codec/compression/Snappy$State;

    const-string v5, "READING_LITERAL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lio/netty/handler/codec/compression/Snappy$State;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lio/netty/handler/codec/compression/Snappy$State;->READING_LITERAL:Lio/netty/handler/codec/compression/Snappy$State;

    new-instance v5, Lio/netty/handler/codec/compression/Snappy$State;

    const-string v7, "READING_COPY"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lio/netty/handler/codec/compression/Snappy$State;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lio/netty/handler/codec/compression/Snappy$State;->READING_COPY:Lio/netty/handler/codec/compression/Snappy$State;

    const/4 v7, 0x4

    new-array v7, v7, [Lio/netty/handler/codec/compression/Snappy$State;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lio/netty/handler/codec/compression/Snappy$State;->$VALUES:[Lio/netty/handler/codec/compression/Snappy$State;

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

.method public static valueOf(Ljava/lang/String;)Lio/netty/handler/codec/compression/Snappy$State;
    .locals 1

    const-class v0, Lio/netty/handler/codec/compression/Snappy$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/netty/handler/codec/compression/Snappy$State;

    return-object p0
.end method

.method public static values()[Lio/netty/handler/codec/compression/Snappy$State;
    .locals 1

    sget-object v0, Lio/netty/handler/codec/compression/Snappy$State;->$VALUES:[Lio/netty/handler/codec/compression/Snappy$State;

    invoke-virtual {v0}, [Lio/netty/handler/codec/compression/Snappy$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/netty/handler/codec/compression/Snappy$State;

    return-object v0
.end method
