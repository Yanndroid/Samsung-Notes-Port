.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotificationHelper$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotificationHelper;->initializeButtons()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotificationHelper;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotificationHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotificationHelper$9;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotificationHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotificationHelper;->g()Ljava/lang/String;

    move-result-object p1

    const-string v0, "cancel recording in quickpanel while recording or pause by stop recording dialog"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->stopRecording()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotificationHelper$9;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotificationHelper;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotificationHelper;->removeVoiceNotification()V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->stopService()V

    return-void
.end method
