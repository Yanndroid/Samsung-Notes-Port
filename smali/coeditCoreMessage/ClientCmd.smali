.class public final enum LcoeditCoreMessage/ClientCmd;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LcoeditCoreMessage/ClientCmd$ClientCmdVerifier;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LcoeditCoreMessage/ClientCmd;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LcoeditCoreMessage/ClientCmd;

.field public static final enum CONNECT:LcoeditCoreMessage/ClientCmd;

.field public static final CONNECT_VALUE:I = 0x0

.field public static final enum DISCONNECT:LcoeditCoreMessage/ClientCmd;

.field public static final DISCONNECT_VALUE:I = 0x1

.field public static final enum GET_DEVICE_LIST:LcoeditCoreMessage/ClientCmd;

.field public static final GET_DEVICE_LIST_VALUE:I = 0x4

.field public static final enum REFRESH:LcoeditCoreMessage/ClientCmd;

.field public static final REFRESH_VALUE:I = 0x3

.field public static final enum SUBMIT:LcoeditCoreMessage/ClientCmd;

.field public static final SUBMIT_VALUE:I = 0x2

.field public static final enum UNRECOGNIZED:LcoeditCoreMessage/ClientCmd;

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "LcoeditCoreMessage/ClientCmd;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 14

    new-instance v0, LcoeditCoreMessage/ClientCmd;

    const-string v1, "CONNECT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, LcoeditCoreMessage/ClientCmd;-><init>(Ljava/lang/String;II)V

    sput-object v0, LcoeditCoreMessage/ClientCmd;->CONNECT:LcoeditCoreMessage/ClientCmd;

    new-instance v1, LcoeditCoreMessage/ClientCmd;

    const-string v3, "DISCONNECT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, LcoeditCoreMessage/ClientCmd;-><init>(Ljava/lang/String;II)V

    sput-object v1, LcoeditCoreMessage/ClientCmd;->DISCONNECT:LcoeditCoreMessage/ClientCmd;

    new-instance v3, LcoeditCoreMessage/ClientCmd;

    const-string v5, "SUBMIT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, LcoeditCoreMessage/ClientCmd;-><init>(Ljava/lang/String;II)V

    sput-object v3, LcoeditCoreMessage/ClientCmd;->SUBMIT:LcoeditCoreMessage/ClientCmd;

    new-instance v5, LcoeditCoreMessage/ClientCmd;

    const-string v7, "REFRESH"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, LcoeditCoreMessage/ClientCmd;-><init>(Ljava/lang/String;II)V

    sput-object v5, LcoeditCoreMessage/ClientCmd;->REFRESH:LcoeditCoreMessage/ClientCmd;

    new-instance v7, LcoeditCoreMessage/ClientCmd;

    const-string v9, "GET_DEVICE_LIST"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, LcoeditCoreMessage/ClientCmd;-><init>(Ljava/lang/String;II)V

    sput-object v7, LcoeditCoreMessage/ClientCmd;->GET_DEVICE_LIST:LcoeditCoreMessage/ClientCmd;

    new-instance v9, LcoeditCoreMessage/ClientCmd;

    const-string v11, "UNRECOGNIZED"

    const/4 v12, 0x5

    const/4 v13, -0x1

    invoke-direct {v9, v11, v12, v13}, LcoeditCoreMessage/ClientCmd;-><init>(Ljava/lang/String;II)V

    sput-object v9, LcoeditCoreMessage/ClientCmd;->UNRECOGNIZED:LcoeditCoreMessage/ClientCmd;

    const/4 v11, 0x6

    new-array v11, v11, [LcoeditCoreMessage/ClientCmd;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, LcoeditCoreMessage/ClientCmd;->$VALUES:[LcoeditCoreMessage/ClientCmd;

    new-instance v0, LcoeditCoreMessage/ClientCmd$1;

    invoke-direct {v0}, LcoeditCoreMessage/ClientCmd$1;-><init>()V

    sput-object v0, LcoeditCoreMessage/ClientCmd;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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

    iput p3, p0, LcoeditCoreMessage/ClientCmd;->value:I

    return-void
.end method

.method public static forNumber(I)LcoeditCoreMessage/ClientCmd;
    .locals 1

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, LcoeditCoreMessage/ClientCmd;->GET_DEVICE_LIST:LcoeditCoreMessage/ClientCmd;

    return-object p0

    :cond_1
    sget-object p0, LcoeditCoreMessage/ClientCmd;->REFRESH:LcoeditCoreMessage/ClientCmd;

    return-object p0

    :cond_2
    sget-object p0, LcoeditCoreMessage/ClientCmd;->SUBMIT:LcoeditCoreMessage/ClientCmd;

    return-object p0

    :cond_3
    sget-object p0, LcoeditCoreMessage/ClientCmd;->DISCONNECT:LcoeditCoreMessage/ClientCmd;

    return-object p0

    :cond_4
    sget-object p0, LcoeditCoreMessage/ClientCmd;->CONNECT:LcoeditCoreMessage/ClientCmd;

    return-object p0
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "LcoeditCoreMessage/ClientCmd;",
            ">;"
        }
    .end annotation

    sget-object v0, LcoeditCoreMessage/ClientCmd;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;
    .locals 1

    sget-object v0, LcoeditCoreMessage/ClientCmd$ClientCmdVerifier;->INSTANCE:Lcom/google/protobuf/Internal$EnumVerifier;

    return-object v0
.end method

.method public static valueOf(I)LcoeditCoreMessage/ClientCmd;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, LcoeditCoreMessage/ClientCmd;->forNumber(I)LcoeditCoreMessage/ClientCmd;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)LcoeditCoreMessage/ClientCmd;
    .locals 1

    const-class v0, LcoeditCoreMessage/ClientCmd;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LcoeditCoreMessage/ClientCmd;

    return-object p0
.end method

.method public static values()[LcoeditCoreMessage/ClientCmd;
    .locals 1

    sget-object v0, LcoeditCoreMessage/ClientCmd;->$VALUES:[LcoeditCoreMessage/ClientCmd;

    invoke-virtual {v0}, [LcoeditCoreMessage/ClientCmd;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LcoeditCoreMessage/ClientCmd;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 2

    sget-object v0, LcoeditCoreMessage/ClientCmd;->UNRECOGNIZED:LcoeditCoreMessage/ClientCmd;

    if-eq p0, v0, :cond_0

    iget v0, p0, LcoeditCoreMessage/ClientCmd;->value:I

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
