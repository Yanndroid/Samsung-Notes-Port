.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/dex/DoPFileTransmitReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/dex/DoPFileTransmitReceiver$Callback;
    }
.end annotation


# static fields
.field public static final ACTION_FILE_TRANSMIT_CANCELED:Ljava/lang/String; = "com.sec.android.app.dexonpc.file_transmit_canceled"

.field public static final ACTION_FILE_TRANSMIT_COMPLETED:Ljava/lang/String; = "com.sec.android.app.dexonpc.file_transmit_completed"

.field public static final ACTION_FILE_TRANSMIT_FAILED:Ljava/lang/String; = "com.sec.android.app.dexonpc.file_transmit_failed"

.field public static final ACTION_FILE_TRANSMIT_FINISHED:Ljava/lang/String; = "com.sec.android.app.dexonpc.file_transmit_finished"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCallback:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/dex/DoPFileTransmitReceiver$Callback;

.field private mEventId:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "DoPFileTransmitReceiver"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/dex/DoPFileTransmitReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/dex/DoPFileTransmitReceiver$Callback;)V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/dex/DoPFileTransmitReceiver;->mEventId:I

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/dex/DoPFileTransmitReceiver;->mCallback:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/dex/DoPFileTransmitReceiver$Callback;

    return-void
.end method


# virtual methods
.method public getIntentFilterForDoPFileTransmitReceiver()Landroid/content/IntentFilter;
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.sec.android.app.dexonpc.file_transmit_completed"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sec.android.app.dexonpc.file_transmit_failed"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sec.android.app.dexonpc.file_transmit_finished"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sec.android.app.dexonpc.file_transmit_canceled"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-object v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "id"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iget v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/dex/DoPFileTransmitReceiver;->mEventId:I

    if-ne v1, v0, :cond_3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sec.android.app.dexonpc.file_transmit_completed"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/dex/DoPFileTransmitReceiver;->mCallback:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/dex/DoPFileTransmitReceiver$Callback;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/dex/DoPFileTransmitReceiver$Callback;->onTransitCompleted(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sec.android.app.dexonpc.file_transmit_failed"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/dex/DoPFileTransmitReceiver;->mCallback:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/dex/DoPFileTransmitReceiver$Callback;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/dex/DoPFileTransmitReceiver$Callback;->onTransitFailed(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sec.android.app.dexonpc.file_transmit_finished"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/dex/DoPFileTransmitReceiver;->mCallback:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/dex/DoPFileTransmitReceiver$Callback;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/dex/DoPFileTransmitReceiver$Callback;->onTransitFinished(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sec.android.app.dexonpc.file_transmit_canceled"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/dex/DoPFileTransmitReceiver;->mCallback:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/dex/DoPFileTransmitReceiver$Callback;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/dex/DoPFileTransmitReceiver$Callback;->onTransitCanceled(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/dex/DoPFileTransmitReceiver;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mEventId="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/dex/DoPFileTransmitReceiver;->mEventId:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  id="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method
