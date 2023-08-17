.class public final enum Lcom/samsung/android/sdk/smp/common/constants/MarketingState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/sdk/smp/common/constants/MarketingState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/sdk/smp/common/constants/MarketingState;

.field public static final enum CANCELED:Lcom/samsung/android/sdk/smp/common/constants/MarketingState;

.field public static final enum DISPLAYED:Lcom/samsung/android/sdk/smp/common/constants/MarketingState;

.field public static final enum FAILED:Lcom/samsung/android/sdk/smp/common/constants/MarketingState;

.field public static final enum GONE:Lcom/samsung/android/sdk/smp/common/constants/MarketingState;

.field public static final enum INCOMP_DISPLAY:Lcom/samsung/android/sdk/smp/common/constants/MarketingState;

.field public static final enum INCOMP_GET_STATUS_API:Lcom/samsung/android/sdk/smp/common/constants/MarketingState;

.field public static final enum INCOMP_RESOURCE:Lcom/samsung/android/sdk/smp/common/constants/MarketingState;


# direct methods
.method private static synthetic $values()[Lcom/samsung/android/sdk/smp/common/constants/MarketingState;
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/samsung/android/sdk/smp/common/constants/MarketingState;

    sget-object v1, Lcom/samsung/android/sdk/smp/common/constants/MarketingState;->INCOMP_RESOURCE:Lcom/samsung/android/sdk/smp/common/constants/MarketingState;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/sdk/smp/common/constants/MarketingState;->INCOMP_GET_STATUS_API:Lcom/samsung/android/sdk/smp/common/constants/MarketingState;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/sdk/smp/common/constants/MarketingState;->INCOMP_DISPLAY:Lcom/samsung/android/sdk/smp/common/constants/MarketingState;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/sdk/smp/common/constants/MarketingState;->DISPLAYED:Lcom/samsung/android/sdk/smp/common/constants/MarketingState;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/sdk/smp/common/constants/MarketingState;->GONE:Lcom/samsung/android/sdk/smp/common/constants/MarketingState;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/sdk/smp/common/constants/MarketingState;->FAILED:Lcom/samsung/android/sdk/smp/common/constants/MarketingState;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/sdk/smp/common/constants/MarketingState;->CANCELED:Lcom/samsung/android/sdk/smp/common/constants/MarketingState;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/samsung/android/sdk/smp/common/constants/MarketingState;

    const-string v1, "INCOMP_RESOURCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/smp/common/constants/MarketingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/smp/common/constants/MarketingState;->INCOMP_RESOURCE:Lcom/samsung/android/sdk/smp/common/constants/MarketingState;

    new-instance v0, Lcom/samsung/android/sdk/smp/common/constants/MarketingState;

    const-string v1, "INCOMP_GET_STATUS_API"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/smp/common/constants/MarketingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/smp/common/constants/MarketingState;->INCOMP_GET_STATUS_API:Lcom/samsung/android/sdk/smp/common/constants/MarketingState;

    new-instance v0, Lcom/samsung/android/sdk/smp/common/constants/MarketingState;

    const-string v1, "INCOMP_DISPLAY"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/smp/common/constants/MarketingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/smp/common/constants/MarketingState;->INCOMP_DISPLAY:Lcom/samsung/android/sdk/smp/common/constants/MarketingState;

    new-instance v0, Lcom/samsung/android/sdk/smp/common/constants/MarketingState;

    const-string v1, "DISPLAYED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/smp/common/constants/MarketingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/smp/common/constants/MarketingState;->DISPLAYED:Lcom/samsung/android/sdk/smp/common/constants/MarketingState;

    new-instance v0, Lcom/samsung/android/sdk/smp/common/constants/MarketingState;

    const-string v1, "GONE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/smp/common/constants/MarketingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/smp/common/constants/MarketingState;->GONE:Lcom/samsung/android/sdk/smp/common/constants/MarketingState;

    new-instance v0, Lcom/samsung/android/sdk/smp/common/constants/MarketingState;

    const-string v1, "FAILED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/smp/common/constants/MarketingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/smp/common/constants/MarketingState;->FAILED:Lcom/samsung/android/sdk/smp/common/constants/MarketingState;

    new-instance v0, Lcom/samsung/android/sdk/smp/common/constants/MarketingState;

    const-string v1, "CANCELED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/smp/common/constants/MarketingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/smp/common/constants/MarketingState;->CANCELED:Lcom/samsung/android/sdk/smp/common/constants/MarketingState;

    invoke-static {}, Lcom/samsung/android/sdk/smp/common/constants/MarketingState;->$values()[Lcom/samsung/android/sdk/smp/common/constants/MarketingState;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/smp/common/constants/MarketingState;->$VALUES:[Lcom/samsung/android/sdk/smp/common/constants/MarketingState;

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

.method public static fromString(Ljava/lang/String;)Lcom/samsung/android/sdk/smp/common/constants/MarketingState;
    .locals 3

    const-class v0, Lcom/samsung/android/sdk/smp/common/constants/MarketingState;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/smp/common/constants/MarketingState;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/smp/common/constants/MarketingState;
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/smp/common/constants/MarketingState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sdk/smp/common/constants/MarketingState;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/sdk/smp/common/constants/MarketingState;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/smp/common/constants/MarketingState;->$VALUES:[Lcom/samsung/android/sdk/smp/common/constants/MarketingState;

    invoke-virtual {v0}, [Lcom/samsung/android/sdk/smp/common/constants/MarketingState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/smp/common/constants/MarketingState;

    return-object v0
.end method
