.class public Lcom/samsung/android/spen/libsdl/SdlDvfsManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/spen/libinterface/DvfsManagerInterface;


# static fields
.field public static final TYPE_BUS_MIN:I = 0x13

.field public static final TYPE_CPU_CORE_NUM_MAX:I = 0xf

.field public static final TYPE_CPU_CORE_NUM_MIN:I = 0xe

.field public static final TYPE_CPU_MAX:I = 0xd

.field public static final TYPE_CPU_MIN:I = 0xc

.field public static final TYPE_EMMC_BURST_MODE:I = 0x12

.field public static final TYPE_GPU_MAX:I = 0x11

.field public static final TYPE_GPU_MIN:I = 0x10


# instance fields
.field private mDvfsManager:Landroid/os/DVFSHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/samsung/android/spen/libsdl/SdlDvfsManager;->mDvfsManager:Landroid/os/DVFSHelper;

    :try_start_0
    new-instance p2, Landroid/os/DVFSHelper;

    invoke-direct {p2, p1, p3}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lcom/samsung/android/spen/libsdl/SdlDvfsManager;->mDvfsManager:Landroid/os/DVFSHelper;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    throw p1

    :catch_2
    move-exception p1

    throw p1
.end method


# virtual methods
.method public acquire()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/spen/libsdl/SdlDvfsManager;->mDvfsManager:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->acquire()V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    throw v0
.end method

.method public acquire(I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/spen/libsdl/SdlDvfsManager;->mDvfsManager:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/os/DVFSHelper;->acquire(I)V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    throw p1
.end method

.method public getApproximateFrequency(I)I
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/spen/libsdl/SdlDvfsManager;->mDvfsManager:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/os/DVFSHelper;->getApproximateCPUFrequency(I)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    throw p1
.end method

.method public getSupportedFrequency()[I
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/spen/libsdl/SdlDvfsManager;->mDvfsManager:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedCPUFrequency()[I

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    throw v0
.end method

.method public release()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/spen/libsdl/SdlDvfsManager;->mDvfsManager:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    throw v0
.end method

.method public setDvfsValue(I)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/spen/libsdl/SdlDvfsManager;->mDvfsManager:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_0

    const-string v1, "CPU"

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    throw p1
.end method
