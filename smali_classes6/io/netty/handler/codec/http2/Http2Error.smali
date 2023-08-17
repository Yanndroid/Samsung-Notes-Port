.class public final enum Lio/netty/handler/codec/http2/Http2Error;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/netty/handler/codec/http2/Http2Error;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/netty/handler/codec/http2/Http2Error;

.field public static final enum CANCEL:Lio/netty/handler/codec/http2/Http2Error;

.field public static final enum COMPRESSION_ERROR:Lio/netty/handler/codec/http2/Http2Error;

.field public static final enum CONNECT_ERROR:Lio/netty/handler/codec/http2/Http2Error;

.field public static final enum ENHANCE_YOUR_CALM:Lio/netty/handler/codec/http2/Http2Error;

.field public static final enum FLOW_CONTROL_ERROR:Lio/netty/handler/codec/http2/Http2Error;

.field public static final enum FRAME_SIZE_ERROR:Lio/netty/handler/codec/http2/Http2Error;

.field public static final enum HTTP_1_1_REQUIRED:Lio/netty/handler/codec/http2/Http2Error;

.field public static final enum INADEQUATE_SECURITY:Lio/netty/handler/codec/http2/Http2Error;

.field public static final enum INTERNAL_ERROR:Lio/netty/handler/codec/http2/Http2Error;

