.class public Lcom/samsung/android/spen/libwrapper/DvfsManagerWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final TYPE_BUS_MIN:I

.field public static final TYPE_CPU_CORE_NUM_MAX:I

.field public static final TYPE_CPU_CORE_NUM_MIN:I

.field public static final TYPE_CPU_MAX:I

.field public static final TYPE_CPU_MIN:I

.field public static final TYPE_EMMC_BURST_MODE:I

.field public static final TYPE_GPU_MAX:I

.field public static final TYPE_GPU_MIN:I


# instance fields
.field private instance:Lcom/samsung/android/spen/libinterface/DvfsManagerInterface;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    invoke-static {}, Lcom/samsung/android/spen/libwrapper/utils/PlatformUtils;->isSemDevice()Z

    move-result v0

    const/16 v1, 0x10

    const/16 v2, 0x11

    const/16 v3, 0x12

    const/16 v4, 0xc

    const/16 v5, 0xd

    const/16 v6, 0xe

    const/16 v7, 0xf

    const/16 v8, 0x13

    sput v8, Lcom/samsung/android/spen/libwrapper/DvfsManagerWrapper;->TYPE_BUS_MIN:I

    sput v7, Lcom/samsung/android/spen/libwrapper/DvfsManagerWrapper;->TYPE_CPU_CORE_NUM_MAX:I

    sput v6, Lcom/samsung/android/spen/libwrapper/DvfsManagerWrapper;->TYPE_CPU_CORE_NUM_MIN:I

    sput v5, Lcom/samsung/android/spen/libwrapper/DvfsManagerWrapper;->TYPE_CPU_MAX:I

    sput v4, Lcom/samsung/android/spen/libwrapper/DvfsManagerWrapper;->TYPE_CPU_MIN:I

    sput v3, Lcom/samsung/android/spen/libwrapper/DvfsManagerWrapper;->TYPE_EMMC_BURST_MODE:I

    sput v2, Lcom/samsung/android/spen/libwrapper/DvfsManagerWrapper;->TYPE_GPU_MAX:I

    sput v1, Lcom/samsung/android/spen/libwrapper/DvfsManagerWrapper;->TYPE_GPU_MIN:I

    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/spen/libinterface/DvfsManagerInterface;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    iput-object p1, p0, Lcom/samsung/android/spen/libwrapper/DvfsManagerWrapper;->instance:Lcom/samsung/android/spen/libinterface/DvfsManagerInterface;
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

