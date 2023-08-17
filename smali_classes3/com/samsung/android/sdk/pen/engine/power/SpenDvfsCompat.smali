.class public Lcom/samsung/android/sdk/pen/engine/power/SpenDvfsCompat;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/engine/power/SpenDvfsInterface;


# static fields
.field private static final DVFS_FLING_FREQ:I = 0x11da50

.field private static final DVFS_WRITING_FREQ:I = 0x162010

.field public static final TYPE_FLING:I = 0x0

.field public static final TYPE_WRITING:I = 0x1


# instance fields
.field private mDvfsWrapper:Lcom/samsung/android/spen/libwrapper/DvfsManagerWrapper;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/power/SpenDvfsCompat;->mDvfsWrapper:Lcom/samsung/android/spen/libwrapper/DvfsManagerWrapper;

    if-nez p2, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    sget v0, Lcom/samsung/android/spen/libwrapper/DvfsManagerWrapper;->TYPE_CPU_MIN:I

    invoke-static {p1, p2, v0}, Lcom/samsung/android/spen/libwrapper/DvfsManagerWrapper;->create(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/spen/libwrapper/DvfsManagerWrapper;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/engine/power/SpenDvfsCompat;->mDvfsWrapper:Lcom/samsung/android/spen/libwrapper/DvfsManagerWrapper;

    const p2, 0x11da50

    invoke-virtual {p1, p2}, Lcom/samsung/android/spen/libwrapper/DvfsManagerWrapper;->getApproximateFrequency(I)I

    move-result p2

    :goto_0
    invoke-virtual {p1, p2}, Lcom/samsung/android/spen/libwrapper/DvfsManagerWrapper;->setDvfsValue(I)V

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    sget v0, Lcom/samsung/android/spen/libwrapper/DvfsManagerWrapper;->TYPE_CPU_MIN:I

    invoke-static {p1, p2, v0}, Lcom/samsung/android/spen/libwrapper/DvfsManagerWrapper;->create(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/spen/libwrapper/DvfsManagerWrapper;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/engine/power/SpenDvfsCompat;->mDvfsWrapper:Lcom/samsung/android/spen/libwrapper/DvfsManagerWrapper;

    const p2, 0x162010

    invoke-virtual {p1, p2}, Lcom/samsung/android/spen/libwrapper/DvfsManagerWrapper;->getApproximateFrequency(I)I

    move-result p2
    :try_end_0
    .catch Lcom/samsung/android/spen/libwrapper/utils/PlatformException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public acquire()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/power/SpenDvfsCompat;->mDvfsWrapper:Lcom/samsung/android/spen/libwrapper/DvfsManagerWrapper;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lcom/samsung/android/spen/libwrapper/DvfsManagerWrapper;->acquire()V
    :try_end_0
    .catch Lcom/samsung/android/spen/libwrapper/utils/PlatformException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/power/SpenDvfsCompat;->mDvfsWrapper:Lcom/samsung/android/spen/libwrapper/DvfsManagerWrapper;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lcom/samsung/android/spen/libwrapper/DvfsManagerWrapper;->release()V
    :try_end_0
    .catch Lcom/samsung/android/spen/libwrapper/utils/PlatformException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
