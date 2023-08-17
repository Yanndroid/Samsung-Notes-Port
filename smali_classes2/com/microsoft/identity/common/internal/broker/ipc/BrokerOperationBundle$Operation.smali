.class public final enum Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Operation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;

.field public static final enum BROKER_ADD_FLIGHTS:Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;

.field public static final enum BROKER_API_GET_BROKER_ACCOUNTS:Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;

.field public static final enum BROKER_API_HELLO:Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;

.field public static final enum BROKER_API_REMOVE_BROKER_ACCOUNT:Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;

.field public static final enum BROKER_API_UPDATE_BRT:Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;

.field public static final enum BROKER_GET_FLIGHTS:Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;

.field public static final enum BROKER_GET_KEY_FROM_INACTIVE_BROKER:Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;

.field public static final enum BROKER_SET_FLIGHTS:Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;

.field public static final enum MSAL_ACQUIRE_TOKEN_SILENT:Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;

.field public static final enum MSAL_GENERATE_SHR:Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;

.field public static final enum MSAL_GET_ACCOUNTS:Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;

.field public static final enum MSAL_GET_CURRENT_ACCOUNT_IN_SHARED_DEVICE:Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;

.field public static final enum MSAL_GET_DEVICE_MODE:Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;

.field public static final enum MSAL_GET_INTENT_FOR_INTERACTIVE_REQUEST:Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;

.field public static final enum MSAL_HELLO:Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;

.field public static final enum MSAL_REMOVE_ACCOUNT:Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;

.field public static final enum MSAL_SIGN_OUT_FROM_SHARED_DEVICE:Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;

.field public static final enum MSAL_SSO_TOKEN:Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;


# instance fields
.field public final mAccountManagerOperation:Ljava/lang/String;

.field public final mContentApi:Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;


