.class public final enum LcoeditCoreMessage/DeviceInfoChangeType;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LcoeditCoreMessage/DeviceInfoChangeType$DeviceInfoChangeTypeVerifier;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LcoeditCoreMessage/DeviceInfoChangeType;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LcoeditCoreMessage/DeviceInfoChangeType;

.field public static final enum DEVICE_CONNECT:LcoeditCoreMessage/DeviceInfoChangeType;

.field public static final DEVICE_CONNECT_VALUE:I = 0x0

.field public static final enum DEVICE_DISCONNECT:LcoeditCoreMessage/DeviceInfoChangeType;

.field public static final DEVICE_DISCONNECT_VALUE:I = 0x1

.field public static final enum DEVICE_PERMISSION_CHANGE:LcoeditCoreMessage/DeviceInfoChangeType;

.field public static final DEVICE_PERMISSION_CHANGE_VALUE:I = 0x2

.field public static final enum UNRECOGNIZED:LcoeditCoreMessage/DeviceInfoChangeType;

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "LcoeditCoreMessage/DeviceInfoChangeType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    new-instance v0, LcoeditCoreMessage/DeviceInfoChangeType;

    const-string v1, "DEVICE_CONNECT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, LcoeditCoreMessage/DeviceInfoChangeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, LcoeditCoreMessage/DeviceInfoChangeType;->DEVICE_CONNECT:LcoeditCoreMessage/DeviceInfoChangeType;

    new-instance v1, LcoeditCoreMessage/DeviceInfoChangeType;

    const-string v3, "DEVICE_DISCONNECT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, LcoeditCoreMessage/DeviceInfoChangeType;-><init>(Ljava/lang/String;II)V

    sput-object v1, LcoeditCoreMessage/DeviceInfoChangeType;->DEVICE_DISCONNECT:LcoeditCoreMessage/DeviceInfoChangeType;

    new-instance v3, LcoeditCoreMessage/DeviceInfoChangeType;

    const-string v5, "DEVICE_PERMISSION_CHANGE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, LcoeditCoreMessage/DeviceInfoChangeType;-><init>(Ljava/lang/String;II)V

    sput-object v3, LcoeditCoreMessage/DeviceInfoChangeType;->DEVICE_PERMISSION_CHANGE:LcoeditCoreMessage/DeviceInfoChangeType;

    new-instance v5, LcoeditCoreMessage/DeviceInfoChangeType;

    const-string v7, "UNRECOGNIZED"

    const/4 v8, 0x3

    const/4 v9, -0x1

    invoke-direct {v5, v7, v8, v9}, LcoeditCoreMessage/DeviceInfoChangeType;-><init>(Ljava/lang/String;II)V

    sput-object v5, LcoeditCoreMessage/DeviceInfoChangeType;->UNRECOGNIZED:LcoeditCoreMessage/DeviceInfoChangeType;

    const/4 v7, 0x4

    new-array v7, v7, [LcoeditCoreMessage/DeviceInfoChangeType;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, LcoeditCoreMessage/DeviceInfoChangeType;->$VALUES:[LcoeditCoreMessage/DeviceInfoChangeType;

    new-instance v0, LcoeditCoreMessage/DeviceInfoChangeType$1;

    invoke-direct {v0}, LcoeditCoreMessage/DeviceInfoChangeType$1;-><init>()V

    sput-object v0, LcoeditCoreMessage/DeviceInfoChangeType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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

    iput p3, p0, LcoeditCoreMessage/DeviceInfoChangeType;->value:I

    return-void
.end method

.method public static forNumber(I)LcoeditCoreMessage/DeviceInfoChangeType;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, LcoeditCoreMessage/DeviceInfoChangeType;->DEVICE_PERMISSION_CHANGE:LcoeditCoreMessage/DeviceInfoChangeType;

    return-object p0

    :cond_1
    sget-object p0, LcoeditCoreMessage/DeviceInfoChangeType;->DEVICE_DISCONNECT:LcoeditCoreMessage/DeviceInfoChangeType;

    return-object p0

    :cond_2
    sget-object p0, LcoeditCoreMessage/DeviceInfoChangeType;->DEVICE_CONNECT:LcoeditCoreMessage/DeviceInfoChangeType;

    return-object p0
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "LcoeditCoreMessage/DeviceInfoChangeType;",
            ">;"
        }
    .end annotation

    sget-object v0, LcoeditCoreMessage/DeviceInfoChangeType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;
    .locals 1

    sget-object v0, LcoeditCoreMessage/DeviceInfoChangeType$DeviceInfoChangeTypeVerifier;->INSTANCE:Lcom/google/protobuf/Internal$EnumVerifier;

    return-object v0
.end method

.method public static valueOf(I)LcoeditCoreMessage/DeviceInfoChangeType;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, LcoeditCoreMessage/DeviceInfoChangeType;->forNumber(I)LcoeditCoreMessage/DeviceInfoChangeType;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)LcoeditCoreMessage/DeviceInfoChangeType;
    .locals 1

    const-class v0, LcoeditCoreMessage/DeviceInfoChangeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LcoeditCoreMessage/DeviceInfoChangeType;

    return-object p0
.end method

.method public static values()[LcoeditCoreMessage/DeviceInfoChangeType;
    .locals 1

    sget-object v0, LcoeditCoreMessage/DeviceInfoChangeType;->$VALUES:[LcoeditCoreMessage/DeviceInfoChangeType;

    invoke-virtual {v0}, [LcoeditCoreMessage/DeviceInfoChangeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LcoeditCoreMessage/DeviceInfoChangeType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 2

    sget-object v0, LcoeditCoreMessage/DeviceInfoChangeType;->UNRECOGNIZED:LcoeditCoreMessage/DeviceInfoChangeType;

    if-eq p0, v0, :cond_0

    iget v0, p0, LcoeditCoreMessage/DeviceInfoChangeType;->value:I

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
