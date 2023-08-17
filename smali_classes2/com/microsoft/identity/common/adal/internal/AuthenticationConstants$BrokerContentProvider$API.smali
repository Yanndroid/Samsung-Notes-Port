.class public final enum Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "API"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;

.field public static final enum ACQUIRE_TOKEN_INTERACTIVE:Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;

.field public static final enum ACQUIRE_TOKEN_SILENT:Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;

.field public static final enum BROKER_ADD_FLIGHTS:Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;

.field public static final enum BROKER_GET_ACCOUNTS:Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;

.field public static final enum BROKER_GET_FLIGHTS:Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;

.field public static final enum BROKER_HELLO:Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;

.field public static final enum BROKER_REMOVE_ACCOUNT:Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;

.field public static final enum BROKER_SET_FLIGHTS:Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;

.field public static final enum BROKER_UPDATE_BRT:Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;

.field public static final enum GENERATE_SHR:Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;

.field public static final enum GET_ACCOUNTS:Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;

.field public static final enum GET_CURRENT_ACCOUNT_SHARED_DEVICE:Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;

.field public static final enum GET_DEVICE_MODE:Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;

.field public static final enum GET_SSO_TOKEN:Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;

.field public static final enum MSAL_HELLO:Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;

.field public static final enum REMOVE_ACCOUNT:Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;

.field public static final enum SIGN_OUT_FROM_SHARED_DEVICE:Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;

.field public static final enum UNKNOWN:Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;


# instance fields
.field private mBrokerVersion:Ljava/lang/String;

.field private mMsalVersion:Ljava/lang/String;

