.class final enum Lio/grpc/okhttp/OkHttpFrameLogger$SettingParams;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/okhttp/OkHttpFrameLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SettingParams"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/grpc/okhttp/OkHttpFrameLogger$SettingParams;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/grpc/okhttp/OkHttpFrameLogger$SettingParams;

.field public static final enum ENABLE_PUSH:Lio/grpc/okhttp/OkHttpFrameLogger$SettingParams;

.field public static final enum HEADER_TABLE_SIZE:Lio/grpc/okhttp/OkHttpFrameLogger$SettingParams;

.field public static final enum INITIAL_WINDOW_SIZE:Lio/grpc/okhttp/OkHttpFrameLogger$SettingParams;

.field public static final enum MAX_CONCURRENT_STREAMS:Lio/grpc/okhttp/OkHttpFrameLogger$SettingParams;

.field public static final enum MAX_FRAME_SIZE:Lio/grpc/okhttp/OkHttpFrameLogger$SettingParams;

.field public static final enum MAX_HEADER_LIST_SIZE:Lio/grpc/okhttp/OkHttpFrameLogger$SettingParams;


# instance fields
.field private final bit:I


# direct methods
.method public static constructor <clinit>()V
    .locals 15

    new-instance v0, Lio/grpc/okhttp/OkHttpFrameLogger$SettingParams;

    const-string v1, "HEADER_TABLE_SIZE"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lio/grpc/okhttp/OkHttpFrameLogger$SettingParams;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/grpc/okhttp/OkHttpFrameLogger$SettingParams;->HEADER_TABLE_SIZE:Lio/grpc/okhttp/OkHttpFrameLogger$SettingParams;

    new-instance v1, Lio/grpc/okhttp/OkHttpFrameLogger$SettingParams;

    const-string v4, "ENABLE_PUSH"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lio/grpc/okhttp/OkHttpFrameLogger$SettingParams;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lio/grpc/okhttp/OkHttpFrameLogger$SettingParams;->ENABLE_PUSH:Lio/grpc/okhttp/OkHttpFrameLogger$SettingParams;

    new-instance v4, Lio/grpc/okhttp/OkHttpFrameLogger$SettingParams;

    const-string v6, "MAX_CONCURRENT_STREAMS"

    const/4 v7, 0x4

    invoke-direct {v4, v6, v5, v7}, Lio/grpc/okhttp/OkHttpFrameLogger$SettingParams;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lio/grpc/okhttp/OkHttpFrameLogger$SettingParams;->MAX_CONCURRENT_STREAMS:Lio/grpc/okhttp/OkHttpFrameLogger$SettingParams;

    new-instance v6, Lio/grpc/okhttp/OkHttpFrameLogger$SettingParams;

    const-string v8, "MAX_FRAME_SIZE"

    const/4 v9, 0x3

    const/4 v10, 0x5

    invoke-direct {v6, v8, v9, v10}, Lio/grpc/okhttp/OkHttpFrameLogger$SettingParams;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lio/grpc/okhttp/OkHttpFrameLogger$SettingParams;->MAX_FRAME_SIZE:Lio/grpc/okhttp/OkHttpFrameLogger$SettingParams;

    new-instance v8, Lio/grpc/okhttp/OkHttpFrameLogger$SettingParams;

    const-string v11, "MAX_HEADER_LIST_SIZE"

    const/4 v12, 0x6

    invoke-direct {v8, v11, v7, v12}, Lio/grpc/okhttp/OkHttpFrameLogger$SettingParams;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lio/grpc/okhttp/OkHttpFrameLogger$SettingParams;->MAX_HEADER_LIST_SIZE:Lio/grpc/okhttp/OkHttpFrameLogger$SettingParams;

    new-instance v11, Lio/grpc/okhttp/OkHttpFrameLogger$SettingParams;

    const-string v13, "INITIAL_WINDOW_SIZE"

    const/4 v14, 0x7

    invoke-direct {v11, v13, v10, v14}, Lio/grpc/okhttp/OkHttpFrameLogger$SettingParams;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lio/grpc/okhttp/OkHttpFrameLogger$SettingParams;->INITIAL_WINDOW_SIZE:Lio/grpc/okhttp/OkHttpFrameLogger$SettingParams;

    new-array v12, v12, [Lio/grpc/okhttp/OkHttpFrameLogger$SettingParams;

    aput-object v0, v12, v2

    aput-object v1, v12, v3

    aput-object v4, v12, v5

    aput-object v6, v12, v9

    aput-object v8, v12, v7

    aput-object v11, v12, v10

    sput-object v12, Lio/grpc/okhttp/OkHttpFrameLogger$SettingParams;->$VALUES:[Lio/grpc/okhttp/OkHttpFrameLogger$SettingParams;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lio/grpc/okhttp/OkHttpFrameLogger$SettingParams;->bit:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/grpc/okhttp/OkHttpFrameLogger$SettingParams;
    .locals 1

    const-class v0, Lio/grpc/okhttp/OkHttpFrameLogger$SettingParams;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/grpc/okhttp/OkHttpFrameLogger$SettingParams;

    return-object p0
.end method

.method public static values()[Lio/grpc/okhttp/OkHttpFrameLogger$SettingParams;
    .locals 1

    sget-object v0, Lio/grpc/okhttp/OkHttpFrameLogger$SettingParams;->$VALUES:[Lio/grpc/okhttp/OkHttpFrameLogger$SettingParams;

    invoke-virtual {v0}, [Lio/grpc/okhttp/OkHttpFrameLogger$SettingParams;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/grpc/okhttp/OkHttpFrameLogger$SettingParams;

    return-object v0
.end method


# virtual methods
.method public getBit()I
    .locals 1

    iget v0, p0, Lio/grpc/okhttp/OkHttpFrameLogger$SettingParams;->bit:I

    return v0
.end method
