.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/inapp/InAppCollaborationPresenter$1$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/inapp/InAppCollaborationPresenter$1;->closedInAppCollaboration()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/inapp/InAppCollaborationPresenter$1;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/inapp/InAppCollaborationPresenter$1;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/inapp/InAppCollaborationPresenter$1$2;->this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/inapp/InAppCollaborationPresenter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/inapp/InAppCollaborationPresenter$1$2;->this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/inapp/InAppCollaborationPresenter$1;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/inapp/InAppCollaborationPresenter$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/inapp/InAppCollaborationPresenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/inapp/InAppCollaborationPresenter;->f(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/inapp/InAppCollaborationPresenter;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/HwToolbarPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/HwToolbarPresenter;->restoreFromRemoteTypePresenter()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/inapp/InAppCollaborationPresenter$1$2;->this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/inapp/InAppCollaborationPresenter$1;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/inapp/InAppCollaborationPresenter$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/inapp/InAppCollaborationPresenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/inapp/InAppCollaborationPresenter;->j(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/inapp/InAppCollaborationPresenter;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/richtext/RtToolbarPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/richtext/RtToolbarPresenter;->restoreFromRemoteTypePresenter()V

    return-void
.end method