.field private mPath:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 33

    new-instance v6, Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;

    const-string v1, "MSAL_HELLO"

    const/4 v2, 0x0

    const-string v3, "/hello"

    const/4 v4, 0x0

    const-string v5, "3.0"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v6, Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;->MSAL_HELLO:Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;

    new-instance v0, Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;

    const-string v8, "ACQUIRE_TOKEN_INTERACTIVE"

    const/4 v9, 0x1

    const-string v10, "/acquireTokenInteractive"

    const/4 v11, 0x0

    const-string v12, "3.0"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;->ACQUIRE_TOKEN_INTERACTIVE:Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;

    new-instance v1, Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;

    const-string v14, "ACQUIRE_TOKEN_SILENT"

    const/4 v15, 0x2

    const-string v16, "/acquireTokenSilent"

    const/16 v17, 0x0

    const-string v18, "3.0"

    move-object v13, v1

    invoke-direct/range {v13 .. v18}, Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;->ACQUIRE_TOKEN_SILENT:Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;

    new-instance v2, Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;

    const-string v8, "GET_ACCOUNTS"

    const/4 v9, 0x3

    const-string v10, "/getAccounts"

    const-string v12, "3.0"

    move-object v7, v2

    invoke-direct/range {v7 .. v12}, Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;->GET_ACCOUNTS:Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;

    new-instance v3, Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;

    const-string v14, "REMOVE_ACCOUNT"

    const/4 v15, 0x4

    const-string v16, "/removeAccounts"

    const-string v18, "3.0"

    move-object v13, v3

    invoke-direct/range {v13 .. v18}, Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;->REMOVE_ACCOUNT:Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;

    new-instance v4, Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;

    const-string v8, "GET_CURRENT_ACCOUNT_SHARED_DEVICE"

    const/4 v9, 0x5

    const-string v10, "/getCurrentAccountSharedDevice"

    const-string v12, "3.0"

    move-object v7, v4

    invoke-direct/range {v7 .. v12}, Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v4, Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;->GET_CURRENT_ACCOUNT_SHARED_DEVICE:Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;

    new-instance v5, Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;

    const-string v14, "GET_DEVICE_MODE"

    const/4 v15, 0x6

    const-string v16, "/getDeviceMode"

    const-string v18, "3.0"

    move-object v13, v5

    invoke-direct/range {v13 .. v18}, Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v5, Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;->GET_DEVICE_MODE:Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;

    new-instance v13, Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;

    const-string v8, "SIGN_OUT_FROM_SHARED_DEVICE"

    const/4 v9, 0x7

    const-string v10, "/signOutFromSharedDevice"

    const-string v12, "3.0"

    move-object v7, v13

    invoke-direct/range {v7 .. v12}, Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v13, Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;->SIGN_OUT_FROM_SHARED_DEVICE:Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;

    new-instance v7, Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;

    const-string v15, "GENERATE_SHR"

    const/16 v16, 0x8

    const-string v17, "/generateShr"

    const/16 v18, 0x0

    const-string v19, "6.0"

    move-object v14, v7

    invoke-direct/range {v14 .. v19}, Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v7, Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;->GENERATE_SHR:Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;

    new-instance v8, Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;

    const-string v21, "BROKER_HELLO"

    const/16 v22, 0x9

    const-string v23, "/brokerApi/hello"

    const-string v24, "1.0"

    const/16 v25, 0x0

    move-object/from16 v20, v8

    invoke-direct/range {v20 .. v25}, Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v8, Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;->BROKER_HELLO:Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;

    new-instance v9, Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;

    const-string v15, "BROKER_GET_ACCOUNTS"

    const/16 v16, 0xa

    const-string v17, "/brokerApi/getBrokerAccounts"

    const-string v18, "1.0"

    const/16 v19, 0x0

    move-object v14, v9

    invoke-direct/range {v14 .. v19}, Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v9, Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;->BROKER_GET_ACCOUNTS:Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;

    new-instance v10, Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;

    const-string v21, "BROKER_REMOVE_ACCOUNT"

    const/16 v22, 0xb

    const-string v23, "/brokerApi/removeBrokerAccount"

    const-string v24, "1.0"

    move-object/from16 v20, v10

    invoke-direct/range {v20 .. v25}, Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v10, Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;->BROKER_REMOVE_ACCOUNT:Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;

    new-instance v11, Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;

    const-string v15, "BROKER_UPDATE_BRT"

    const/16 v16, 0xc

    const-string v17, "/brokerApi/updateBrt"

    const-string v18, "1.0"

    move-object v14, v11

    invoke-direct/range {v14 .. v19}, Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v11, Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;->BROKER_UPDATE_BRT:Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;

    new-instance v12, Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;

    const-string v21, "BROKER_ADD_FLIGHTS"

    const/16 v22, 0xd

    const-string v23, "/brokerApi/addFlights"

    const-string v24, "2.0"

    move-object/from16 v20, v12

    invoke-direct/range {v20 .. v25}, Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v12, Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;->BROKER_ADD_FLIGHTS:Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;

    new-instance v20, Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;

    const-string v15, "BROKER_SET_FLIGHTS"

    const/16 v16, 0xe

    const-string v17, "/brokerApi/setFlights"

    const-string v18, "2.0"

    move-object/from16 v14, v20

    invoke-direct/range {v14 .. v19}, Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v20, Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;->BROKER_SET_FLIGHTS:Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;

    new-instance v14, Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;

    const-string v22, "BROKER_GET_FLIGHTS"

    const/16 v23, 0xf

    const-string v24, "/brokerApi/getFlights"

    const-string v25, "2.0"

    const/16 v26, 0x0

    move-object/from16 v21, v14

    invoke-direct/range {v21 .. v26}, Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v14, Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;->BROKER_GET_FLIGHTS:Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;

    new-instance v15, Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;

    const-string v28, "GET_SSO_TOKEN"

    const/16 v29, 0x10

    const-string v30, "/ssoToken"

    const/16 v31, 0x0

    const-string v32, "7.0"

    move-object/from16 v27, v15

    invoke-direct/range {v27 .. v32}, Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v15, Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;->GET_SSO_TOKEN:Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;

    new-instance v16, Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;

    const-string v22, "UNKNOWN"

    const/16 v23, 0x11

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v21, v16

    invoke-direct/range {v21 .. v26}, Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v16, Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;->UNKNOWN:Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;

    move-object/from16 v17, v15

    const/16 v15, 0x12

    new-array v15, v15, [Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;

    const/16 v18, 0x0

    aput-object v6, v15, v18

    const/4 v6, 0x1

    aput-object v0, v15, v6

    const/4 v0, 0x2

    aput-object v1, v15, v0

    const/4 v0, 0x3

    aput-object v2, v15, v0

    const/4 v0, 0x4

    aput-object v3, v15, v0

    const/4 v0, 0x5

    aput-object v4, v15, v0

    const/4 v0, 0x6

    aput-object v5, v15, v0

    const/4 v0, 0x7

    aput-object v13, v15, v0

    const/16 v0, 0x8

    aput-object v7, v15, v0

    const/16 v0, 0x9

    aput-object v8, v15, v0

    const/16 v0, 0xa

    aput-object v9, v15, v0

    const/16 v0, 0xb

    aput-object v10, v15, v0

    const/16 v0, 0xc

    aput-object v11, v15, v0

    const/16 v0, 0xd

    aput-object v12, v15, v0

    const/16 v0, 0xe

    aput-object v20, v15, v0

    const/16 v0, 0xf

    aput-object v14, v15, v0

    const/16 v0, 0x10

    aput-object v17, v15, v0

    const/16 v0, 0x11

    aput-object v16, v15, v0

    sput-object v15, Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;->$VALUES:[Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;->mPath:Ljava/lang/String;

    iput-object p4, p0, Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;->mBrokerVersion:Ljava/lang/String;

    iput-object p5, p0, Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;->mMsalVersion:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;
    .locals 1

    const-class v0, Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;
    .locals 1

    sget-object v0, Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;->$VALUES:[Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;

    invoke-virtual {v0}, [Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;

    return-object v0
.end method


# virtual methods
.method public getBrokerVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;->mBrokerVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getMsalVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;->mMsalVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;->mPath:Ljava/lang/String;

    return-object v0
.end method
