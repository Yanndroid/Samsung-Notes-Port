.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter$CoeditHandlerContractImpl$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter$CoeditHandlerContractImpl$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$2:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter$CoeditHandlerContractImpl$1;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter$CoeditHandlerContractImpl$1;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter$CoeditHandlerContractImpl$1$1;->this$2:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter$CoeditHandlerContractImpl$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter$CoeditHandlerContractImpl$1$1;->this$2:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter$CoeditHandlerContractImpl$1;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter$CoeditHandlerContractImpl$1;->this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter$CoeditHandlerContractImpl;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter$CoeditHandlerContractImpl;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;->getComposerModel()Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getMdeInfo()Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter$CoeditHandlerContractImpl$1$1;->this$2:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter$CoeditHandlerContractImpl$1;

    iget-boolean v1, v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter$CoeditHandlerContractImpl$1;->val$set:Z

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;->setFixedReadPermission(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter$CoeditHandlerContractImpl$1$1;->this$2:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter$CoeditHandlerContractImpl$1;

    iget-boolean v1, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter$CoeditHandlerContractImpl$1;->val$set:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter$CoeditHandlerContractImpl$1;->this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter$CoeditHandlerContractImpl;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter$CoeditHandlerContractImpl$1;->val$message:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter$CoeditHandlerContractImpl;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter$CoeditHandlerContractImpl;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
