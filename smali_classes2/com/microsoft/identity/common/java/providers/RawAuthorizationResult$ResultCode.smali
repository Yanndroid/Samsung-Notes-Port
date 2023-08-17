.class public final enum Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$ResultCode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ResultCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$ResultCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$ResultCode;

.field public static final enum BROKER_INSTALLATION_TRIGGERED:Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$ResultCode;

.field public static final enum CANCELLED:Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$ResultCode;

.field public static final enum COMPLETED:Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$ResultCode;

.field public static final enum DEVICE_REGISTRATION_REQUIRED:Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$ResultCode;

.field public static final enum MDM_FLOW:Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$ResultCode;

.field public static final enum NON_OAUTH_ERROR:Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$ResultCode;

.field public static final enum SDK_CANCELLED:Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$ResultCode;

.field public static final enum UNKNOWN:Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$ResultCode;


# instance fields
.field private final mCode:I


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$ResultCode;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$ResultCode;->UNKNOWN:Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$ResultCode;

    new-instance v1, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$ResultCode;

    const-string v3, "CANCELLED"

    const/4 v4, 0x1

    const/16 v5, 0x7d1

    invoke-direct {v1, v3, v4, v5}, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$ResultCode;->CANCELLED:Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$ResultCode;

    new-instance v3, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$ResultCode;

    const-string v5, "NON_OAUTH_ERROR"

    const/4 v6, 0x2

    const/16 v7, 0x7d2

    invoke-direct {v3, v5, v6, v7}, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$ResultCode;->NON_OAUTH_ERROR:Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$ResultCode;

    new-instance v5, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$ResultCode;

    const-string v7, "COMPLETED"

    const/4 v8, 0x3

    const/16 v9, 0x7d3

    invoke-direct {v5, v7, v8, v9}, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$ResultCode;->COMPLETED:Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$ResultCode;

    new-instance v7, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$ResultCode;

    const-string v9, "BROKER_INSTALLATION_TRIGGERED"

    const/4 v10, 0x4

    const/16 v11, 0x7d6

    invoke-direct {v7, v9, v10, v11}, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$ResultCode;->BROKER_INSTALLATION_TRIGGERED:Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$ResultCode;

    new-instance v9, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$ResultCode;

    const-string v11, "DEVICE_REGISTRATION_REQUIRED"

    const/4 v12, 0x5

    const/16 v13, 0x7d7

    invoke-direct {v9, v11, v12, v13}, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$ResultCode;->DEVICE_REGISTRATION_REQUIRED:Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$ResultCode;

    new-instance v11, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$ResultCode;

    const-string v13, "SDK_CANCELLED"

    const/4 v14, 0x6

    const/16 v15, 0x7d8

    invoke-direct {v11, v13, v14, v15}, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$ResultCode;->SDK_CANCELLED:Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$ResultCode;

    new-instance v13, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$ResultCode;

    const-string v15, "MDM_FLOW"

    const/4 v14, 0x7

    const/16 v12, 0x7d9

    invoke-direct {v13, v15, v14, v12}, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$ResultCode;->MDM_FLOW:Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$ResultCode;

    const/16 v12, 0x8

    new-array v12, v12, [Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$ResultCode;

    aput-object v0, v12, v2

    aput-object v1, v12, v4

    aput-object v3, v12, v6

    aput-object v5, v12, v8

    aput-object v7, v12, v10

    const/4 v0, 0x5

    aput-object v9, v12, v0

    const/4 v0, 0x6

    aput-object v11, v12, v0

    aput-object v13, v12, v14

    sput-object v12, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$ResultCode;->$VALUES:[Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$ResultCode;

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

    iput p3, p0, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$ResultCode;->mCode:I

    return-void
.end method

.method public static synthetic access$400(Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$ResultCode;)I
    .locals 0

    iget p0, p0, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$ResultCode;->mCode:I

    return p0
.end method

.method public static fromInteger(Ljava/lang/Integer;)Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$ResultCode;
    .locals 6
    .param p0    # Ljava/lang/Integer;
        .annotation build Ledu/umd/cs/findbugs/annotations/Nullable;
        .end annotation
    .end param

    if-nez p0, :cond_0

    sget-object p0, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$ResultCode;->UNKNOWN:Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$ResultCode;

    return-object p0

    :cond_0
    invoke-static {}, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$ResultCode;->values()[Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$ResultCode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    iget v4, v3, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$ResultCode;->mCode:I

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v4, v5, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$ResultCode;
    .locals 1

    const-class v0, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$ResultCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$ResultCode;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$ResultCode;
    .locals 1

    sget-object v0, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$ResultCode;->$VALUES:[Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$ResultCode;

    invoke-virtual {v0}, [Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$ResultCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$ResultCode;

    return-object v0
.end method