# direct methods
.method public static constructor <clinit>()V
    .locals 22

    new-instance v0, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;

    sget-object v1, Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;->MSAL_HELLO:Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;

    const-string v2, "MSAL_HELLO"

    const/4 v3, 0x0

    const-string v4, "HELLO"

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;-><init>(Ljava/lang/String;ILcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;Ljava/lang/String;)V

    sput-object v0, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;->MSAL_HELLO:Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;

    new-instance v1, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;

    sget-object v2, Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;->ACQUIRE_TOKEN_INTERACTIVE:Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;

    const-string v4, "MSAL_GET_INTENT_FOR_INTERACTIVE_REQUEST"

    const/4 v5, 0x1

    const-string v6, "GET_INTENT_FOR_INTERACTIVE_REQUEST"

    invoke-direct {v1, v4, v5, v2, v6}, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;-><init>(Ljava/lang/String;ILcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;Ljava/lang/String;)V

    sput-object v1, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;->MSAL_GET_INTENT_FOR_INTERACTIVE_REQUEST:Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;

    new-instance v2, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;

    sget-object v4, Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;->ACQUIRE_TOKEN_SILENT:Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;

    const-string v6, "MSAL_ACQUIRE_TOKEN_SILENT"

    const/4 v7, 0x2

    const-string v8, "ACQUIRE_TOKEN_SILENT"

    invoke-direct {v2, v6, v7, v4, v8}, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;-><init>(Ljava/lang/String;ILcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;Ljava/lang/String;)V

    sput-object v2, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;->MSAL_ACQUIRE_TOKEN_SILENT:Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;

    new-instance v4, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;

    sget-object v6, Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;->GET_ACCOUNTS:Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;

    const-string v8, "MSAL_GET_ACCOUNTS"

    const/4 v9, 0x3

    const-string v10, "GET_ACCOUNTS"

    invoke-direct {v4, v8, v9, v6, v10}, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;-><init>(Ljava/lang/String;ILcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;Ljava/lang/String;)V

    sput-object v4, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;->MSAL_GET_ACCOUNTS:Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;

    new-instance v6, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;

    sget-object v8, Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;->REMOVE_ACCOUNT:Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;

    const-string v10, "MSAL_REMOVE_ACCOUNT"

    const/4 v11, 0x4

    const-string v12, "REMOVE_ACCOUNT"

    invoke-direct {v6, v10, v11, v8, v12}, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;-><init>(Ljava/lang/String;ILcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;Ljava/lang/String;)V

    sput-object v6, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;->MSAL_REMOVE_ACCOUNT:Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;

    new-instance v8, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;

    sget-object v10, Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;->GET_DEVICE_MODE:Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;

    const-string v12, "MSAL_GET_DEVICE_MODE"

    const/4 v13, 0x5

    const-string v14, "GET_DEVICE_MODE"

    invoke-direct {v8, v12, v13, v10, v14}, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;-><init>(Ljava/lang/String;ILcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;Ljava/lang/String;)V

    sput-object v8, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;->MSAL_GET_DEVICE_MODE:Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;

    new-instance v10, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;

    sget-object v12, Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;->GET_CURRENT_ACCOUNT_SHARED_DEVICE:Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;

    const-string v14, "MSAL_GET_CURRENT_ACCOUNT_IN_SHARED_DEVICE"

    const/4 v15, 0x6

    const-string v13, "GET_CURRENT_ACCOUNT"

    invoke-direct {v10, v14, v15, v12, v13}, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;-><init>(Ljava/lang/String;ILcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;Ljava/lang/String;)V

    sput-object v10, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;->MSAL_GET_CURRENT_ACCOUNT_IN_SHARED_DEVICE:Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;

    new-instance v12, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;

    sget-object v13, Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;->SIGN_OUT_FROM_SHARED_DEVICE:Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;

    const-string v14, "MSAL_SIGN_OUT_FROM_SHARED_DEVICE"

    const/4 v15, 0x7

    const-string v11, "REMOVE_ACCOUNT_FROM_SHARED_DEVICE"

    invoke-direct {v12, v14, v15, v13, v11}, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;-><init>(Ljava/lang/String;ILcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;Ljava/lang/String;)V

    sput-object v12, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;->MSAL_SIGN_OUT_FROM_SHARED_DEVICE:Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;

    new-instance v11, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;

    sget-object v13, Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;->GENERATE_SHR:Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;

    const-string v14, "MSAL_GENERATE_SHR"

    const/16 v15, 0x8

    const-string v9, "GENERATE_SHR"

    invoke-direct {v11, v14, v15, v13, v9}, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;-><init>(Ljava/lang/String;ILcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;Ljava/lang/String;)V

    sput-object v11, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;->MSAL_GENERATE_SHR:Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;

    new-instance v9, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;

    const-string v13, "BROKER_GET_KEY_FROM_INACTIVE_BROKER"

    const/16 v14, 0x9

    const/4 v15, 0x0

    invoke-direct {v9, v13, v14, v15, v15}, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;-><init>(Ljava/lang/String;ILcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;Ljava/lang/String;)V

    sput-object v9, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;->BROKER_GET_KEY_FROM_INACTIVE_BROKER:Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;

    new-instance v13, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;

    sget-object v14, Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;->BROKER_HELLO:Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;

    const-string v7, "BROKER_API_HELLO"

    const/16 v5, 0xa

    invoke-direct {v13, v7, v5, v14, v15}, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;-><init>(Ljava/lang/String;ILcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;Ljava/lang/String;)V

    sput-object v13, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;->BROKER_API_HELLO:Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;

    new-instance v7, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;

    sget-object v14, Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;->BROKER_GET_ACCOUNTS:Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;

    const-string v5, "BROKER_API_GET_BROKER_ACCOUNTS"

    const/16 v3, 0xb

    invoke-direct {v7, v5, v3, v14, v15}, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;-><init>(Ljava/lang/String;ILcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;Ljava/lang/String;)V

    sput-object v7, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;->BROKER_API_GET_BROKER_ACCOUNTS:Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;

    new-instance v5, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;

    sget-object v14, Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;->BROKER_REMOVE_ACCOUNT:Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;

    const-string v3, "BROKER_API_REMOVE_BROKER_ACCOUNT"

    move-object/from16 v16, v7

    const/16 v7, 0xc

    invoke-direct {v5, v3, v7, v14, v15}, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;-><init>(Ljava/lang/String;ILcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;Ljava/lang/String;)V

    sput-object v5, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;->BROKER_API_REMOVE_BROKER_ACCOUNT:Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;

    new-instance v3, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;

    sget-object v14, Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;->BROKER_UPDATE_BRT:Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;

    const-string v7, "BROKER_API_UPDATE_BRT"

    move-object/from16 v17, v5

    const/16 v5, 0xd

    invoke-direct {v3, v7, v5, v14, v15}, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;-><init>(Ljava/lang/String;ILcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;Ljava/lang/String;)V

    sput-object v3, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;->BROKER_API_UPDATE_BRT:Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;

    new-instance v7, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;

    sget-object v14, Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;->BROKER_SET_FLIGHTS:Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;

    const-string v5, "BROKER_SET_FLIGHTS"

    move-object/from16 v18, v3

    const/16 v3, 0xe

    invoke-direct {v7, v5, v3, v14, v15}, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;-><init>(Ljava/lang/String;ILcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;Ljava/lang/String;)V

    sput-object v7, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;->BROKER_SET_FLIGHTS:Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;

    new-instance v5, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;

    sget-object v14, Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;->BROKER_GET_FLIGHTS:Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;

    const-string v3, "BROKER_GET_FLIGHTS"

    move-object/from16 v19, v7

    const/16 v7, 0xf

    invoke-direct {v5, v3, v7, v14, v15}, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;-><init>(Ljava/lang/String;ILcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;Ljava/lang/String;)V

    sput-object v5, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;->BROKER_GET_FLIGHTS:Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;

    new-instance v3, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;

    sget-object v14, Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;->BROKER_ADD_FLIGHTS:Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;

    const-string v7, "BROKER_ADD_FLIGHTS"

    move-object/from16 v20, v5

    const/16 v5, 0x10

    invoke-direct {v3, v7, v5, v14, v15}, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;-><init>(Ljava/lang/String;ILcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;Ljava/lang/String;)V

    sput-object v3, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;->BROKER_ADD_FLIGHTS:Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;

    new-instance v7, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;

    sget-object v14, Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;->GET_SSO_TOKEN:Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;

    const-string v5, "MSAL_SSO_TOKEN"

    move-object/from16 v21, v3

    const/16 v3, 0x11

    invoke-direct {v7, v5, v3, v14, v15}, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;-><init>(Ljava/lang/String;ILcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;Ljava/lang/String;)V

    sput-object v7, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;->MSAL_SSO_TOKEN:Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;

    const/16 v5, 0x12

    new-array v5, v5, [Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;

    const/4 v14, 0x0

    aput-object v0, v5, v14

    const/4 v0, 0x1

    aput-object v1, v5, v0

    const/4 v0, 0x2

    aput-object v2, v5, v0

    const/4 v0, 0x3

    aput-object v4, v5, v0

    const/4 v0, 0x4

    aput-object v6, v5, v0

    const/4 v0, 0x5

    aput-object v8, v5, v0

    const/4 v0, 0x6

    aput-object v10, v5, v0

    const/4 v0, 0x7

    aput-object v12, v5, v0

    const/16 v0, 0x8

    aput-object v11, v5, v0

    const/16 v0, 0x9

    aput-object v9, v5, v0

    const/16 v0, 0xa

    aput-object v13, v5, v0

    const/16 v0, 0xb

    aput-object v16, v5, v0

    const/16 v0, 0xc

    aput-object v17, v5, v0

    const/16 v0, 0xd

    aput-object v18, v5, v0

    const/16 v0, 0xe

    aput-object v19, v5, v0

    const/16 v0, 0xf

    aput-object v20, v5, v0

    const/16 v0, 0x10

    aput-object v21, v5, v0

    aput-object v7, v5, v3

    sput-object v5, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;->$VALUES:[Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;->mContentApi:Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;

    iput-object p4, p0, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;->mAccountManagerOperation:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;
    .locals 1

    const-class v0, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;
    .locals 1

    sget-object v0, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;->$VALUES:[Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;

    invoke-virtual {v0}, [Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;

    return-object v0
.end method


# virtual methods
.method public getAccountManagerOperation()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;->mAccountManagerOperation:Ljava/lang/String;

    return-object v0
.end method

.method public getContentApi()Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;->mContentApi:Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;

    return-object v0
.end method
