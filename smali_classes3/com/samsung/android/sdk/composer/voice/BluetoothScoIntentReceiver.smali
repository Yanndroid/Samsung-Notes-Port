.class Lcom/samsung/android/sdk/composer/voice/BluetoothScoIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/composer/voice/BluetoothScoIntentReceiver$BluetoothScoStateHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BluetoothScoIntentReceiver"


# instance fields
.field private MESSAGE_CODE:I

.field private MESSAGE_DELAYED_TIME:J

.field private mHandler:Lcom/samsung/android/sdk/composer/voice/BluetoothScoIntentReceiver$BluetoothScoStateHandler;

.field private mListener:Lcom/samsung/android/sdk/composer/voice/BluetoothScoStateListener;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/composer/voice/BluetoothScoStateListener;Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const-wide/16 v0, 0x64

    iput-wide v0, p0, Lcom/samsung/android/sdk/composer/voice/BluetoothScoIntentReceiver;->MESSAGE_DELAYED_TIME:J

    const/16 p2, 0x7e3

    iput p2, p0, Lcom/samsung/android/sdk/composer/voice/BluetoothScoIntentReceiver;->MESSAGE_CODE:I

    iput-object p1, p0, Lcom/samsung/android/sdk/composer/voice/BluetoothScoIntentReceiver;->mListener:Lcom/samsung/android/sdk/composer/voice/BluetoothScoStateListener;

    new-instance p1, Lcom/samsung/android/sdk/composer/voice/BluetoothScoIntentReceiver$BluetoothScoStateHandler;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/samsung/android/sdk/composer/voice/BluetoothScoIntentReceiver$BluetoothScoStateHandler;-><init>(Lcom/samsung/android/sdk/composer/voice/BluetoothScoIntentReceiver;Lcom/samsung/android/sdk/composer/voice/BluetoothScoIntentReceiver$1;)V

    iput-object p1, p0, Lcom/samsung/android/sdk/composer/voice/BluetoothScoIntentReceiver;->mHandler:Lcom/samsung/android/sdk/composer/voice/BluetoothScoIntentReceiver$BluetoothScoStateHandler;

    return-void
.end method

.method public static synthetic access$100(Lcom/samsung/android/sdk/composer/voice/BluetoothScoIntentReceiver;)Lcom/samsung/android/sdk/composer/voice/BluetoothScoStateListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/composer/voice/BluetoothScoIntentReceiver;->mListener:Lcom/samsung/android/sdk/composer/voice/BluetoothScoStateListener;

    return-object p0
.end method

.method private sendMessage(I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/voice/BluetoothScoIntentReceiver;->mHandler:Lcom/samsung/android/sdk/composer/voice/BluetoothScoIntentReceiver$BluetoothScoStateHandler;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/composer/voice/BluetoothScoIntentReceiver$BluetoothScoStateHandler;->setState(I)V

    iget-object p1, p0, Lcom/samsung/android/sdk/composer/voice/BluetoothScoIntentReceiver;->mHandler:Lcom/samsung/android/sdk/composer/voice/BluetoothScoIntentReceiver$BluetoothScoStateHandler;

    iget v0, p0, Lcom/samsung/android/sdk/composer/voice/BluetoothScoIntentReceiver;->MESSAGE_CODE:I

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/samsung/android/sdk/composer/voice/BluetoothScoIntentReceiver;->mHandler:Lcom/samsung/android/sdk/composer/voice/BluetoothScoIntentReceiver$BluetoothScoStateHandler;

    iget v0, p0, Lcom/samsung/android/sdk/composer/voice/BluetoothScoIntentReceiver;->MESSAGE_CODE:I

    iget-wide v1, p0, Lcom/samsung/android/sdk/composer/voice/BluetoothScoIntentReceiver;->MESSAGE_DELAYED_TIME:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/voice/BluetoothScoIntentReceiver;->mHandler:Lcom/samsung/android/sdk/composer/voice/BluetoothScoIntentReceiver$BluetoothScoStateHandler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget v2, p0, Lcom/samsung/android/sdk/composer/voice/BluetoothScoIntentReceiver;->MESSAGE_CODE:I

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iput-object v1, p0, Lcom/samsung/android/sdk/composer/voice/BluetoothScoIntentReceiver;->mHandler:Lcom/samsung/android/sdk/composer/voice/BluetoothScoIntentReceiver$BluetoothScoStateHandler;

    :cond_0
    iput-object v1, p0, Lcom/samsung/android/sdk/composer/voice/BluetoothScoIntentReceiver;->mListener:Lcom/samsung/android/sdk/composer/voice/BluetoothScoStateListener;

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    if-eqz p1, :cond_5

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const-string v0, "android.media.ACTION_SCO_AUDIO_STATE_UPDATED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "BluetoothScoIntentReceiver"

    const/4 v2, -0x1

    if-nez v0, :cond_4

    const-string v0, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const-string p1, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onReceive() profileState: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p2, 0xc

    if-eq p1, p2, :cond_3

    const/16 p2, 0xa

    if-ne p1, p2, :cond_5

    :cond_3
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/composer/voice/BluetoothScoIntentReceiver;->sendMessage(I)V

    goto :goto_0

    :cond_4
    const-string p1, "android.media.extra.SCO_AUDIO_STATE"

    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v2, :cond_5

    const-string p1, "onReceive() SCO_AUDIO_STATE_ERROR"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/sdk/composer/voice/BluetoothScoIntentReceiver;->mListener:Lcom/samsung/android/sdk/composer/voice/BluetoothScoStateListener;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Lcom/samsung/android/sdk/composer/voice/BluetoothScoStateListener;->onScoAudioError()V

    :cond_5
    :goto_0
    return-void
.end method
