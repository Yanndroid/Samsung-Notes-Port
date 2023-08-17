.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/inapp/InAppCollaborationPresenter$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/inapp/InAppCollaborationPresenter$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/inapp/InAppCollaborationPresenter$2;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/inapp/InAppCollaborationPresenter$2;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/inapp/InAppCollaborationPresenter$2$1;->this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/inapp/InAppCollaborationPresenter$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/inapp/InAppCollaborationPresenter$2$1;->this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/inapp/InAppCollaborationPresenter$2;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/inapp/InAppCollaborationPresenter$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/inapp/InAppCollaborationPresenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/inapp/InAppCollaborationPresenter;->l(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/inapp/InAppCollaborationPresenter;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/ToolbarPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/ToolbarPresenter;->isToolbarShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/inapp/InAppCollaborationPresenter$2$1;->this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/inapp/InAppCollaborationPresenter$2;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/inapp/InAppCollaborationPresenter$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/inapp/InAppCollaborationPresenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/inapp/InAppCollaborationPresenter;->l(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/inapp/InAppCollaborationPresenter;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/ToolbarPresenter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/ToolbarPresenter;->show(Z)V

    return-void
.end method
