.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/VoiceOnStateChangedListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel$UpdateVoiceSyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/VoiceOnStateChangedListener;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IDialogPresenter;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/VoiceOnStateChangedListener;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/VoiceOnStateChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/VoiceOnStateChangedListener$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/VoiceOnStateChangedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/VoiceOnStateChangedListener$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/VoiceOnStateChangedListener;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/VoiceOnStateChangedListener;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/VoiceOnStateChangedListener;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->isPlayingVoiceData()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/VoiceOnStateChangedListener$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/VoiceOnStateChangedListener;

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/VoiceOnStateChangedListener;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/VoiceOnStateChangedListener;Z)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/VoiceOnStateChangedListener$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/VoiceOnStateChangedListener;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/VoiceOnStateChangedListener;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/VoiceOnStateChangedListener;Z)V

    :cond_1
    :goto_0
    return-void
.end method
