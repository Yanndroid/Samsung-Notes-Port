.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/AbsCollectListenerImpl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/AbsCollectListenerImpl;->setStrokeRecognitionData(Ljava/util/Map;Ljava/util/List;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/AbsCollectListenerImpl;

.field public final synthetic val$clearChangedFlag:Z

.field public final synthetic val$resetPageIds:Ljava/util/List;

.field public final synthetic val$strokeRecognitionData:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/AbsCollectListenerImpl;Ljava/util/Map;Ljava/util/List;Z)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/AbsCollectListenerImpl$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/AbsCollectListenerImpl;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/AbsCollectListenerImpl$1;->val$strokeRecognitionData:Ljava/util/Map;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/AbsCollectListenerImpl$1;->val$resetPageIds:Ljava/util/List;

    iput-boolean p4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/AbsCollectListenerImpl$1;->val$clearChangedFlag:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/AbsCollectListenerImpl$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/AbsCollectListenerImpl;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/AbsCollectListenerImpl;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/CommonUtil;->isAvailableActivity(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/AbsCollectListenerImpl$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/AbsCollectListenerImpl;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/AbsCollectListenerImpl;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/AbsCollectListenerImpl;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/AbsCollectListenerImpl$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/AbsCollectListenerImpl;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/AbsCollectListenerImpl;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getComposerSaveModel()Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/ComposerSaveModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/ComposerSaveModel;->isReloadingWorkingState()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/AbsCollectListenerImpl;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "setStrokeRecognitionData# WorkingState.RELOADING"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/AbsCollectListenerImpl$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/AbsCollectListenerImpl;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/AbsCollectListenerImpl;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getComposerSpenDocModel()Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerSpenDocModel;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/AbsCollectListenerImpl$1;->val$strokeRecognitionData:Ljava/util/Map;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/AbsCollectListenerImpl$1;->val$resetPageIds:Ljava/util/List;

    iget-boolean v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/AbsCollectListenerImpl$1;->val$clearChangedFlag:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerSpenDocModel;->setStrokeRecognitionData(Ljava/util/Map;Ljava/util/List;Z)V

    :cond_2
    :goto_0
    return-void
.end method
