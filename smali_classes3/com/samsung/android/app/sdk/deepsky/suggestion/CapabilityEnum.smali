.class public final enum Lcom/samsung/android/app/sdk/deepsky/suggestion/CapabilityEnum;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/app/sdk/deepsky/suggestion/CapabilityEnum;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0012\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013j\u0002\u0008\u0014\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/samsung/android/app/sdk/deepsky/suggestion/CapabilityEnum;",
        "",
        "id",
        "",
        "(Ljava/lang/String;II)V",
        "getId",
        "()I",
        "UNKNOWN",
        "ENHANCED_IMAGE",
        "SMART_CAPTURE",
        "NEXT_ACTION",
        "UPCOMING_EVENT",
        "DAILY_ALARM",
        "MAYBE_EVENT",
        "PHOTO_STORIES",
        "WEARABLE_BATTERY_STATUS",
        "USER_CONTEXT_BASED_CONTENT",
        "APP_PREDICTION",
        "APP_ACTION_PREDICTION",
        "TIME_CONSTRAINT_SMART_CAPTURE",
        "TIME_CONSTRAINT_SELECTION_SUGGESTION",
        "deepsky-sdk-2.2.9_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/app/sdk/deepsky/suggestion/CapabilityEnum;

.field public static final enum APP_ACTION_PREDICTION:Lcom/samsung/android/app/sdk/deepsky/suggestion/CapabilityEnum;

.field public static final enum APP_PREDICTION:Lcom/samsung/android/app/sdk/deepsky/suggestion/CapabilityEnum;

.field public static final enum DAILY_ALARM:Lcom/samsung/android/app/sdk/deepsky/suggestion/CapabilityEnum;

.field public static final enum ENHANCED_IMAGE:Lcom/samsung/android/app/sdk/deepsky/suggestion/CapabilityEnum;

.field public static final enum MAYBE_EVENT:Lcom/samsung/android/app/sdk/deepsky/suggestion/CapabilityEnum;

.field public static final enum NEXT_ACTION:Lcom/samsung/android/app/sdk/deepsky/suggestion/CapabilityEnum;

.field public static final enum PHOTO_STORIES:Lcom/samsung/android/app/sdk/deepsky/suggestion/CapabilityEnum;

.field public static final enum SMART_CAPTURE:Lcom/samsung/android/app/sdk/deepsky/suggestion/CapabilityEnum;

.field public static final enum TIME_CONSTRAINT_SELECTION_SUGGESTION:Lcom/samsung/android/app/sdk/deepsky/suggestion/CapabilityEnum;

.field public static final enum TIME_CONSTRAINT_SMART_CAPTURE:Lcom/samsung/android/app/sdk/deepsky/suggestion/CapabilityEnum;

.field public static final enum UNKNOWN:Lcom/samsung/android/app/sdk/deepsky/suggestion/CapabilityEnum;

.field public static final enum UPCOMING_EVENT:Lcom/samsung/android/app/sdk/deepsky/suggestion/CapabilityEnum;

.field public static final enum USER_CONTEXT_BASED_CONTENT:Lcom/samsung/android/app/sdk/deepsky/suggestion/CapabilityEnum;

.field public static final enum WEARABLE_BATTERY_STATUS:Lcom/samsung/android/app/sdk/deepsky/suggestion/CapabilityEnum;


# instance fields
.field private final id:I


