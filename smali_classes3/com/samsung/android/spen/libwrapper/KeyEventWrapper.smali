.class public Lcom/samsung/android/spen/libwrapper/KeyEventWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final KEYCODE_CLIPBOARD:I

.field public static final KEYCODE_QUESTION:I

.field public static final KEYCODE_SPEAKER:I

.field public static final KEYCODE_TEXT:I

.field public static final KEYCODE_USER:I

.field public static final KEYCODE_WPS_BUTTON:I


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    invoke-static {}, Lcom/samsung/android/spen/libwrapper/utils/PlatformUtils;->isSemDevice()Z

    move-result v0

    const/16 v1, 0x412

    const/16 v2, 0x3f7

    const/16 v3, 0x3f5

    const/16 v4, 0x3f4

    const/16 v5, 0x3f6

    const/16 v6, 0x3f1

    sput v6, Lcom/samsung/android/spen/libwrapper/KeyEventWrapper;->KEYCODE_CLIPBOARD:I

    sput v5, Lcom/samsung/android/spen/libwrapper/KeyEventWrapper;->KEYCODE_QUESTION:I

    sput v4, Lcom/samsung/android/spen/libwrapper/KeyEventWrapper;->KEYCODE_SPEAKER:I

    sput v3, Lcom/samsung/android/spen/libwrapper/KeyEventWrapper;->KEYCODE_TEXT:I

    sput v2, Lcom/samsung/android/spen/libwrapper/KeyEventWrapper;->KEYCODE_USER:I

    sput v1, Lcom/samsung/android/spen/libwrapper/KeyEventWrapper;->KEYCODE_WPS_BUTTON:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
