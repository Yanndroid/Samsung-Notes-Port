.class Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver$2;
.super Landroid/media/AudioDeviceCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;->initAudioDeviceCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver$2;->this$0:Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;

    invoke-direct {p0}, Landroid/media/AudioDeviceCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioDevicesAdded([Landroid/media/AudioDeviceInfo;)V
    .locals 9

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver$2;->this$0:Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;

    invoke-static {v0}, Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;->access$200(Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;)Landroid/media/AudioManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getDevices(I)[Landroid/media/AudioDeviceInfo;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v6, v0, v4

    iget-object v7, p0, Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver$2;->this$0:Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;

    invoke-static {v7, v6}, Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;->access$300(Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;Landroid/media/AudioDeviceInfo;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver$2;->this$0:Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;

    invoke-virtual {v6}, Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;->isWiredHeadsetConnected()Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v5, p0, Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver$2;->this$0:Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;

    invoke-static {v5, v1}, Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;->access$102(Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;Z)Z

    move v5, v1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    array-length v0, p1

    move v2, v3

    move v4, v2

    move v6, v4

    :goto_1
    if-ge v2, v0, :cond_4

    aget-object v7, p1, v2

    iget-object v8, p0, Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver$2;->this$0:Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;

    invoke-static {v8, v7}, Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;->access$400(Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;Landroid/media/AudioDeviceInfo;)Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver$2;->this$0:Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;

    invoke-virtual {v8}, Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;->isA2DPDeviceConnected()Z

    move-result v8

    if-nez v8, :cond_2

    iget-object v4, p0, Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver$2;->this$0:Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;

    invoke-static {v4, v1}, Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;->access$502(Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;Z)Z

    move v4, v1

    :cond_2
    iget-object v8, p0, Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver$2;->this$0:Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;

    invoke-static {v8, v7}, Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;->access$600(Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;Landroid/media/AudioDeviceInfo;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver$2;->this$0:Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;

    invoke-virtual {v7}, Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;->isSCODeviceConnected()Z

    move-result v7

    if-nez v7, :cond_3

    iget-object v6, p0, Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver$2;->this$0:Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;

    invoke-static {v6, v1}, Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;->access$702(Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;Z)Z

    move v6, v1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    if-nez v4, :cond_5

    if-nez v6, :cond_5

    if-eqz v5, :cond_6

    :cond_5
    iget-object p1, p0, Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver$2;->this$0:Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;

    invoke-static {p1}, Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;->access$800(Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver$2;->this$0:Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;

    invoke-static {p1}, Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;->access$800(Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver$2;->this$0:Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;

    invoke-static {p1}, Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;->access$800(Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;)Landroid/os/Handler;

    move-result-object p1

    const-wide/16 v0, 0x2ee

    invoke-virtual {p1, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_6
    return-void
.end method

.method public onAudioDevicesRemoved([Landroid/media/AudioDeviceInfo;)V
    .locals 11

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v4, v3

    move v5, v4

    :goto_0
    const/4 v6, 0x1

    if-ge v2, v0, :cond_3

    aget-object v7, p1, v2

    iget-object v8, p0, Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver$2;->this$0:Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;

    invoke-static {v8, v7}, Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;->access$300(Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;Landroid/media/AudioDeviceInfo;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v5, p0, Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver$2;->this$0:Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;

    invoke-static {v5, v1}, Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;->access$102(Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;Z)Z

    move v5, v6

    :cond_0
    iget-object v8, p0, Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver$2;->this$0:Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;

    invoke-static {v8, v7}, Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;->access$400(Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;Landroid/media/AudioDeviceInfo;)Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v4, p0, Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver$2;->this$0:Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;

    invoke-static {v4, v1}, Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;->access$502(Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;Z)Z

    move v4, v6

    :cond_1
    iget-object v8, p0, Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver$2;->this$0:Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;

    invoke-static {v8, v7}, Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;->access$600(Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;Landroid/media/AudioDeviceInfo;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v3, p0, Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver$2;->this$0:Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;

    invoke-static {v3, v1}, Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;->access$702(Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;Z)Z

    move v3, v6

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    if-nez v3, :cond_5

    if-eqz v4, :cond_4

    goto :goto_1

    :cond_4
    move p1, v1

    goto :goto_2

    :cond_5
    :goto_1
    move p1, v6

    :goto_2
    iget-object v0, p0, Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver$2;->this$0:Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;

    invoke-static {v0}, Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;->access$900(Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;)Z

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver$2;->this$0:Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;

    invoke-static {v2, v0}, Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;->access$102(Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;Z)Z

    iget-object v2, p0, Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver$2;->this$0:Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;

    invoke-static {v2}, Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;->access$200(Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;)Landroid/media/AudioManager;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getDevices(I)[Landroid/media/AudioDeviceInfo;

    move-result-object v2

    array-length v3, v2

    move v4, v1

    move v7, v4

    move v8, v7

    :goto_3
    if-ge v4, v3, :cond_8

    aget-object v9, v2, v4

    iget-object v10, p0, Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver$2;->this$0:Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;

    invoke-static {v10, v9}, Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;->access$600(Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;Landroid/media/AudioDeviceInfo;)Z

    move-result v10

    if-eqz v10, :cond_6

    iget-object v7, p0, Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver$2;->this$0:Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;

    invoke-static {v7, v6}, Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;->access$702(Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;Z)Z

    move v7, v6

    :cond_6
    iget-object v10, p0, Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver$2;->this$0:Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;

    invoke-static {v10, v9}, Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;->access$400(Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;Landroid/media/AudioDeviceInfo;)Z

    move-result v9

    if-eqz v9, :cond_7

    iget-object v8, p0, Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver$2;->this$0:Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;

    invoke-static {v8, v6}, Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;->access$502(Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;Z)Z

    move v8, v6

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_8
    if-nez v7, :cond_a

    if-eqz v8, :cond_9

    goto :goto_4

    :cond_9
    move v2, v1

    goto :goto_5

    :cond_a
    :goto_4
    move v2, v6

    :goto_5
    if-nez v0, :cond_b

    if-nez v5, :cond_c

    :cond_b
    if-nez v2, :cond_d

    if-eqz p1, :cond_d

    :cond_c
    move v1, v6

    :cond_d
    iget-object p1, p0, Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver$2;->this$0:Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;

    invoke-static {p1}, Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;->access$800(Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_e

    if-eqz v1, :cond_e

    iget-object p1, p0, Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver$2;->this$0:Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;

    invoke-static {p1}, Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;->access$800(Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver$2;->this$0:Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;

    invoke-static {p1}, Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;->access$800(Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;)Landroid/os/Handler;

    move-result-object p1

    const-wide/16 v0, 0x2ee

    invoke-virtual {p1, v6, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_e
    return-void
.end method
