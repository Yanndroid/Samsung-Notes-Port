.class public final enum Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$Orientation;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Orientation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$Orientation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$Orientation;

.field public static final enum LANDSCAPE:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$Orientation;

.field public static final enum PORTRAIT:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$Orientation;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$Orientation;

    const-string v1, "PORTRAIT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$Orientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$Orientation;->PORTRAIT:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$Orientation;

    new-instance v1, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$Orientation;

    const-string v3, "LANDSCAPE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$Orientation;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$Orientation;->LANDSCAPE:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$Orientation;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$Orientation;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$Orientation;->$VALUES:[Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$Orientation;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$Orientation;
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$Orientation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$Orientation;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$Orientation;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$Orientation;->$VALUES:[Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$Orientation;

    invoke-virtual {v0}, [Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$Orientation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$Orientation;

    return-object v0
.end method
