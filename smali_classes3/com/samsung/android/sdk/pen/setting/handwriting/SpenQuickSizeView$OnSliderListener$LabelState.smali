.class public final enum Lcom/samsung/android/sdk/pen/setting/handwriting/SpenQuickSizeView$OnSliderListener$LabelState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/setting/handwriting/SpenQuickSizeView$OnSliderListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LabelState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/sdk/pen/setting/handwriting/SpenQuickSizeView$OnSliderListener$LabelState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/sdk/pen/setting/handwriting/SpenQuickSizeView$OnSliderListener$LabelState;

.field public static final enum HIDE:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenQuickSizeView$OnSliderListener$LabelState;

.field public static final enum SHOW:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenQuickSizeView$OnSliderListener$LabelState;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenQuickSizeView$OnSliderListener$LabelState;

    const-string v1, "HIDE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenQuickSizeView$OnSliderListener$LabelState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenQuickSizeView$OnSliderListener$LabelState;->HIDE:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenQuickSizeView$OnSliderListener$LabelState;

    new-instance v1, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenQuickSizeView$OnSliderListener$LabelState;

    const-string v3, "SHOW"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenQuickSizeView$OnSliderListener$LabelState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenQuickSizeView$OnSliderListener$LabelState;->SHOW:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenQuickSizeView$OnSliderListener$LabelState;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/samsung/android/sdk/pen/setting/handwriting/SpenQuickSizeView$OnSliderListener$LabelState;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenQuickSizeView$OnSliderListener$LabelState;->$VALUES:[Lcom/samsung/android/sdk/pen/setting/handwriting/SpenQuickSizeView$OnSliderListener$LabelState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/pen/setting/handwriting/SpenQuickSizeView$OnSliderListener$LabelState;
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenQuickSizeView$OnSliderListener$LabelState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenQuickSizeView$OnSliderListener$LabelState;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/sdk/pen/setting/handwriting/SpenQuickSizeView$OnSliderListener$LabelState;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenQuickSizeView$OnSliderListener$LabelState;->$VALUES:[Lcom/samsung/android/sdk/pen/setting/handwriting/SpenQuickSizeView$OnSliderListener$LabelState;

    invoke-virtual {v0}, [Lcom/samsung/android/sdk/pen/setting/handwriting/SpenQuickSizeView$OnSliderListener$LabelState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/pen/setting/handwriting/SpenQuickSizeView$OnSliderListener$LabelState;

    return-object v0
.end method
