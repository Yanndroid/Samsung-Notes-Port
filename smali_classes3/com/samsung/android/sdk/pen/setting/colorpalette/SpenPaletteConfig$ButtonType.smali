.class public final enum Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteConfig$ButtonType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ButtonType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteConfig$ButtonType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteConfig$ButtonType;

.field public static final enum EYEDROPPER:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteConfig$ButtonType;

.field public static final enum NONE:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteConfig$ButtonType;

.field public static final enum PICKER:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteConfig$ButtonType;

.field public static final enum SETTING:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteConfig$ButtonType;


# instance fields
.field private value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteConfig$ButtonType;

    const-string v1, "PICKER"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteConfig$ButtonType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteConfig$ButtonType;->PICKER:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteConfig$ButtonType;

    new-instance v1, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteConfig$ButtonType;

    const-string v4, "EYEDROPPER"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteConfig$ButtonType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteConfig$ButtonType;->EYEDROPPER:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteConfig$ButtonType;

    new-instance v4, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteConfig$ButtonType;

    const-string v6, "SETTING"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v7}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteConfig$ButtonType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteConfig$ButtonType;->SETTING:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteConfig$ButtonType;

    new-instance v6, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteConfig$ButtonType;

    const-string v8, "NONE"

    invoke-direct {v6, v8, v7, v2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteConfig$ButtonType;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteConfig$ButtonType;->NONE:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteConfig$ButtonType;

    const/4 v8, 0x4

    new-array v8, v8, [Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteConfig$ButtonType;

    aput-object v0, v8, v2

    aput-object v1, v8, v3

    aput-object v4, v8, v5

    aput-object v6, v8, v7

    sput-object v8, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteConfig$ButtonType;->$VALUES:[Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteConfig$ButtonType;

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

    iput p3, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteConfig$ButtonType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteConfig$ButtonType;
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteConfig$ButtonType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteConfig$ButtonType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteConfig$ButtonType;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteConfig$ButtonType;->$VALUES:[Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteConfig$ButtonType;

    invoke-virtual {v0}, [Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteConfig$ButtonType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteConfig$ButtonType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteConfig$ButtonType;->value:I

    return v0
.end method
