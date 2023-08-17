.class public final enum Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$ResourceType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ResourceType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$ResourceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$ResourceType;

.field public static final enum ASSETS:Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$ResourceType;

.field public static final enum FILE:Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$ResourceType;

.field public static final enum FRAMEWORK:Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$ResourceType;

.field public static final enum UNKNOWN:Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$ResourceType;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$ResourceType;

    const-string v1, "FRAMEWORK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$ResourceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$ResourceType;->FRAMEWORK:Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$ResourceType;

    new-instance v1, Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$ResourceType;

    const-string v3, "ASSETS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$ResourceType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$ResourceType;->ASSETS:Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$ResourceType;

    new-instance v3, Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$ResourceType;

    const-string v5, "FILE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$ResourceType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$ResourceType;->FILE:Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$ResourceType;

    new-instance v5, Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$ResourceType;

    const-string v7, "UNKNOWN"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$ResourceType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$ResourceType;->UNKNOWN:Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$ResourceType;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$ResourceType;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$ResourceType;->$VALUES:[Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$ResourceType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$ResourceType;
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$ResourceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$ResourceType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$ResourceType;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$ResourceType;->$VALUES:[Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$ResourceType;

    invoke-virtual {v0}, [Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$ResourceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$ResourceType;

    return-object v0
.end method
