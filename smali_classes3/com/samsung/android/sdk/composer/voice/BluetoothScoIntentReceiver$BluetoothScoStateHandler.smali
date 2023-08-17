.class Lcom/samsung/android/sdk/composer/voice/BluetoothScoIntentReceiver$BluetoothScoStateHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/composer/voice/BluetoothScoIntentReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BluetoothScoStateHandler"
.end annotation


# instance fields
.field private mState:I

.field public final synthetic this$0:Lcom/samsung/android/sdk/composer/voice/BluetoothScoIntentReceiver;


# direct methods
.method private constructor <init>(Lcom/samsung/android/sdk/composer/voice/BluetoothScoIntentReceiver;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/composer/voice/BluetoothScoIntentReceiver$BluetoothScoStateHandler;->this$0:Lcom/samsung/android/sdk/composer/voice/BluetoothScoIntentReceiver;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Lcom/samsung/android/sdk/composer/voice/BluetoothScoIntentReceiver$BluetoothScoStateHandler;->mState:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/sdk/composer/voice/BluetoothScoIntentReceiver;Lcom/samsung/android/sdk/composer/voice/BluetoothScoIntentReceiver$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/composer/voice/BluetoothScoIntentReceiver$BluetoothScoStateHandler;-><init>(Lcom/samsung/android/sdk/composer/voice/BluetoothScoIntentReceiver;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handleMessage() state: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/samsung/android/sdk/composer/voice/BluetoothScoIntentReceiver$BluetoothScoStateHandler;->mState:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BluetoothScoIntentReceiver"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget p1, p0, Lcom/samsung/android/sdk/composer/voice/BluetoothScoIntentReceiver$BluetoothScoStateHandler;->mState:I

    const/16 v0, 0xc

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/samsung/android/sdk/composer/voice/BluetoothScoIntentReceiver$BluetoothScoStateHandler;->this$0:Lcom/samsung/android/sdk/composer/voice/BluetoothScoIntentReceiver;

    invoke-static {p1}, Lcom/samsung/android/sdk/composer/voice/BluetoothScoIntentReceiver;->access$100(Lcom/samsung/android/sdk/composer/voice/BluetoothScoIntentReceiver;)Lcom/samsung/android/sdk/composer/voice/BluetoothScoStateListener;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/sdk/composer/voice/BluetoothScoIntentReceiver$BluetoothScoStateHandler;->this$0:Lcom/samsung/android/sdk/composer/voice/BluetoothScoIntentReceiver;

    invoke-static {p1}, Lcom/samsung/android/sdk/composer/voice/BluetoothScoIntentReceiver;->access$100(Lcom/samsung/android/sdk/composer/voice/BluetoothScoIntentReceiver;)Lcom/samsung/android/sdk/composer/voice/BluetoothScoStateListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/sdk/composer/voice/BluetoothScoStateListener;->onScoAudioConnected()V

    goto :goto_0

    :cond_0
    const/16 v0, 0xa

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/samsung/android/sdk/composer/voice/BluetoothScoIntentReceiver$BluetoothScoStateHandler;->this$0:Lcom/samsung/android/sdk/composer/voice/BluetoothScoIntentReceiver;

    invoke-static {p1}, Lcom/samsung/android/sdk/composer/voice/BluetoothScoIntentReceiver;->access$100(Lcom/samsung/android/sdk/composer/voice/BluetoothScoIntentReceiver;)Lcom/samsung/android/sdk/composer/voice/BluetoothScoStateListener;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/sdk/composer/voice/BluetoothScoIntentReceiver$BluetoothScoStateHandler;->this$0:Lcom/samsung/android/sdk/composer/voice/BluetoothScoIntentReceiver;

    invoke-static {p1}, Lcom/samsung/android/sdk/composer/voice/BluetoothScoIntentReceiver;->access$100(Lcom/samsung/android/sdk/composer/voice/BluetoothScoIntentReceiver;)Lcom/samsung/android/sdk/composer/voice/BluetoothScoStateListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/sdk/composer/voice/BluetoothScoStateListener;->onScoAudioDisconnected()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setState(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/composer/voice/BluetoothScoIntentReceiver$BluetoothScoStateHandler;->mState:I

    return-void
.end method
