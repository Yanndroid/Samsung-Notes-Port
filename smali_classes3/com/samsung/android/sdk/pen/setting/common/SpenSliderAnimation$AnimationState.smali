.class enum Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation$AnimationState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = "AnimationState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation$AnimationState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation$AnimationState;

.field public static final enum ENDING:Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation$AnimationState;

.field public static final enum EXPEND:Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation$AnimationState;

.field public static final enum NORMAL:Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation$AnimationState;

.field public static final enum STARTING:Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation$AnimationState;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation$AnimationState$1;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation$AnimationState$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation$AnimationState;->NORMAL:Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation$AnimationState;

    new-instance v1, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation$AnimationState$2;

    const-string v3, "STARTING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation$AnimationState$2;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation$AnimationState;->STARTING:Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation$AnimationState;

    new-instance v3, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation$AnimationState$3;

    const-string v5, "EXPEND"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation$AnimationState$3;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation$AnimationState;->EXPEND:Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation$AnimationState;

    new-instance v5, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation$AnimationState$4;

    const-string v7, "ENDING"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation$AnimationState$4;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation$AnimationState;->ENDING:Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation$AnimationState;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation$AnimationState;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation$AnimationState;->$VALUES:[Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation$AnimationState;

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

.method public synthetic constructor <init>(Ljava/lang/String;ILcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation$AnimationState;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation$AnimationState;
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation$AnimationState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation$AnimationState;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation$AnimationState;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation$AnimationState;->$VALUES:[Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation$AnimationState;

    invoke-virtual {v0}, [Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation$AnimationState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation$AnimationState;

    return-object v0
.end method
