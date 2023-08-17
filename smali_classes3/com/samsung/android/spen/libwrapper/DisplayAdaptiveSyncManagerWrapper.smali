.class public Lcom/samsung/android/spen/libwrapper/DisplayAdaptiveSyncManagerWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private instance:Lcom/samsung/android/spen/libinterface/DisplayAdaptiveSyncManagerInterface;


# direct methods
.method private constructor <init>(Lcom/samsung/android/spen/libinterface/DisplayAdaptiveSyncManagerInterface;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    iput-object p1, p0, Lcom/samsung/android/spen/libwrapper/DisplayAdaptiveSyncManagerWrapper;->instance:Lcom/samsung/android/spen/libinterface/DisplayAdaptiveSyncManagerInterface;
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

.method public static create(Landroid/content/Context;)Lcom/samsung/android/spen/libwrapper/DisplayAdaptiveSyncManagerWrapper;
    .locals 2

    invoke-static {p0}, Lcom/samsung/android/spen/libwrapper/utils/PlatformUtils;->isSamsungDevice(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    :try_start_0
    new-instance p0, Lcom/samsung/android/spen/libwrapper/DisplayAdaptiveSyncManagerWrapper;

    new-instance v0, Lcom/samsung/android/spen/libsdl/SdlDisplayAdaptiveSyncManager;

    invoke-direct {v0}, Lcom/samsung/android/spen/libsdl/SdlDisplayAdaptiveSyncManager;-><init>()V

    invoke-direct {p0, v0}, Lcom/samsung/android/spen/libwrapper/DisplayAdaptiveSyncManagerWrapper;-><init>(Lcom/samsung/android/spen/libinterface/DisplayAdaptiveSyncManagerInterface;)V
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

    const-string v1, "SDL"

    invoke-direct {v0, v1, p0}, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    new-instance p0, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;

    invoke-direct {p0}, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;-><init>()V

    throw p0
.end method


# virtual methods
.method public setAdaptiveSync(Z)I
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/spen/libwrapper/DisplayAdaptiveSyncManagerWrapper;->instance:Lcom/samsung/android/spen/libinterface/DisplayAdaptiveSyncManagerInterface;

    invoke-interface {v0, p1}, Lcom/samsung/android/spen/libinterface/DisplayAdaptiveSyncManagerInterface;->setAdaptiveSync(Z)I

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
    new-instance v0, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;

    invoke-direct {v0, p1}, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