.method public static create(Landroid/content/Context;I)Lcom/samsung/android/spen/libwrapper/DvfsManagerWrapper;
    .locals 3

    invoke-static {p0}, Lcom/samsung/android/spen/libwrapper/utils/PlatformUtils;->isSamsungDevice(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/samsung/android/spen/libwrapper/utils/PlatformUtils;->isSemDevice(Landroid/content/Context;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Lcom/samsung/android/spen/libwrapper/DvfsManagerWrapper;

    new-instance v2, Lcom/samsung/android/spen/libse/SeDvfsManager;

    invoke-direct {v2, p0, v1, p1}, Lcom/samsung/android/spen/libse/SeDvfsManager;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-direct {v0, v2}, Lcom/samsung/android/spen/libwrapper/DvfsManagerWrapper;-><init>(Lcom/samsung/android/spen/libinterface/DvfsManagerInterface;)V
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
    new-instance p1, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;

    const-string v0, "SE"

    invoke-direct {p1, v0, p0}, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    :try_start_1
    new-instance v0, Lcom/samsung/android/spen/libwrapper/DvfsManagerWrapper;

    new-instance v2, Lcom/samsung/android/spen/libsdl/SdlDvfsManager;

    invoke-direct {v2, p0, v1, p1}, Lcom/samsung/android/spen/libsdl/SdlDvfsManager;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-direct {v0, v2}, Lcom/samsung/android/spen/libwrapper/DvfsManagerWrapper;-><init>(Lcom/samsung/android/spen/libinterface/DvfsManagerInterface;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_2

    return-object v0

    :catch_2
    move-exception p0

    goto :goto_1

    :catch_3
    move-exception p0

    :goto_1
    new-instance p1, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;

    const-string v0, "SDL"

    invoke-direct {p1, v0, p0}, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    new-instance p0, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;

    invoke-direct {p0}, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;-><init>()V

    throw p0
.end method

.method public static create(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/spen/libwrapper/DvfsManagerWrapper;
    .locals 2

    invoke-static {p0}, Lcom/samsung/android/spen/libwrapper/utils/PlatformUtils;->isSamsungDevice(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/samsung/android/spen/libwrapper/utils/PlatformUtils;->isSemDevice(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Lcom/samsung/android/spen/libwrapper/DvfsManagerWrapper;

    new-instance v1, Lcom/samsung/android/spen/libse/SeDvfsManager;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/spen/libse/SeDvfsManager;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-direct {v0, v1}, Lcom/samsung/android/spen/libwrapper/DvfsManagerWrapper;-><init>(Lcom/samsung/android/spen/libinterface/DvfsManagerInterface;)V
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
    new-instance p1, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;

    const-string p2, "SE"

    invoke-direct {p1, p2, p0}, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    :try_start_1
    new-instance v0, Lcom/samsung/android/spen/libwrapper/DvfsManagerWrapper;

    new-instance v1, Lcom/samsung/android/spen/libsdl/SdlDvfsManager;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/spen/libsdl/SdlDvfsManager;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-direct {v0, v1}, Lcom/samsung/android/spen/libwrapper/DvfsManagerWrapper;-><init>(Lcom/samsung/android/spen/libinterface/DvfsManagerInterface;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_2

    return-object v0

    :catch_2
    move-exception p0

    goto :goto_1

    :catch_3
    move-exception p0

    :goto_1
    new-instance p1, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;

    const-string p2, "SDL"

    invoke-direct {p1, p2, p0}, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    new-instance p0, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;

    invoke-direct {p0}, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;-><init>()V

    throw p0
.end method


# virtual methods
.method public acquire()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/spen/libwrapper/DvfsManagerWrapper;->instance:Lcom/samsung/android/spen/libinterface/DvfsManagerInterface;

    invoke-interface {v0}, Lcom/samsung/android/spen/libinterface/DvfsManagerInterface;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return-void

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

.method public acquire(I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/spen/libwrapper/DvfsManagerWrapper;->instance:Lcom/samsung/android/spen/libinterface/DvfsManagerInterface;

    invoke-interface {v0, p1}, Lcom/samsung/android/spen/libinterface/DvfsManagerInterface;->acquire(I)V
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

.method public getApproximateFrequency(I)I
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/spen/libwrapper/DvfsManagerWrapper;->instance:Lcom/samsung/android/spen/libinterface/DvfsManagerInterface;

    invoke-interface {v0, p1}, Lcom/samsung/android/spen/libinterface/DvfsManagerInterface;->getApproximateFrequency(I)I

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

.method public getSupportedFrequency()[I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/spen/libwrapper/DvfsManagerWrapper;->instance:Lcom/samsung/android/spen/libinterface/DvfsManagerInterface;

    invoke-interface {v0}, Lcom/samsung/android/spen/libinterface/DvfsManagerInterface;->getSupportedFrequency()[I

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

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

.method public release()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/spen/libwrapper/DvfsManagerWrapper;->instance:Lcom/samsung/android/spen/libinterface/DvfsManagerInterface;

    invoke-interface {v0}, Lcom/samsung/android/spen/libinterface/DvfsManagerInterface;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return-void

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

.method public setDvfsValue(I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/spen/libwrapper/DvfsManagerWrapper;->instance:Lcom/samsung/android/spen/libinterface/DvfsManagerInterface;

    invoke-interface {v0, p1}, Lcom/samsung/android/spen/libinterface/DvfsManagerInterface;->setDvfsValue(I)V
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
