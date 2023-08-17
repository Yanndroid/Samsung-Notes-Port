.class public final enum Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$SourceType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SourceType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$SourceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$SourceType;

.field public static final enum COMPOSER:Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$SourceType;

.field public static final enum IMPORT:Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$SourceType;

.field public static final enum OTHERS:Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$SourceType;

.field public static final enum SMART_SWITCH:Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$SourceType;

.field public static final enum SYNC:Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$SourceType;


# instance fields
.field private final value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 12

    new-instance v0, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$SourceType;

    const-string v1, "COMPOSER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$SourceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$SourceType;->COMPOSER:Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$SourceType;

    new-instance v1, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$SourceType;

    const-string v3, "IMPORT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$SourceType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$SourceType;->IMPORT:Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$SourceType;

    new-instance v3, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$SourceType;

    const-string v5, "SMART_SWITCH"

    const/4 v6, 0x2

    const/4 v7, 0x3

    invoke-direct {v3, v5, v6, v7}, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$SourceType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$SourceType;->SMART_SWITCH:Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$SourceType;

    new-instance v5, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$SourceType;

    const-string v8, "SYNC"

    invoke-direct {v5, v8, v7, v6}, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$SourceType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$SourceType;->SYNC:Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$SourceType;

    new-instance v8, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$SourceType;

    const-string v9, "OTHERS"

    const/4 v10, 0x4

    const/4 v11, 0x5

    invoke-direct {v8, v9, v10, v11}, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$SourceType;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$SourceType;->OTHERS:Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$SourceType;

    new-array v9, v11, [Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$SourceType;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v7

    aput-object v8, v9, v10

    sput-object v9, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$SourceType;->$VALUES:[Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$SourceType;

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

    iput p3, p0, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$SourceType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$SourceType;
    .locals 1

    const-class v0, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$SourceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$SourceType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$SourceType;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$SourceType;->$VALUES:[Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$SourceType;

    invoke-virtual {v0}, [Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$SourceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$SourceType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$SourceType;->value:I

    return v0
.end method
