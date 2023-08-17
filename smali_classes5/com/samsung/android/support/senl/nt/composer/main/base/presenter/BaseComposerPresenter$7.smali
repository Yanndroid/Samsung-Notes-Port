.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter$7;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter$7;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/ActivityResult;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;->g()Ljava/lang/String;

    move-result-object v0

    const-string v1, "isDoingCoeditWorkThread# run : mActivityResult is null"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter$7;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/ActivityResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/ActivityResult;->getRequestCode()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter$7;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/ActivityResult;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/ActivityResult;->getResultCode()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter$7;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;

    invoke-static {v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/ActivityResult;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/ActivityResult;->getData()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;->onActivityResult(IILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter$7;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;->e(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/ActivityResult;)V

    return-void
.end method
