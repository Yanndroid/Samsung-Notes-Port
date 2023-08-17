.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotificationHelper$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotificationHelper;->showCancelDialog(Landroid/content/Context;)V
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

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotificationHelper$4;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotificationHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->stopRecording()V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotificationHelper$4;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotificationHelper;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotificationHelper;->removeVoiceNotification()V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->stopService()V

    const-string p1, "709"

    const-string p2, "7093"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
