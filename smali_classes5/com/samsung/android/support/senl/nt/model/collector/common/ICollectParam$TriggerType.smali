.class public final enum Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$TriggerType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TriggerType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$TriggerType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$TriggerType;

.field public static final enum AUTO_TITLE:Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$TriggerType;

.field public static final enum SAVE:Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$TriggerType;

.field public static final enum UPDATE:Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$TriggerType;


# instance fields
.field private final value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$TriggerType;

    const-string v1, "SAVE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$TriggerType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$TriggerType;->SAVE:Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$TriggerType;

    new-instance v1, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$TriggerType;

    const-string v3, "UPDATE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$TriggerType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$TriggerType;->UPDATE:Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$TriggerType;

    new-instance v3, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$TriggerType;

    const-string v5, "AUTO_TITLE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$TriggerType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$TriggerType;->AUTO_TITLE:Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$TriggerType;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$TriggerType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$TriggerType;->$VALUES:[Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$TriggerType;

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

    iput p3, p0, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$TriggerType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$TriggerType;
    .locals 1

    const-class v0, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$TriggerType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$TriggerType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$TriggerType;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$TriggerType;->$VALUES:[Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$TriggerType;

    invoke-virtual {v0}, [Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$TriggerType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$TriggerType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$TriggerType;->value:I

    return v0
.end method
