.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPinToHome$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPinToHome$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback<",
        "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskLock$ResultValues;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPinToHome$1;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPinToHome$1;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPinToHome$1$1;->this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPinToHome$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskLock$ResultValues;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskLock$ResultValues;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPinToHome$1$1;->onError(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskLock$ResultValues;)V

    return-void
.end method

.method public onSuccess(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskLock$ResultValues;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPinToHome$1$1;->this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPinToHome$1;

    iget-object v1, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPinToHome$1;->val$activity:Landroid/app/Activity;

    if-eqz v1, :cond_0

    iget-object v2, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPinToHome$1;->val$composerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    if-eqz v2, :cond_0

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPinToHome$1;->val$appWidgetResolver:Lcom/samsung/android/support/senl/nt/composer/main/base/appwidget/IAppWidgetResolver;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskLock$ResultValues;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskLock$ResultValues;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, v2, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/appwidget/IAppWidgetResolver;->pinToHme(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPinToHome$1$1;->this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPinToHome$1;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPinToHome$1;->val$menuManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/common/MenuPresenterContract$IMenuManager;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/common/MenuPresenterContract$IMenuManager;->invalidateOptionsMenu()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPinToHome$1$1;->this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPinToHome$1;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPinToHome$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x2000

    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskLock$ResultValues;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPinToHome$1$1;->onSuccess(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskLock$ResultValues;)V

    return-void
.end method
