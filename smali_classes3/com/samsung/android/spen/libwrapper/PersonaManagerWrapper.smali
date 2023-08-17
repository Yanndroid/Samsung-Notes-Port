.class public Lcom/samsung/android/spen/libwrapper/PersonaManagerWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private instance:Lcom/samsung/android/spen/libinterface/PersonaManagerInterface;


# direct methods
.method private constructor <init>(Lcom/samsung/android/spen/libinterface/PersonaManagerInterface;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    iput-object p1, p0, Lcom/samsung/android/spen/libwrapper/PersonaManagerWrapper;->instance:Lcom/samsung/android/spen/libinterface/PersonaManagerInterface;
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

.method public static create(Landroid/content/Context;)Lcom/samsung/android/spen/libwrapper/PersonaManagerWrapper;
    .locals 2

    invoke-static {p0}, Lcom/samsung/android/spen/libwrapper/utils/PlatformUtils;->isSamsungDevice(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/samsung/android/spen/libwrapper/utils/PlatformUtils;->isSemDevice(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    :try_start_0
    new-instance p0, Lcom/samsung/android/spen/libwrapper/PersonaManagerWrapper;

    new-instance v0, Lcom/samsung/android/spen/libse/SePersonaManager;

    invoke-direct {v0}, Lcom/samsung/android/spen/libse/SePersonaManager;-><init>()V

    invoke-direct {p0, v0}, Lcom/samsung/android/spen/libwrapper/PersonaManagerWrapper;-><init>(Lcom/samsung/android/spen/libinterface/PersonaManagerInterface;)V
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
    new-instance p0, Lcom/samsung/android/spen/libwrapper/PersonaManagerWrapper;

    new-instance v0, Lcom/samsung/android/spen/libsdl/SdlPersonaManager;

    invoke-direct {v0}, Lcom/samsung/android/spen/libsdl/SdlPersonaManager;-><init>()V

    invoke-direct {p0, v0}, Lcom/samsung/android/spen/libwrapper/PersonaManagerWrapper;-><init>(Lcom/samsung/android/spen/libinterface/PersonaManagerInterface;)V
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
.method public isSecureFolderId(I)Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/spen/libwrapper/PersonaManagerWrapper;->instance:Lcom/samsung/android/spen/libinterface/PersonaManagerInterface;

    invoke-interface {v0, p1}, Lcom/samsung/android/spen/libinterface/PersonaManagerInterface;->isSecureFolderId(I)Z

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
