.class final enum Lcom/samsung/android/sdk/mobileservice/SessionErrorCode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/sdk/mobileservice/SessionErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/sdk/mobileservice/SessionErrorCode;

.field public static final enum CAUSE_AGENT_DISABLED:Lcom/samsung/android/sdk/mobileservice/SessionErrorCode;

.field public static final enum CAUSE_AGENT_FORCE_UPDATE_REQUIRED:Lcom/samsung/android/sdk/mobileservice/SessionErrorCode;

.field public static final enum CAUSE_AGENT_NOT_AVAILABLE:Lcom/samsung/android/sdk/mobileservice/SessionErrorCode;

.field public static final enum CAUSE_AGENT_NOT_INSTALLED:Lcom/samsung/android/sdk/mobileservice/SessionErrorCode;

.field public static final enum CAUSE_AGENT_OLD_VERSION:Lcom/samsung/android/sdk/mobileservice/SessionErrorCode;

.field public static final enum CAUSE_CONNECT_CANCELED:Lcom/samsung/android/sdk/mobileservice/SessionErrorCode;

.field public static final enum CAUSE_CONNECT_TIMEOUT:Lcom/samsung/android/sdk/mobileservice/SessionErrorCode;

.field public static final enum CAUSE_SDK_OLD_VERSION:Lcom/samsung/android/sdk/mobileservice/SessionErrorCode;

.field public static final enum CAUSE_UNDEFINED:Lcom/samsung/android/sdk/mobileservice/SessionErrorCode;

.field public static final enum NO_PROBLEM:Lcom/samsung/android/sdk/mobileservice/SessionErrorCode;


# instance fields
.field private mPriority:I

