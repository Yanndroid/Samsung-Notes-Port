.class public Lcom/samsung/android/spen/libwrapper/DesktopModeStateWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private instance:Lcom/samsung/android/spen/libinterface/DesktopModeStateInterface;


# direct methods
.method public constructor <init>(Lcom/samsung/android/spen/libinterface/DesktopModeStateInterface;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    iput-object p1, p0, Lcom/samsung/android/spen/libwrapper/DesktopModeStateWrapper;->instance:Lcom/samsung/android/spen/libinterface/DesktopModeStateInterface;
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

.method public static create(Landroid/content/Context;)Lcom/samsung/android/spen/libwrapper/DesktopModeStateWrapper;
    .locals 2

    invoke-static {p0}, Lcom/samsung/android/spen/libwrapper/utils/PlatformUtils;->isSamsungDevice(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/samsung/android/spen/libwrapper/utils/PlatformUtils;->isSemDevice(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Lcom/samsung/android/spen/libwrapper/DesktopModeStateWrapper;

    new-instance v1, Lcom/samsung/android/spen/libse/SeDesktopModeState;

    invoke-direct {v1, p0}, Lcom/samsung/android/spen/libse/SeDesktopModeState;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Lcom/samsung/android/spen/libwrapper/DesktopModeStateWrapper;-><init>(Lcom/samsung/android/spen/libinterface/DesktopModeStateInterface;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

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
    new-instance p0, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;

    const-string v0, "SDL"

    invoke-direct {p0, v0}, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;

    invoke-direct {p0}, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;-><init>()V

    throw p0
.end method


# virtual methods
.method public getDisplayType()I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/spen/libwrapper/DesktopModeStateWrapper;->instance:Lcom/samsung/android/spen/libinterface/DesktopModeStateInterface;

    invoke-interface {v0}, Lcom/samsung/android/spen/libinterface/DesktopModeStateInterface;->getDisplayType()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    new-instance v1, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;

    invoke-direct {v1, v0}, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getDisplayTypeDualConstant()I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/spen/libwrapper/DesktopModeStateWrapper;->instance:Lcom/samsung/android/spen/libinterface/DesktopModeStateInterface;

    invoke-interface {v0}, Lcom/samsung/android/spen/libinterface/DesktopModeStateInterface;->getDisplayTypeDualConstant()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    new-instance v1, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;

    invoke-direct {v1, v0}, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getDisplayTypeStandaloneConstant()I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/spen/libwrapper/DesktopModeStateWrapper;->instance:Lcom/samsung/android/spen/libinterface/DesktopModeStateInterface;

    invoke-interface {v0}, Lcom/samsung/android/spen/libinterface/DesktopModeStateInterface;->getDisplayTypeStandaloneConstant()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    new-instance v1, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;

    invoke-direct {v1, v0}, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getEnabled()I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/spen/libwrapper/DesktopModeStateWrapper;->instance:Lcom/samsung/android/spen/libinterface/DesktopModeStateInterface;

    invoke-interface {v0}, Lcom/samsung/android/spen/libinterface/DesktopModeStateInterface;->getEnabled()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    new-instance v1, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;

    invoke-direct {v1, v0}, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getEnabledConstant()I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/spen/libwrapper/DesktopModeStateWrapper;->instance:Lcom/samsung/android/spen/libinterface/DesktopModeStateInterface;

    invoke-interface {v0}, Lcom/samsung/android/spen/libinterface/DesktopModeStateInterface;->getEnabledConstant()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    new-instance v1, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;

    invoke-direct {v1, v0}, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
