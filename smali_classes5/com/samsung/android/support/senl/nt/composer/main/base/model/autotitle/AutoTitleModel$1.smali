.class Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel;->requestRecommendedTitleList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel;->g()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestRecommendedTitleList# docChanged "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->saveCache(Z)Z

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getComposerSaveModel()Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/ComposerSaveModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/ComposerSaveModel;->isIdleWorkingState()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel;->f(Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel;)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel$MessageHandler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel$MessageHandler;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel;->e(Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel;)V

    :goto_2
    return-void
.end method
