.class final enum Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/compression/JdkZlibDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GzipState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;

.field public static final enum FLG_READ:Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;

.field public static final enum FOOTER_START:Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;

.field public static final enum HEADER_END:Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;

.field public static final enum HEADER_START:Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;

.field public static final enum PROCESS_FHCRC:Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;

.field public static final enum SKIP_COMMENT:Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;

.field public static final enum SKIP_FNAME:Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;

.field public static final enum XLEN_READ:Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    new-instance v0, Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;

    const-string v1, "HEADER_START"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;->HEADER_START:Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;

    new-instance v1, Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;

    const-string v3, "HEADER_END"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;->HEADER_END:Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;

    new-instance v3, Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;

    const-string v5, "FLG_READ"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;->FLG_READ:Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;

    new-instance v5, Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;

    const-string v7, "XLEN_READ"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;->XLEN_READ:Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;

    new-instance v7, Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;

    const-string v9, "SKIP_FNAME"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;->SKIP_FNAME:Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;

    new-instance v9, Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;

    const-string v11, "SKIP_COMMENT"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;->SKIP_COMMENT:Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;

    new-instance v11, Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;

    const-string v13, "PROCESS_FHCRC"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;->PROCESS_FHCRC:Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;

    new-instance v13, Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;

    const-string v15, "FOOTER_START"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;->FOOTER_START:Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;

    const/16 v15, 0x8

    new-array v15, v15, [Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;

    aput-object v0, v15, v2

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    aput-object v9, v15, v12

    const/4 v0, 0x6

    aput-object v11, v15, v0

    aput-object v13, v15, v14

    sput-object v15, Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;->$VALUES:[Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;

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

.method public static valueOf(Ljava/lang/String;)Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;
    .locals 1

    const-class v0, Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;

    return-object p0
.end method

.method public static values()[Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;
    .locals 1

    sget-object v0, Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;->$VALUES:[Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;

    invoke-virtual {v0}, [Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;

    return-object v0
.end method