# direct methods
.method private static final synthetic $values()[Lcom/samsung/android/app/sdk/deepsky/suggestion/CapabilityEnum;
    .locals 3

    const/16 v0, 0xe

    new-array v0, v0, [Lcom/samsung/android/app/sdk/deepsky/suggestion/CapabilityEnum;

    sget-object v1, Lcom/samsung/android/app/sdk/deepsky/suggestion/CapabilityEnum;->UNKNOWN:Lcom/samsung/android/app/sdk/deepsky/suggestion/CapabilityEnum;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/app/sdk/deepsky/suggestion/CapabilityEnum;->ENHANCED_IMAGE:Lcom/samsung/android/app/sdk/deepsky/suggestion/CapabilityEnum;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/app/sdk/deepsky/suggestion/CapabilityEnum;->SMART_CAPTURE:Lcom/samsung/android/app/sdk/deepsky/suggestion/CapabilityEnum;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/app/sdk/deepsky/suggestion/CapabilityEnum;->NEXT_ACTION:Lcom/samsung/android/app/sdk/deepsky/suggestion/CapabilityEnum;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/app/sdk/deepsky/suggestion/CapabilityEnum;->UPCOMING_EVENT:Lcom/samsung/android/app/sdk/deepsky/suggestion/CapabilityEnum;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/app/sdk/deepsky/suggestion/CapabilityEnum;->DAILY_ALARM:Lcom/samsung/android/app/sdk/deepsky/suggestion/CapabilityEnum;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/app/sdk/deepsky/suggestion/CapabilityEnum;->MAYBE_EVENT:Lcom/samsung/android/app/sdk/deepsky/suggestion/CapabilityEnum;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/app/sdk/deepsky/suggestion/CapabilityEnum;->PHOTO_STORIES:Lcom/samsung/android/app/sdk/deepsky/suggestion/CapabilityEnum;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/app/sdk/deepsky/suggestion/CapabilityEnum;->WEARABLE_BATTERY_STATUS:Lcom/samsung/android/app/sdk/deepsky/suggestion/CapabilityEnum;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/app/sdk/deepsky/suggestion/CapabilityEnum;->USER_CONTEXT_BASED_CONTENT:Lcom/samsung/android/app/sdk/deepsky/suggestion/CapabilityEnum;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/app/sdk/deepsky/suggestion/CapabilityEnum;->APP_PREDICTION:Lcom/samsung/android/app/sdk/deepsky/suggestion/CapabilityEnum;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/app/sdk/deepsky/suggestion/CapabilityEnum;->APP_ACTION_PREDICTION:Lcom/samsung/android/app/sdk/deepsky/suggestion/CapabilityEnum;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/app/sdk/deepsky/suggestion/CapabilityEnum;->TIME_CONSTRAINT_SMART_CAPTURE:Lcom/samsung/android/app/sdk/deepsky/suggestion/CapabilityEnum;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/app/sdk/deepsky/suggestion/CapabilityEnum;->TIME_CONSTRAINT_SELECTION_SUGGESTION:Lcom/samsung/android/app/sdk/deepsky/suggestion/CapabilityEnum;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/suggestion/CapabilityEnum;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/app/sdk/deepsky/suggestion/CapabilityEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/app/sdk/deepsky/suggestion/CapabilityEnum;->UNKNOWN:Lcom/samsung/android/app/sdk/deepsky/suggestion/CapabilityEnum;

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/suggestion/CapabilityEnum;

    const-string v1, "ENHANCED_IMAGE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/app/sdk/deepsky/suggestion/CapabilityEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/app/sdk/deepsky/suggestion/CapabilityEnum;->ENHANCED_IMAGE:Lcom/samsung/android/app/sdk/deepsky/suggestion/CapabilityEnum;

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/suggestion/CapabilityEnum;

    const-string v1, "SMART_CAPTURE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/app/sdk/deepsky/suggestion/CapabilityEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/app/sdk/deepsky/suggestion/CapabilityEnum;->SMART_CAPTURE:Lcom/samsung/android/app/sdk/deepsky/suggestion/CapabilityEnum;

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/suggestion/CapabilityEnum;

    const-string v1, "NEXT_ACTION"

    const/4 v2, 0x3

    const/4 v3, 0x4

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/app/sdk/deepsky/suggestion/CapabilityEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/app/sdk/deepsky/suggestion/CapabilityEnum;->NEXT_ACTION:Lcom/samsung/android/app/sdk/deepsky/suggestion/CapabilityEnum;

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/suggestion/CapabilityEnum;

    const-string v1, "UPCOMING_EVENT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/android/app/sdk/deepsky/suggestion/CapabilityEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/app/sdk/deepsky/suggestion/CapabilityEnum;->UPCOMING_EVENT:Lcom/samsung/android/app/sdk/deepsky/suggestion/CapabilityEnum;

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/suggestion/CapabilityEnum;

    const-string v1, "DAILY_ALARM"

    const/4 v3, 0x5

    const/4 v4, 0x7

    invoke-direct {v0, v1, v3, v4}, Lcom/samsung/android/app/sdk/deepsky/suggestion/CapabilityEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/app/sdk/deepsky/suggestion/CapabilityEnum;->DAILY_ALARM:Lcom/samsung/android/app/sdk/deepsky/suggestion/CapabilityEnum;

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/suggestion/CapabilityEnum;

    const-string v1, "MAYBE_EVENT"

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/app/sdk/deepsky/suggestion/CapabilityEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/app/sdk/deepsky/suggestion/CapabilityEnum;->MAYBE_EVENT:Lcom/samsung/android/app/sdk/deepsky/suggestion/CapabilityEnum;

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/suggestion/CapabilityEnum;

    const-string v1, "PHOTO_STORIES"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v4, v2}, Lcom/samsung/android/app/sdk/deepsky/suggestion/CapabilityEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/app/sdk/deepsky/suggestion/CapabilityEnum;->PHOTO_STORIES:Lcom/samsung/android/app/sdk/deepsky/suggestion/CapabilityEnum;

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/suggestion/CapabilityEnum;

    const-string v1, "WEARABLE_BATTERY_STATUS"

    const/16 v4, 0x8

    const/16 v5, 0xd

    invoke-direct {v0, v1, v4, v5}, Lcom/samsung/android/app/sdk/deepsky/suggestion/CapabilityEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/app/sdk/deepsky/suggestion/CapabilityEnum;->WEARABLE_BATTERY_STATUS:Lcom/samsung/android/app/sdk/deepsky/suggestion/CapabilityEnum;

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/suggestion/CapabilityEnum;

    const-string v1, "USER_CONTEXT_BASED_CONTENT"

    const/16 v4, 0x9

    const/16 v6, 0xe

    invoke-direct {v0, v1, v4, v6}, Lcom/samsung/android/app/sdk/deepsky/suggestion/CapabilityEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/app/sdk/deepsky/suggestion/CapabilityEnum;->USER_CONTEXT_BASED_CONTENT:Lcom/samsung/android/app/sdk/deepsky/suggestion/CapabilityEnum;

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/suggestion/CapabilityEnum;

    const-string v1, "APP_PREDICTION"

    const/16 v4, 0xf

    invoke-direct {v0, v1, v3, v4}, Lcom/samsung/android/app/sdk/deepsky/suggestion/CapabilityEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/app/sdk/deepsky/suggestion/CapabilityEnum;->APP_PREDICTION:Lcom/samsung/android/app/sdk/deepsky/suggestion/CapabilityEnum;

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/suggestion/CapabilityEnum;

    const-string v1, "APP_ACTION_PREDICTION"

    const/16 v3, 0xb

    const/16 v4, 0x10

    invoke-direct {v0, v1, v3, v4}, Lcom/samsung/android/app/sdk/deepsky/suggestion/CapabilityEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/app/sdk/deepsky/suggestion/CapabilityEnum;->APP_ACTION_PREDICTION:Lcom/samsung/android/app/sdk/deepsky/suggestion/CapabilityEnum;

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/suggestion/CapabilityEnum;

    const-string v1, "TIME_CONSTRAINT_SMART_CAPTURE"

    const/16 v3, 0x3e8

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/app/sdk/deepsky/suggestion/CapabilityEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/app/sdk/deepsky/suggestion/CapabilityEnum;->TIME_CONSTRAINT_SMART_CAPTURE:Lcom/samsung/android/app/sdk/deepsky/suggestion/CapabilityEnum;

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/suggestion/CapabilityEnum;

    const-string v1, "TIME_CONSTRAINT_SELECTION_SUGGESTION"

    const/16 v2, 0x3e9

    invoke-direct {v0, v1, v5, v2}, Lcom/samsung/android/app/sdk/deepsky/suggestion/CapabilityEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/app/sdk/deepsky/suggestion/CapabilityEnum;->TIME_CONSTRAINT_SELECTION_SUGGESTION:Lcom/samsung/android/app/sdk/deepsky/suggestion/CapabilityEnum;

    invoke-static {}, Lcom/samsung/android/app/sdk/deepsky/suggestion/CapabilityEnum;->$values()[Lcom/samsung/android/app/sdk/deepsky/suggestion/CapabilityEnum;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/sdk/deepsky/suggestion/CapabilityEnum;->$VALUES:[Lcom/samsung/android/app/sdk/deepsky/suggestion/CapabilityEnum;

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

    iput p3, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/CapabilityEnum;->id:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/app/sdk/deepsky/suggestion/CapabilityEnum;
    .locals 1

    const-class v0, Lcom/samsung/android/app/sdk/deepsky/suggestion/CapabilityEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/CapabilityEnum;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/app/sdk/deepsky/suggestion/CapabilityEnum;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/sdk/deepsky/suggestion/CapabilityEnum;->$VALUES:[Lcom/samsung/android/app/sdk/deepsky/suggestion/CapabilityEnum;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/app/sdk/deepsky/suggestion/CapabilityEnum;

    return-object v0
.end method


# virtual methods
.method public final getId()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/CapabilityEnum;->id:I

    return v0
.end method
