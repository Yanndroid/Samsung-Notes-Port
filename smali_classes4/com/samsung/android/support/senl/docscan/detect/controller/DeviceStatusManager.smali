.class public Lcom/samsung/android/support/senl/docscan/detect/controller/DeviceStatusManager;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/docscan/detect/controller/DeviceStatusManager$HeadSetPlugChangedListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DeviceStatusManager"

.field private static mInstance:Lcom/samsung/android/support/senl/docscan/detect/controller/DeviceStatusManager;


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mHasMicrophone:Z

.field private final mHeadSetPlugChangedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/support/senl/docscan/detect/controller/DeviceStatusManager$HeadSetPlugChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mIsPluggedHeadSet:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/controller/DeviceStatusManager;->mHeadSetPlugChangedListeners:Ljava/util/ArrayList;

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/controller/DeviceStatusManager;->mAudioManager:Landroid/media/AudioManager;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/support/senl/docscan/detect/controller/DeviceStatusManager;
    .locals 2

    const-class v0, Lcom/samsung/android/support/senl/docscan/detect/controller/DeviceStatusManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/support/senl/docscan/detect/controller/DeviceStatusManager;->mInstance:Lcom/samsung/android/support/senl/docscan/detect/controller/DeviceStatusManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/support/senl/docscan/detect/controller/DeviceStatusManager;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/docscan/detect/controller/DeviceStatusManager;-><init>()V

    sput-object v1, Lcom/samsung/android/support/senl/docscan/detect/controller/DeviceStatusManager;->mInstance:Lcom/samsung/android/support/senl/docscan/detect/controller/DeviceStatusManager;

    :cond_0
    sget-object v1, Lcom/samsung/android/support/senl/docscan/detect/controller/DeviceStatusManager;->mInstance:Lcom/samsung/android/support/senl/docscan/detect/controller/DeviceStatusManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private notifyHeadSetPlugChanged(ZZ)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/controller/DeviceStatusManager;->mHeadSetPlugChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/samsung/android/support/senl/docscan/detect/controller/DeviceStatusManager;->mHeadSetPlugChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/senl/docscan/detect/controller/DeviceStatusManager$HeadSetPlugChangedListener;

    if-eqz v2, :cond_0

    invoke-interface {v2, p1, p2}, Lcom/samsung/android/support/senl/docscan/detect/controller/DeviceStatusManager$HeadSetPlugChangedListener;->onHeadSetPlugChanged(ZZ)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public enableSystemSound(IZ)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableSystemSound# mute? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceStatusManager"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/docscan/common/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/controller/DeviceStatusManager;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    const/16 p2, -0x64

    goto :goto_0

    :cond_0
    const/16 p2, 0x64

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    :cond_1
    return-void
.end method

.method public isPluggedHeadSet()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/docscan/detect/controller/DeviceStatusManager;->mIsPluggedHeadSet:Z

    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "onReceive, intent : "

    const-string v2, "DeviceStatusManager"

    if-eqz v0, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/samsung/android/support/senl/docscan/common/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "state"

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    move p1, v1

    goto :goto_0

    :cond_1
    move p1, v0

    :goto_0
    iput-boolean p1, p0, Lcom/samsung/android/support/senl/docscan/detect/controller/DeviceStatusManager;->mIsPluggedHeadSet:Z

    const-string p1, "microphone"

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v1, :cond_2

    move v0, v1

    :cond_2
    iput-boolean v0, p0, Lcom/samsung/android/support/senl/docscan/detect/controller/DeviceStatusManager;->mHasMicrophone:Z

    iget-boolean p1, p0, Lcom/samsung/android/support/senl/docscan/detect/controller/DeviceStatusManager;->mIsPluggedHeadSet:Z

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/senl/docscan/detect/controller/DeviceStatusManager;->notifyHeadSetPlugChanged(ZZ)V

    goto :goto_1

    :cond_3
    const-string v0, "android.intent.action.TIME_SET"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/samsung/android/support/senl/docscan/common/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method
