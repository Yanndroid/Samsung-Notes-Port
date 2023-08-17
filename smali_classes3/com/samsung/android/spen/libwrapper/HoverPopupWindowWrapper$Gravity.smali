.class public Lcom/samsung/android/spen/libwrapper/HoverPopupWindowWrapper$Gravity;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/spen/libwrapper/HoverPopupWindowWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Gravity"
.end annotation


# static fields
.field public static BOTTOM:I

.field public static CENTER_VERTICAL:I

.field public static LEFT:I

.field public static RIGHT:I

.field public static TOP:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/samsung/android/spen/libwrapper/utils/PlatformUtils;->isSemDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/samsung/android/spen/libse/SeHoverPopupWindow$Gravity;->BOTTOM:I

    sput v0, Lcom/samsung/android/spen/libwrapper/HoverPopupWindowWrapper$Gravity;->BOTTOM:I

    sget v0, Lcom/samsung/android/spen/libse/SeHoverPopupWindow$Gravity;->CENTER_VERTICAL:I

    sput v0, Lcom/samsung/android/spen/libwrapper/HoverPopupWindowWrapper$Gravity;->CENTER_VERTICAL:I

    sget v0, Lcom/samsung/android/spen/libse/SeHoverPopupWindow$Gravity;->LEFT:I

    sput v0, Lcom/samsung/android/spen/libwrapper/HoverPopupWindowWrapper$Gravity;->LEFT:I

    sget v0, Lcom/samsung/android/spen/libse/SeHoverPopupWindow$Gravity;->RIGHT:I

    sput v0, Lcom/samsung/android/spen/libwrapper/HoverPopupWindowWrapper$Gravity;->RIGHT:I

    sget v0, Lcom/samsung/android/spen/libse/SeHoverPopupWindow$Gravity;->TOP:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/samsung/android/spen/libsdl/SdlHoverPopupWindow$Gravity;->BOTTOM:I

    sput v0, Lcom/samsung/android/spen/libwrapper/HoverPopupWindowWrapper$Gravity;->BOTTOM:I

    sget v0, Lcom/samsung/android/spen/libsdl/SdlHoverPopupWindow$Gravity;->CENTER_VERTICAL:I

    sput v0, Lcom/samsung/android/spen/libwrapper/HoverPopupWindowWrapper$Gravity;->CENTER_VERTICAL:I

    sget v0, Lcom/samsung/android/spen/libsdl/SdlHoverPopupWindow$Gravity;->LEFT:I

    sput v0, Lcom/samsung/android/spen/libwrapper/HoverPopupWindowWrapper$Gravity;->LEFT:I

    sget v0, Lcom/samsung/android/spen/libsdl/SdlHoverPopupWindow$Gravity;->RIGHT:I

    sput v0, Lcom/samsung/android/spen/libwrapper/HoverPopupWindowWrapper$Gravity;->RIGHT:I

    sget v0, Lcom/samsung/android/spen/libsdl/SdlHoverPopupWindow$Gravity;->TOP:I

    :goto_0
    sput v0, Lcom/samsung/android/spen/libwrapper/HoverPopupWindowWrapper$Gravity;->TOP:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
