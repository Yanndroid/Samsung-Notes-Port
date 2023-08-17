.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/TextOnlyModeController$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/text/SpenTextScaleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/TextOnlyModeController;->setTextOnlyEnable(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/TextOnlyModeController;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/TextOnlyModeController;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/TextOnlyModeController$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/TextOnlyModeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTextScaleChanged(F)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/TextOnlyModeController$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/TextOnlyModeController;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/TextOnlyModeController;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/TextOnlyModeController;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getTextOnlyModeState()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/common/TextOnlyModeState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/common/TextOnlyModeState;->canUseTextOnlyMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/TextOnlyModeController$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/TextOnlyModeController;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/TextOnlyModeController;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/TextOnlyModeController;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getTextOnlyModeState()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/common/TextOnlyModeState;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/common/TextOnlyModeState;->setLastTextScale(F)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/TextOnlyModeController$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/TextOnlyModeController;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/TextOnlyModeController;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/TextOnlyModeController;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerContract;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerContract;->onTextScaleChanged(F)V

    :cond_0
    return-void
.end method
