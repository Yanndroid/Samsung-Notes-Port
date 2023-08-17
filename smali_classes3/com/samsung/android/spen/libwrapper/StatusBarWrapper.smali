.class public Lcom/samsung/android/spen/libwrapper/StatusBarWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DISABLE_NONE:I = 0x0

.field public static final DISABLE_NOTIFICATION_ALERTS:I = 0x40000

.field private static mStatusBar:Lcom/samsung/android/spen/libinterface/StatusBarInterface;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getStatusBar(Landroid/content/Context;)Lcom/samsung/android/spen/libinterface/StatusBarInterface;
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/spen/libwrapper/utils/PlatformUtils;->isSamsungDevice(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/samsung/android/spen/libwrapper/utils/PlatformUtils;->isSemDevice(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/samsung/android/spen/libse/SeStatusBar;->getInstance()Lcom/samsung/android/spen/libse/SeStatusBar;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/samsung/android/spen/libsdl/SdlStatusBar;->getInstance()Lcom/samsung/android/spen/libsdl/SdlStatusBar;

    move-result-object p0

    :goto_0
    sput-object p0, Lcom/samsung/android/spen/libwrapper/StatusBarWrapper;->mStatusBar:Lcom/samsung/android/spen/libinterface/StatusBarInterface;

    sget-object p0, Lcom/samsung/android/spen/libwrapper/StatusBarWrapper;->mStatusBar:Lcom/samsung/android/spen/libinterface/StatusBarInterface;

    return-object p0

    :cond_1
    new-instance p0, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;

    invoke-direct {p0}, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;-><init>()V

    throw p0
.end method
