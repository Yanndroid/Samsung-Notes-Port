.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionPrint$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionPrint;->printNote(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamController;Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback<",
        "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareCommon$ResultValues;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionPrint;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionPrint;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionPrint$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionPrint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareCommon$ResultValues;)V
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionPrint;->b()Ljava/lang/String;

    move-result-object p1

    const-string v0, "printNote : onError"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareCommon$ResultValues;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionPrint$1;->onError(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareCommon$ResultValues;)V

    return-void
.end method

.method public onSuccess(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareCommon$ResultValues;)V
    .locals 3

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareCommon$ResultValues;->getContext()Landroid/content/Context;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionPrint$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionPrint;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareCommon$ResultValues;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionPrint;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionPrint;Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionPrint;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "printNote :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareCommon$ResultValues;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionPrint$1;->onSuccess(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareCommon$ResultValues;)V

    return-void
.end method
