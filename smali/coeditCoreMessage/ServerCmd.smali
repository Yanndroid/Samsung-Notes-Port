.class public final enum LcoeditCoreMessage/ServerCmd;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LcoeditCoreMessage/ServerCmd$ServerCmdVerifier;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LcoeditCoreMessage/ServerCmd;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LcoeditCoreMessage/ServerCmd;

.field public static final enum DISCONNECT_BY_EVENT:LcoeditCoreMessage/ServerCmd;

.field public static final DISCONNECT_BY_EVENT_VALUE:I = 0x3

.field public static final enum HEALTH_CHECK:LcoeditCoreMessage/ServerCmd;

.field public static final HEALTH_CHECK_VALUE:I = 0x2

.field public static final enum NOTIFY:LcoeditCoreMessage/ServerCmd;

.field public static final NOTIFY_VALUE:I = 0x1

.field public static final enum RESPOND_DEVICE_LIST:LcoeditCoreMessage/ServerCmd;

.field public static final RESPOND_DEVICE_LIST_VALUE:I = 0x4

.field public static final enum RESPONSE:LcoeditCoreMessage/ServerCmd;

.field public static final RESPONSE_VALUE:I = 0x0

.field public static final enum UNRECOGNIZED:LcoeditCoreMessage/ServerCmd;

.field public static final enum WORKSPACE_BLOCK_STATE_CHANGE:LcoeditCoreMessage/ServerCmd;

.field public static final WORKSPACE_BLOCK_STATE_CHANGE_VALUE:I = 0x5

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "LcoeditCoreMessage/ServerCmd;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    new-instance v0, LcoeditCoreMessage/ServerCmd;

    const-string v1, "RESPONSE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, LcoeditCoreMessage/ServerCmd;-><init>(Ljava/lang/String;II)V

    sput-object v0, LcoeditCoreMessage/ServerCmd;->RESPONSE:LcoeditCoreMessage/ServerCmd;

    new-instance v1, LcoeditCoreMessage/ServerCmd;

    const-string v3, "NOTIFY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, LcoeditCoreMessage/ServerCmd;-><init>(Ljava/lang/String;II)V

    sput-object v1, LcoeditCoreMessage/ServerCmd;->NOTIFY:LcoeditCoreMessage/ServerCmd;

    new-instance v3, LcoeditCoreMessage/ServerCmd;

    const-string v5, "HEALTH_CHECK"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, LcoeditCoreMessage/ServerCmd;-><init>(Ljava/lang/String;II)V

    sput-object v3, LcoeditCoreMessage/ServerCmd;->HEALTH_CHECK:LcoeditCoreMessage/ServerCmd;

    new-instance v5, LcoeditCoreMessage/ServerCmd;

    const-string v7, "DISCONNECT_BY_EVENT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, LcoeditCoreMessage/ServerCmd;-><init>(Ljava/lang/String;II)V

    sput-object v5, LcoeditCoreMessage/ServerCmd;->DISCONNECT_BY_EVENT:LcoeditCoreMessage/ServerCmd;

    new-instance v7, LcoeditCoreMessage/ServerCmd;

    const-string v9, "RESPOND_DEVICE_LIST"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, LcoeditCoreMessage/ServerCmd;-><init>(Ljava/lang/String;II)V

    sput-object v7, LcoeditCoreMessage/ServerCmd;->RESPOND_DEVICE_LIST:LcoeditCoreMessage/ServerCmd;

    new-instance v9, LcoeditCoreMessage/ServerCmd;

    const-string v11, "WORKSPACE_BLOCK_STATE_CHANGE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, LcoeditCoreMessage/ServerCmd;-><init>(Ljava/lang/String;II)V

    sput-object v9, LcoeditCoreMessage/ServerCmd;->WORKSPACE_BLOCK_STATE_CHANGE:LcoeditCoreMessage/ServerCmd;

    new-instance v11, LcoeditCoreMessage/ServerCmd;

    const-string v13, "UNRECOGNIZED"

    const/4 v14, 0x6

    const/4 v15, -0x1

    invoke-direct {v11, v13, v14, v15}, LcoeditCoreMessage/ServerCmd;-><init>(Ljava/lang/String;II)V

    sput-object v11, LcoeditCoreMessage/ServerCmd;->UNRECOGNIZED:LcoeditCoreMessage/ServerCmd;

    const/4 v13, 0x7

    new-array v13, v13, [LcoeditCoreMessage/ServerCmd;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    sput-object v13, LcoeditCoreMessage/ServerCmd;->$VALUES:[LcoeditCoreMessage/ServerCmd;

    new-instance v0, LcoeditCoreMessage/ServerCmd$1;

    invoke-direct {v0}, LcoeditCoreMessage/ServerCmd$1;-><init>()V

    sput-object v0, LcoeditCoreMessage/ServerCmd;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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

    iput p3, p0, LcoeditCoreMessage/ServerCmd;->value:I

    return-void
.end method

.method public static forNumber(I)LcoeditCoreMessage/ServerCmd;
    .locals 1

    if-eqz p0, :cond_5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, LcoeditCoreMessage/ServerCmd;->WORKSPACE_BLOCK_STATE_CHANGE:LcoeditCoreMessage/ServerCmd;

    return-object p0

    :cond_1
    sget-object p0, LcoeditCoreMessage/ServerCmd;->RESPOND_DEVICE_LIST:LcoeditCoreMessage/ServerCmd;

    return-object p0

    :cond_2
    sget-object p0, LcoeditCoreMessage/ServerCmd;->DISCONNECT_BY_EVENT:LcoeditCoreMessage/ServerCmd;

    return-object p0

    :cond_3
    sget-object p0, LcoeditCoreMessage/ServerCmd;->HEALTH_CHECK:LcoeditCoreMessage/ServerCmd;

    return-object p0

    :cond_4
    sget-object p0, LcoeditCoreMessage/ServerCmd;->NOTIFY:LcoeditCoreMessage/ServerCmd;

    return-object p0

    :cond_5
    sget-object p0, LcoeditCoreMessage/ServerCmd;->RESPONSE:LcoeditCoreMessage/ServerCmd;

    return-object p0
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "LcoeditCoreMessage/ServerCmd;",
            ">;"
        }
    .end annotation

    sget-object v0, LcoeditCoreMessage/ServerCmd;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;
    .locals 1

    sget-object v0, LcoeditCoreMessage/ServerCmd$ServerCmdVerifier;->INSTANCE:Lcom/google/protobuf/Internal$EnumVerifier;

    return-object v0
.end method

.method public static valueOf(I)LcoeditCoreMessage/ServerCmd;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, LcoeditCoreMessage/ServerCmd;->forNumber(I)LcoeditCoreMessage/ServerCmd;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)LcoeditCoreMessage/ServerCmd;
    .locals 1

    const-class v0, LcoeditCoreMessage/ServerCmd;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LcoeditCoreMessage/ServerCmd;

    return-object p0
.end method

.method public static values()[LcoeditCoreMessage/ServerCmd;
    .locals 1

    sget-object v0, LcoeditCoreMessage/ServerCmd;->$VALUES:[LcoeditCoreMessage/ServerCmd;

    invoke-virtual {v0}, [LcoeditCoreMessage/ServerCmd;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LcoeditCoreMessage/ServerCmd;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 2

    sget-object v0, LcoeditCoreMessage/ServerCmd;->UNRECOGNIZED:LcoeditCoreMessage/ServerCmd;

    if-eq p0, v0, :cond_0

    iget v0, p0, LcoeditCoreMessage/ServerCmd;->value:I

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