.field private mValue:I


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/samsung/android/sdk/mobileservice/SessionErrorCode;

    const-string v1, "NO_PROBLEM"

    const/4 v2, 0x0

    const/16 v3, 0x64

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/samsung/android/sdk/mobileservice/SessionErrorCode;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/samsung/android/sdk/mobileservice/SessionErrorCode;->NO_PROBLEM:Lcom/samsung/android/sdk/mobileservice/SessionErrorCode;

    new-instance v1, Lcom/samsung/android/sdk/mobileservice/SessionErrorCode;

    const-string v3, "CAUSE_AGENT_NOT_INSTALLED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4, v2}, Lcom/samsung/android/sdk/mobileservice/SessionErrorCode;-><init>(Ljava/lang/String;III)V

    sput-object v1, Lcom/samsung/android/sdk/mobileservice/SessionErrorCode;->CAUSE_AGENT_NOT_INSTALLED:Lcom/samsung/android/sdk/mobileservice/SessionErrorCode;

    new-instance v3, Lcom/samsung/android/sdk/mobileservice/SessionErrorCode;

    const-string v5, "CAUSE_AGENT_DISABLED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6, v4}, Lcom/samsung/android/sdk/mobileservice/SessionErrorCode;-><init>(Ljava/lang/String;III)V

    sput-object v3, Lcom/samsung/android/sdk/mobileservice/SessionErrorCode;->CAUSE_AGENT_DISABLED:Lcom/samsung/android/sdk/mobileservice/SessionErrorCode;

    new-instance v5, Lcom/samsung/android/sdk/mobileservice/SessionErrorCode;

    const-string v7, "CAUSE_AGENT_NOT_AVAILABLE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8, v6}, Lcom/samsung/android/sdk/mobileservice/SessionErrorCode;-><init>(Ljava/lang/String;III)V

    sput-object v5, Lcom/samsung/android/sdk/mobileservice/SessionErrorCode;->CAUSE_AGENT_NOT_AVAILABLE:Lcom/samsung/android/sdk/mobileservice/SessionErrorCode;

    new-instance v7, Lcom/samsung/android/sdk/mobileservice/SessionErrorCode;

    const-string v9, "CAUSE_AGENT_OLD_VERSION"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10, v8}, Lcom/samsung/android/sdk/mobileservice/SessionErrorCode;-><init>(Ljava/lang/String;III)V

    sput-object v7, Lcom/samsung/android/sdk/mobileservice/SessionErrorCode;->CAUSE_AGENT_OLD_VERSION:Lcom/samsung/android/sdk/mobileservice/SessionErrorCode;

    new-instance v9, Lcom/samsung/android/sdk/mobileservice/SessionErrorCode;

    const-string v11, "CAUSE_SDK_OLD_VERSION"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12, v10}, Lcom/samsung/android/sdk/mobileservice/SessionErrorCode;-><init>(Ljava/lang/String;III)V

    sput-object v9, Lcom/samsung/android/sdk/mobileservice/SessionErrorCode;->CAUSE_SDK_OLD_VERSION:Lcom/samsung/android/sdk/mobileservice/SessionErrorCode;

    new-instance v11, Lcom/samsung/android/sdk/mobileservice/SessionErrorCode;

    const-string v13, "CAUSE_CONNECT_CANCELED"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14, v12}, Lcom/samsung/android/sdk/mobileservice/SessionErrorCode;-><init>(Ljava/lang/String;III)V

    sput-object v11, Lcom/samsung/android/sdk/mobileservice/SessionErrorCode;->CAUSE_CONNECT_CANCELED:Lcom/samsung/android/sdk/mobileservice/SessionErrorCode;

    new-instance v13, Lcom/samsung/android/sdk/mobileservice/SessionErrorCode;

    const-string v15, "CAUSE_CONNECT_TIMEOUT"

    const/4 v12, 0x7

    invoke-direct {v13, v15, v12, v12, v14}, Lcom/samsung/android/sdk/mobileservice/SessionErrorCode;-><init>(Ljava/lang/String;III)V

    sput-object v13, Lcom/samsung/android/sdk/mobileservice/SessionErrorCode;->CAUSE_CONNECT_TIMEOUT:Lcom/samsung/android/sdk/mobileservice/SessionErrorCode;

    new-instance v15, Lcom/samsung/android/sdk/mobileservice/SessionErrorCode;

    const-string v14, "CAUSE_AGENT_FORCE_UPDATE_REQUIRED"

    const/16 v10, 0x8

    invoke-direct {v15, v14, v10, v10, v12}, Lcom/samsung/android/sdk/mobileservice/SessionErrorCode;-><init>(Ljava/lang/String;III)V

    sput-object v15, Lcom/samsung/android/sdk/mobileservice/SessionErrorCode;->CAUSE_AGENT_FORCE_UPDATE_REQUIRED:Lcom/samsung/android/sdk/mobileservice/SessionErrorCode;

    new-instance v14, Lcom/samsung/android/sdk/mobileservice/SessionErrorCode;

    const-string v10, "CAUSE_UNDEFINED"

    const/16 v12, 0x9

    const/16 v8, 0x63

    invoke-direct {v14, v10, v12, v8, v2}, Lcom/samsung/android/sdk/mobileservice/SessionErrorCode;-><init>(Ljava/lang/String;III)V

    sput-object v14, Lcom/samsung/android/sdk/mobileservice/SessionErrorCode;->CAUSE_UNDEFINED:Lcom/samsung/android/sdk/mobileservice/SessionErrorCode;

    const/16 v8, 0xa

    new-array v8, v8, [Lcom/samsung/android/sdk/mobileservice/SessionErrorCode;

    aput-object v0, v8, v2

    aput-object v1, v8, v4

    aput-object v3, v8, v6

    const/4 v0, 0x3

    aput-object v5, v8, v0

    const/4 v0, 0x4

    aput-object v7, v8, v0

    const/4 v0, 0x5

    aput-object v9, v8, v0

    const/4 v0, 0x6

    aput-object v11, v8, v0

    const/4 v0, 0x7

    aput-object v13, v8, v0

    const/16 v0, 0x8

    aput-object v15, v8, v0

    aput-object v14, v8, v12

    sput-object v8, Lcom/samsung/android/sdk/mobileservice/SessionErrorCode;->$VALUES:[Lcom/samsung/android/sdk/mobileservice/SessionErrorCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/samsung/android/sdk/mobileservice/SessionErrorCode;->mValue:I

    iput p4, p0, Lcom/samsung/android/sdk/mobileservice/SessionErrorCode;->mPriority:I

    return-void
.end method

.method public static getErrorCode(I)Lcom/samsung/android/sdk/mobileservice/SessionErrorCode;
    .locals 5

    invoke-static {}, Lcom/samsung/android/sdk/mobileservice/SessionErrorCode;->values()[Lcom/samsung/android/sdk/mobileservice/SessionErrorCode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/samsung/android/sdk/mobileservice/SessionErrorCode;->getValue()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/mobileservice/SessionErrorCode;
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/mobileservice/SessionErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sdk/mobileservice/SessionErrorCode;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/sdk/mobileservice/SessionErrorCode;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/mobileservice/SessionErrorCode;->$VALUES:[Lcom/samsung/android/sdk/mobileservice/SessionErrorCode;

    invoke-virtual {v0}, [Lcom/samsung/android/sdk/mobileservice/SessionErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/mobileservice/SessionErrorCode;

    return-object v0
.end method


# virtual methods
.method public comparePriority(Lcom/samsung/android/sdk/mobileservice/SessionErrorCode;)I
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/mobileservice/SessionErrorCode;->mPriority:I

    invoke-virtual {p1}, Lcom/samsung/android/sdk/mobileservice/SessionErrorCode;->getPriority()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    iget v0, p0, Lcom/samsung/android/sdk/mobileservice/SessionErrorCode;->mPriority:I

    invoke-virtual {p1}, Lcom/samsung/android/sdk/mobileservice/SessionErrorCode;->getPriority()I

    move-result p1

    if-ne v0, p1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public getPriority()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/mobileservice/SessionErrorCode;->mPriority:I

    return v0
.end method

.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/mobileservice/SessionErrorCode;->mValue:I

    return v0
.end method
