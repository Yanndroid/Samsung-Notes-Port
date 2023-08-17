.class public final enum Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MultiPartStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

.field public static final enum CLOSEDELIMITER:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

.field public static final enum DISPOSITION:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

.field public static final enum EPILOGUE:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

.field public static final enum FIELD:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

.field public static final enum FILEUPLOAD:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

.field public static final enum HEADERDELIMITER:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

.field public static final enum MIXEDCLOSEDELIMITER:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

.field public static final enum MIXEDDELIMITER:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

.field public static final enum MIXEDDISPOSITION:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

.field public static final enum MIXEDFILEUPLOAD:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

.field public static final enum MIXEDPREAMBLE:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

.field public static final enum NOTSTARTED:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

.field public static final enum PREAMBLE:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

.field public static final enum PREEPILOGUE:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;


# direct methods
.method public static constructor <clinit>()V
    .locals 17

    new-instance v0, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    const-string v1, "NOTSTARTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->NOTSTARTED:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    new-instance v1, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    const-string v3, "PREAMBLE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->PREAMBLE:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    new-instance v3, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    const-string v5, "HEADERDELIMITER"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->HEADERDELIMITER:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    new-instance v5, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    const-string v7, "DISPOSITION"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->DISPOSITION:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    new-instance v7, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    const-string v9, "FIELD"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->FIELD:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    new-instance v9, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    const-string v11, "FILEUPLOAD"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->FILEUPLOAD:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    new-instance v11, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    const-string v13, "MIXEDPREAMBLE"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->MIXEDPREAMBLE:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    new-instance v13, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    const-string v15, "MIXEDDELIMITER"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->MIXEDDELIMITER:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    new-instance v15, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    const-string v14, "MIXEDDISPOSITION"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->MIXEDDISPOSITION:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    new-instance v14, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    const-string v12, "MIXEDFILEUPLOAD"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->MIXEDFILEUPLOAD:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    new-instance v12, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    const-string v10, "MIXEDCLOSEDELIMITER"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->MIXEDCLOSEDELIMITER:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    new-instance v10, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    const-string v8, "CLOSEDELIMITER"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->CLOSEDELIMITER:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    new-instance v8, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    const-string v6, "PREEPILOGUE"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->PREEPILOGUE:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    new-instance v6, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    const-string v4, "EPILOGUE"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->EPILOGUE:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    const/16 v4, 0xe

    new-array v4, v4, [Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    const/16 v16, 0x0

    aput-object v0, v4, v16

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v5, v4, v0

    const/4 v0, 0x4

    aput-object v7, v4, v0

    const/4 v0, 0x5

    aput-object v9, v4, v0

    const/4 v0, 0x6

    aput-object v11, v4, v0

    const/4 v0, 0x7

    aput-object v13, v4, v0

    const/16 v0, 0x8

    aput-object v15, v4, v0

    const/16 v0, 0x9

    aput-object v14, v4, v0

    const/16 v0, 0xa

    aput-object v12, v4, v0

    const/16 v0, 0xb

    aput-object v10, v4, v0

    const/16 v0, 0xc

    aput-object v8, v4, v0

    aput-object v6, v4, v2

    sput-object v4, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->$VALUES:[Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

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

.method public static valueOf(Ljava/lang/String;)Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;
    .locals 1

    const-class v0, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    return-object p0
.end method

.method public static values()[Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;
    .locals 1

    sget-object v0, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->$VALUES:[Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    invoke-virtual {v0}, [Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    return-object v0
.end method
