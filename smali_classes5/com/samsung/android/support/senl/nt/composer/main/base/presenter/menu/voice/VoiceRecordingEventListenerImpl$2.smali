.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordingEventListenerImpl$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordingEventListenerImpl;->updateMediaSession(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordingEventListenerImpl;

.field public final synthetic val$tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordingEventListenerImpl;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordingEventListenerImpl$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordingEventListenerImpl;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordingEventListenerImpl$2;->val$tag:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/EarphoneButtonManager;->getInstance()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/EarphoneButtonManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordingEventListenerImpl$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordingEventListenerImpl;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordingEventListenerImpl;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordingEventListenerImpl;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordingEventListenerImpl$2;->val$tag:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordingEventListenerImpl$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordingEventListenerImpl;

    invoke-static {v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordingEventListenerImpl;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordingEventListenerImpl;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/ViewState;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordingEventListenerImpl$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordingEventListenerImpl;

    invoke-static {v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordingEventListenerImpl;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordingEventListenerImpl;)Landroid/media/session/MediaSession$Callback;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/EarphoneButtonManager;->updateMediaSession(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/ViewState;Landroid/media/session/MediaSession$Callback;)V

    return-void
.end method
