.class public final enum Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;

.field public static final enum DO_NOTHING:Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;

.field public static final enum FAIL_DB_EXCEPTION:Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;

.field public static final enum FAIL_DEVICE_STORAGE_FULL_EXCEPTION:Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;

.field public static final enum FAIL_FILE_WRITE_EXCEPTION:Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;

.field public static final enum FAIL_NETWORK_EXCEPTION:Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;

.field public static final enum FAIL_NOT_AUTHORIZED_EXCEPTION:Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;

.field public static final enum FAIL_NOT_ENOUGH_CLOUD_STORAGE_EXCEPTION:Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;

.field public static final enum FAIL_NOT_SESSION_CONNECTED_EXCEPTION:Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;

.field public static final enum FAIL_NOT_SUCCEEDED_API_EXCEPTION:Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;

.field public static final enum FAIL_NOT_SUPPORTED_API_EXCEPTION:Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;

.field public static final enum FAIL_SERVER_EXCEPTION:Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;

.field public static final enum FAIL_UNKNOWN_EXCEPTION:Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;

.field public static final enum FAIL_WIFI_ONLY_EXCEPTION:Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;

.field public static final enum SUCCESS:Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;


# direct methods
.method public static constructor <clinit>()V
    .locals 17

    new-instance v0, Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;

    const-string v1, "SUCCESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;->SUCCESS:Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;

    new-instance v1, Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;

    const-string v3, "DO_NOTHING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;->DO_NOTHING:Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;

    new-instance v3, Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;

    const-string v5, "FAIL_NOT_SESSION_CONNECTED_EXCEPTION"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;->FAIL_NOT_SESSION_CONNECTED_EXCEPTION:Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;

    new-instance v5, Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;

    const-string v7, "FAIL_NOT_AUTHORIZED_EXCEPTION"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;->FAIL_NOT_AUTHORIZED_EXCEPTION:Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;

    new-instance v7, Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;

    const-string v9, "FAIL_NOT_SUPPORTED_API_EXCEPTION"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;->FAIL_NOT_SUPPORTED_API_EXCEPTION:Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;

    new-instance v9, Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;

    const-string v11, "FAIL_NOT_SUCCEEDED_API_EXCEPTION"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;->FAIL_NOT_SUCCEEDED_API_EXCEPTION:Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;

    new-instance v11, Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;

    const-string v13, "FAIL_NOT_ENOUGH_CLOUD_STORAGE_EXCEPTION"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;->FAIL_NOT_ENOUGH_CLOUD_STORAGE_EXCEPTION:Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;

    new-instance v13, Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;

    const-string v15, "FAIL_DEVICE_STORAGE_FULL_EXCEPTION"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;->FAIL_DEVICE_STORAGE_FULL_EXCEPTION:Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;

    new-instance v15, Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;

    const-string v14, "FAIL_NETWORK_EXCEPTION"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;->FAIL_NETWORK_EXCEPTION:Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;

    new-instance v14, Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;

    const-string v12, "FAIL_SERVER_EXCEPTION"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;->FAIL_SERVER_EXCEPTION:Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;

    new-instance v12, Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;

    const-string v10, "FAIL_FILE_WRITE_EXCEPTION"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;->FAIL_FILE_WRITE_EXCEPTION:Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;

    new-instance v10, Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;

    const-string v8, "FAIL_DB_EXCEPTION"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;->FAIL_DB_EXCEPTION:Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;

    new-instance v8, Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;

    const-string v6, "FAIL_UNKNOWN_EXCEPTION"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;->FAIL_UNKNOWN_EXCEPTION:Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;

    new-instance v6, Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;

    const-string v4, "FAIL_WIFI_ONLY_EXCEPTION"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;->FAIL_WIFI_ONLY_EXCEPTION:Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;

    const/16 v4, 0xe

    new-array v4, v4, [Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;

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

    sput-object v4, Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;->$VALUES:[Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;
    .locals 1

    const-class v0, Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;->$VALUES:[Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;

    invoke-virtual {v0}, [Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;

    return-object v0
.end method
