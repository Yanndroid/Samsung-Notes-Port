.class final enum Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl$ControlType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ControlType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl$ControlType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl$ControlType;

.field public static final enum ATTRIBUTE:Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl$ControlType;

.field public static final enum COLOR:Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl$ControlType;

.field public static final enum PATTERN:Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl$ControlType;

.field public static final enum PEN:Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl$ControlType;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl$ControlType;

    const-string v1, "PEN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl$ControlType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl$ControlType;->PEN:Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl$ControlType;

    new-instance v1, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl$ControlType;

    const-string v3, "ATTRIBUTE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl$ControlType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl$ControlType;->ATTRIBUTE:Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl$ControlType;

    new-instance v3, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl$ControlType;

    const-string v5, "COLOR"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl$ControlType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl$ControlType;->COLOR:Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl$ControlType;

    new-instance v5, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl$ControlType;

    const-string v7, "PATTERN"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl$ControlType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl$ControlType;->PATTERN:Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl$ControlType;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl$ControlType;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl$ControlType;->$VALUES:[Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl$ControlType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl$ControlType;
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl$ControlType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl$ControlType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl$ControlType;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl$ControlType;->$VALUES:[Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl$ControlType;

    invoke-virtual {v0}, [Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl$ControlType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl$ControlType;

    return-object v0
.end method
