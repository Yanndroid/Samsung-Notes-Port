.class public final enum Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout$Mode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout$Mode;

.field public static final enum OPACITY:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout$Mode;

.field public static final enum SIZE:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout$Mode;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout$Mode;

    const-string v1, "SIZE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout$Mode;->SIZE:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout$Mode;

    new-instance v1, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout$Mode;

    const-string v3, "OPACITY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout$Mode;->OPACITY:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout$Mode;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout$Mode;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout$Mode;->$VALUES:[Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout$Mode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout$Mode;
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout$Mode;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout$Mode;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout$Mode;->$VALUES:[Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout$Mode;

    invoke-virtual {v0}, [Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout$Mode;

    return-object v0
.end method
