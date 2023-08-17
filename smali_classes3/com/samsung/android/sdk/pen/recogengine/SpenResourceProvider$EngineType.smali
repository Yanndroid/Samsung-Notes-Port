.class public final enum Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$EngineType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EngineType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$EngineType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$EngineType;

.field public static final enum DOCUMENT:Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$EngineType;

.field public static final enum MATH:Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$EngineType;

.field public static final enum SHAPE:Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$EngineType;

.field public static final enum TEXT:Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$EngineType;

.field public static final enum UNKNOWN:Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$EngineType;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$EngineType;

    const-string v1, "TEXT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$EngineType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$EngineType;->TEXT:Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$EngineType;

    new-instance v1, Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$EngineType;

    const-string v3, "DOCUMENT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$EngineType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$EngineType;->DOCUMENT:Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$EngineType;

    new-instance v3, Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$EngineType;

    const-string v5, "SHAPE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$EngineType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$EngineType;->SHAPE:Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$EngineType;

    new-instance v5, Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$EngineType;

    const-string v7, "MATH"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$EngineType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$EngineType;->MATH:Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$EngineType;

    new-instance v7, Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$EngineType;

    const-string v9, "UNKNOWN"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$EngineType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$EngineType;->UNKNOWN:Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$EngineType;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$EngineType;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$EngineType;->$VALUES:[Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$EngineType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$EngineType;
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$EngineType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$EngineType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$EngineType;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$EngineType;->$VALUES:[Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$EngineType;

    invoke-virtual {v0}, [Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$EngineType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$EngineType;

    return-object v0
.end method