.field private static final INT_TO_ENUM_MAP:[Lio/netty/handler/codec/http2/Http2Error;

.field public static final enum NO_ERROR:Lio/netty/handler/codec/http2/Http2Error;

.field public static final enum PROTOCOL_ERROR:Lio/netty/handler/codec/http2/Http2Error;

.field public static final enum REFUSED_STREAM:Lio/netty/handler/codec/http2/Http2Error;

.field public static final enum SETTINGS_TIMEOUT:Lio/netty/handler/codec/http2/Http2Error;

.field public static final enum STREAM_CLOSED:Lio/netty/handler/codec/http2/Http2Error;


# instance fields
.field private final code:J


# direct methods
.method public static constructor <clinit>()V
    .locals 20

    new-instance v0, Lio/netty/handler/codec/http2/Http2Error;

    const-string v1, "NO_ERROR"

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lio/netty/handler/codec/http2/Http2Error;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lio/netty/handler/codec/http2/Http2Error;->NO_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    new-instance v1, Lio/netty/handler/codec/http2/Http2Error;

    const-string v3, "PROTOCOL_ERROR"

    const/4 v4, 0x1

    const-wide/16 v5, 0x1

    invoke-direct {v1, v3, v4, v5, v6}, Lio/netty/handler/codec/http2/Http2Error;-><init>(Ljava/lang/String;IJ)V

    sput-object v1, Lio/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    new-instance v3, Lio/netty/handler/codec/http2/Http2Error;

    const-string v5, "INTERNAL_ERROR"

    const/4 v6, 0x2

    const-wide/16 v7, 0x2

    invoke-direct {v3, v5, v6, v7, v8}, Lio/netty/handler/codec/http2/Http2Error;-><init>(Ljava/lang/String;IJ)V

    sput-object v3, Lio/netty/handler/codec/http2/Http2Error;->INTERNAL_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    new-instance v5, Lio/netty/handler/codec/http2/Http2Error;

    const-string v7, "FLOW_CONTROL_ERROR"

    const/4 v8, 0x3

    const-wide/16 v9, 0x3

    invoke-direct {v5, v7, v8, v9, v10}, Lio/netty/handler/codec/http2/Http2Error;-><init>(Ljava/lang/String;IJ)V

    sput-object v5, Lio/netty/handler/codec/http2/Http2Error;->FLOW_CONTROL_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    new-instance v7, Lio/netty/handler/codec/http2/Http2Error;

    const-string v9, "SETTINGS_TIMEOUT"

    const/4 v10, 0x4

    const-wide/16 v11, 0x4

    invoke-direct {v7, v9, v10, v11, v12}, Lio/netty/handler/codec/http2/Http2Error;-><init>(Ljava/lang/String;IJ)V

    sput-object v7, Lio/netty/handler/codec/http2/Http2Error;->SETTINGS_TIMEOUT:Lio/netty/handler/codec/http2/Http2Error;

    new-instance v9, Lio/netty/handler/codec/http2/Http2Error;

    const-string v11, "STREAM_CLOSED"

    const/4 v12, 0x5

    const-wide/16 v13, 0x5

    invoke-direct {v9, v11, v12, v13, v14}, Lio/netty/handler/codec/http2/Http2Error;-><init>(Ljava/lang/String;IJ)V

    sput-object v9, Lio/netty/handler/codec/http2/Http2Error;->STREAM_CLOSED:Lio/netty/handler/codec/http2/Http2Error;

    new-instance v11, Lio/netty/handler/codec/http2/Http2Error;

    const-string v13, "FRAME_SIZE_ERROR"

    const/4 v14, 0x6

    move-object/from16 v16, v9

    const-wide/16 v8, 0x6

    invoke-direct {v11, v13, v14, v8, v9}, Lio/netty/handler/codec/http2/Http2Error;-><init>(Ljava/lang/String;IJ)V

    sput-object v11, Lio/netty/handler/codec/http2/Http2Error;->FRAME_SIZE_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    new-instance v8, Lio/netty/handler/codec/http2/Http2Error;

    const-string v9, "REFUSED_STREAM"

    const/4 v13, 0x7

    const-wide/16 v14, 0x7

    invoke-direct {v8, v9, v13, v14, v15}, Lio/netty/handler/codec/http2/Http2Error;-><init>(Ljava/lang/String;IJ)V

    sput-object v8, Lio/netty/handler/codec/http2/Http2Error;->REFUSED_STREAM:Lio/netty/handler/codec/http2/Http2Error;

    new-instance v9, Lio/netty/handler/codec/http2/Http2Error;

    const-string v14, "CANCEL"

    const/16 v15, 0x8

    const-wide/16 v12, 0x8

    invoke-direct {v9, v14, v15, v12, v13}, Lio/netty/handler/codec/http2/Http2Error;-><init>(Ljava/lang/String;IJ)V

    sput-object v9, Lio/netty/handler/codec/http2/Http2Error;->CANCEL:Lio/netty/handler/codec/http2/Http2Error;

    new-instance v12, Lio/netty/handler/codec/http2/Http2Error;

    const-string v13, "COMPRESSION_ERROR"

    const/16 v14, 0x9

    move-object/from16 v17, v11

    const-wide/16 v10, 0x9

    invoke-direct {v12, v13, v14, v10, v11}, Lio/netty/handler/codec/http2/Http2Error;-><init>(Ljava/lang/String;IJ)V

    sput-object v12, Lio/netty/handler/codec/http2/Http2Error;->COMPRESSION_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    new-instance v10, Lio/netty/handler/codec/http2/Http2Error;

    const-string v11, "CONNECT_ERROR"

    const/16 v13, 0xa

    const-wide/16 v14, 0xa

    invoke-direct {v10, v11, v13, v14, v15}, Lio/netty/handler/codec/http2/Http2Error;-><init>(Ljava/lang/String;IJ)V

    sput-object v10, Lio/netty/handler/codec/http2/Http2Error;->CONNECT_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    new-instance v11, Lio/netty/handler/codec/http2/Http2Error;

    const-string v14, "ENHANCE_YOUR_CALM"

    const/16 v15, 0xb

    move-object/from16 v18, v7

    const-wide/16 v6, 0xb

    invoke-direct {v11, v14, v15, v6, v7}, Lio/netty/handler/codec/http2/Http2Error;-><init>(Ljava/lang/String;IJ)V

    sput-object v11, Lio/netty/handler/codec/http2/Http2Error;->ENHANCE_YOUR_CALM:Lio/netty/handler/codec/http2/Http2Error;

    new-instance v6, Lio/netty/handler/codec/http2/Http2Error;

    const-string v7, "INADEQUATE_SECURITY"

    const/16 v14, 0xc

    move-object/from16 v19, v5

    const-wide/16 v4, 0xc

    invoke-direct {v6, v7, v14, v4, v5}, Lio/netty/handler/codec/http2/Http2Error;-><init>(Ljava/lang/String;IJ)V

    sput-object v6, Lio/netty/handler/codec/http2/Http2Error;->INADEQUATE_SECURITY:Lio/netty/handler/codec/http2/Http2Error;

    new-instance v4, Lio/netty/handler/codec/http2/Http2Error;

    const-string v5, "HTTP_1_1_REQUIRED"

    const/16 v7, 0xd

    const-wide/16 v14, 0xd

    invoke-direct {v4, v5, v7, v14, v15}, Lio/netty/handler/codec/http2/Http2Error;-><init>(Ljava/lang/String;IJ)V

    sput-object v4, Lio/netty/handler/codec/http2/Http2Error;->HTTP_1_1_REQUIRED:Lio/netty/handler/codec/http2/Http2Error;

    const/16 v5, 0xe

    new-array v5, v5, [Lio/netty/handler/codec/http2/Http2Error;

    aput-object v0, v5, v2

    const/4 v0, 0x1

    aput-object v1, v5, v0

    const/4 v0, 0x2

    aput-object v3, v5, v0

    const/4 v0, 0x3

    aput-object v19, v5, v0

    const/4 v0, 0x4

    aput-object v18, v5, v0

    const/4 v0, 0x5

    aput-object v16, v5, v0

    const/4 v0, 0x6

    aput-object v17, v5, v0

    const/4 v0, 0x7

    aput-object v8, v5, v0

    const/16 v0, 0x8

    aput-object v9, v5, v0

    const/16 v0, 0x9

    aput-object v12, v5, v0

    aput-object v10, v5, v13

    const/16 v0, 0xb

    aput-object v11, v5, v0

    const/16 v0, 0xc

    aput-object v6, v5, v0

    aput-object v4, v5, v7

    sput-object v5, Lio/netty/handler/codec/http2/Http2Error;->$VALUES:[Lio/netty/handler/codec/http2/Http2Error;

    invoke-static {}, Lio/netty/handler/codec/http2/Http2Error;->values()[Lio/netty/handler/codec/http2/Http2Error;

    move-result-object v0

    array-length v1, v0

    new-array v1, v1, [Lio/netty/handler/codec/http2/Http2Error;

    array-length v3, v0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    invoke-virtual {v4}, Lio/netty/handler/codec/http2/Http2Error;->code()J

    move-result-wide v5

    long-to-int v5, v5

    aput-object v4, v1, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    sput-object v1, Lio/netty/handler/codec/http2/Http2Error;->INT_TO_ENUM_MAP:[Lio/netty/handler/codec/http2/Http2Error;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-wide p3, p0, Lio/netty/handler/codec/http2/Http2Error;->code:J

    return-void
.end method

.method public static valueOf(J)Lio/netty/handler/codec/http2/Http2Error;
    .locals 3

    sget-object v0, Lio/netty/handler/codec/http2/Http2Error;->INT_TO_ENUM_MAP:[Lio/netty/handler/codec/http2/Http2Error;

    array-length v1, v0

    int-to-long v1, v1

    cmp-long v1, p0, v1

    if-gez v1, :cond_1

    const-wide/16 v1, 0x0

    cmp-long v1, p0, v1

    if-gez v1, :cond_0

    goto :goto_0

    :cond_0
    long-to-int p0, p0

    aget-object p0, v0, p0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/netty/handler/codec/http2/Http2Error;
    .locals 1

    const-class v0, Lio/netty/handler/codec/http2/Http2Error;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/netty/handler/codec/http2/Http2Error;

    return-object p0
.end method

.method public static values()[Lio/netty/handler/codec/http2/Http2Error;
    .locals 1

    sget-object v0, Lio/netty/handler/codec/http2/Http2Error;->$VALUES:[Lio/netty/handler/codec/http2/Http2Error;

    invoke-virtual {v0}, [Lio/netty/handler/codec/http2/Http2Error;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/netty/handler/codec/http2/Http2Error;

    return-object v0
.end method


# virtual methods
.method public code()J
    .locals 2

    iget-wide v0, p0, Lio/netty/handler/codec/http2/Http2Error;->code:J

    return-wide v0
.end method
