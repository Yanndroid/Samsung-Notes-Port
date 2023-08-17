.class Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;-><init>(Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceCallbackListener;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver$1;->this$0:Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver$1;->this$0:Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;

    invoke-static {p1}, Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;->access$000(Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;)Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceCallbackListener;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver$1;->this$0:Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;

    invoke-static {p1}, Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;->access$000(Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;)Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceCallbackListener;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver$1;->this$0:Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;

    invoke-static {v0}, Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;->access$100(Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;)Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceCallbackListener;->onAudioDevicesRemoved(Z)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver$1;->this$0:Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;

    invoke-static {p1}, Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;->access$000(Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;)Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceCallbackListener;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver$1;->this$0:Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;

    invoke-static {p1}, Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;->access$000(Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;)Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceCallbackListener;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver$1;->this$0:Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;

    invoke-static {v0}, Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;->access$100(Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;)Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceCallbackListener;->onAudioDevicesAdded(Z)V

    :cond_2
    :goto_0
    return-void
.end method
