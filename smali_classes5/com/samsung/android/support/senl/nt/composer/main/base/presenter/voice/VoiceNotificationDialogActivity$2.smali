.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotificationDialogActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotificationDialogActivity;->showConfirmSaveDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotificationDialogActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotificationDialogActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotificationDialogActivity$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotificationDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->cancelRecording()V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotificationDialogActivity$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotificationDialogActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
