.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ExternalListenerManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ExternalListenerManager;->createSpenInsertDetector()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ExternalListenerManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ExternalListenerManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ExternalListenerManager$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ExternalListenerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ExternalListenerManager$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ExternalListenerManager;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ExternalListenerManager;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ExternalListenerManager;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerLifeState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerLifeState;->isInitLayoutFinished()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ExternalListenerManager$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ExternalListenerManager;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ExternalListenerManager;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ExternalListenerManager;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ExternalListenerManager$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ExternalListenerManager;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ExternalListenerManager;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ExternalListenerManager;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getModeManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;->getMode()Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;->Text:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ExternalListenerManager$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ExternalListenerManager;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ExternalListenerManager;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ExternalListenerManager;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/MenuPresenterManager;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ExternalListenerManager$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ExternalListenerManager;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ExternalListenerManager;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ExternalListenerManager;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/MenuPresenterManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/MenuPresenterManager;->getRtToolbarPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/richtext/RtToolbarPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/richtext/RtToolbarPresenter;->hideAll()V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ExternalListenerManager$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ExternalListenerManager;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ExternalListenerManager;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ExternalListenerManager;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getModeManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;->Writing:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;

    const/4 v2, 0x1

    const-string v3, "penInsert"

    invoke-virtual {v0, v1, v3, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;->setMode(Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;Ljava/lang/String;Z)V

    :cond_2
    :goto_0
    return-void
.end method
