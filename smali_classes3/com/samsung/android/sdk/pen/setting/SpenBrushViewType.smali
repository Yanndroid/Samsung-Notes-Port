.class final enum Lcom/samsung/android/sdk/pen/setting/SpenBrushViewType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/sdk/pen/setting/SpenBrushViewType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/sdk/pen/setting/SpenBrushViewType;

.field public static final enum COLOR:Lcom/samsung/android/sdk/pen/setting/SpenBrushViewType;

.field public static final enum PEN:Lcom/samsung/android/sdk/pen/setting/SpenBrushViewType;

.field public static final enum UNKNOWN:Lcom/samsung/android/sdk/pen/setting/SpenBrushViewType;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/SpenBrushViewType;

    const-string v1, "PEN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/pen/setting/SpenBrushViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/pen/setting/SpenBrushViewType;->PEN:Lcom/samsung/android/sdk/pen/setting/SpenBrushViewType;

    new-instance v1, Lcom/samsung/android/sdk/pen/setting/SpenBrushViewType;

    const-string v3, "COLOR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/sdk/pen/setting/SpenBrushViewType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/sdk/pen/setting/SpenBrushViewType;->COLOR:Lcom/samsung/android/sdk/pen/setting/SpenBrushViewType;

    new-instance v3, Lcom/samsung/android/sdk/pen/setting/SpenBrushViewType;

    const-string v5, "UNKNOWN"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/samsung/android/sdk/pen/setting/SpenBrushViewType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/android/sdk/pen/setting/SpenBrushViewType;->UNKNOWN:Lcom/samsung/android/sdk/pen/setting/SpenBrushViewType;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/samsung/android/sdk/pen/setting/SpenBrushViewType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/samsung/android/sdk/pen/setting/SpenBrushViewType;->$VALUES:[Lcom/samsung/android/sdk/pen/setting/SpenBrushViewType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/pen/setting/SpenBrushViewType;
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/pen/setting/SpenBrushViewType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushViewType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/sdk/pen/setting/SpenBrushViewType;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/pen/setting/SpenBrushViewType;->$VALUES:[Lcom/samsung/android/sdk/pen/setting/SpenBrushViewType;

    invoke-virtual {v0}, [Lcom/samsung/android/sdk/pen/setting/SpenBrushViewType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/pen/setting/SpenBrushViewType;

    return-object v0
.end method
