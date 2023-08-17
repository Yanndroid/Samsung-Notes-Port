.class public Lcom/samsung/android/spen/libwrapper/SettingsSystemWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final PEN_HOVERING:Ljava/lang/String;

.field public static final PEN_HOVERING_INFORMATION_PREVIEW:Ljava/lang/String;

.field public static final PEN_HOVERING_LINK_PREVIEW:Ljava/lang/String; = "pen_hovering_link_preview"

.field public static final USER_CURRENT_OR_SELF:I = -0x3

.field public static final USER_OWNER:I


# instance fields
.field private instance:Lcom/samsung/android/spen/libinterface/SettingsSystemInterface;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    invoke-static {}, Lcom/samsung/android/spen/libwrapper/utils/PlatformUtils;->isSemDevice()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "pen_hovering"

    const-string v3, "pen_hovering_information_preview"

    sput-object v3, Lcom/samsung/android/spen/libwrapper/SettingsSystemWrapper;->PEN_HOVERING_INFORMATION_PREVIEW:Ljava/lang/String;

    sput-object v2, Lcom/samsung/android/spen/libwrapper/SettingsSystemWrapper;->PEN_HOVERING:Ljava/lang/String;

    sput v1, Lcom/samsung/android/spen/libwrapper/SettingsSystemWrapper;->USER_OWNER:I

    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/spen/libinterface/SettingsSystemInterface;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    iput-object p1, p0, Lcom/samsung/android/spen/libwrapper/SettingsSystemWrapper;->instance:Lcom/samsung/android/spen/libinterface/SettingsSystemInterface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    new-instance v0, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;

    invoke-direct {v0, p1}, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static create(Landroid/content/Context;)Lcom/samsung/android/spen/libwrapper/SettingsSystemWrapper;
    .locals 2

    invoke-static {p0}, Lcom/samsung/android/spen/libwrapper/utils/PlatformUtils;->isSamsungDevice(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/samsung/android/spen/libwrapper/utils/PlatformUtils;->isSemDevice(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    :try_start_0
    new-instance p0, Lcom/samsung/android/spen/libwrapper/SettingsSystemWrapper;

    new-instance v0, Lcom/samsung/android/spen/libse/SeSettingsSystem;

    invoke-direct {v0}, Lcom/samsung/android/spen/libse/SeSettingsSystem;-><init>()V

    invoke-direct {p0, v0}, Lcom/samsung/android/spen/libwrapper/SettingsSystemWrapper;-><init>(Lcom/samsung/android/spen/libinterface/SettingsSystemInterface;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    :goto_0
    new-instance v0, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;

    const-string v1, "SE"

    invoke-direct {v0, v1, p0}, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    :try_start_1
    new-instance p0, Lcom/samsung/android/spen/libwrapper/SettingsSystemWrapper;

    new-instance v0, Lcom/samsung/android/spen/libsdl/SdlSettingsSystem;

    invoke-direct {v0}, Lcom/samsung/android/spen/libsdl/SdlSettingsSystem;-><init>()V

    invoke-direct {p0, v0}, Lcom/samsung/android/spen/libwrapper/SettingsSystemWrapper;-><init>(Lcom/samsung/android/spen/libinterface/SettingsSystemInterface;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_2

    return-object p0

    :catch_2
    move-exception p0

    goto :goto_1

    :catch_3
    move-exception p0

    :goto_1
    new-instance v0, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;

    const-string v1, "SDL"

    invoke-direct {v0, v1, p0}, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    new-instance p0, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;

    invoke-direct {p0}, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;-><init>()V

    throw p0
.end method


# virtual methods
.method public getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/spen/libwrapper/SettingsSystemWrapper;->instance:Lcom/samsung/android/spen/libinterface/SettingsSystemInterface;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/spen/libinterface/SettingsSystemInterface;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    new-instance p2, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;

    invoke-direct {p2, p1}, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method
