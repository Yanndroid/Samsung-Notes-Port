.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/CompListView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/animator/IListAnimator$IAnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/CompListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/CompListView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/CompListView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/CompListView$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/CompListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHidingAnimationEnd()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/CompListView$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/CompListView;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/CompListView;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/CompListView;)V

    return-void
.end method

.method public onShowingAnimationEnd()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/CompListView$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/CompListView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/CompListView;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/CompListView;Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/CompListView$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/CompListView;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/CompListView;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/CompListView;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/CompListPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/CompListPresenter;->getPageListPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->setBlockThumbnailUpdate(Z)V

    return-void
.end method

.method public onShowingAnimationStart()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/CompListView$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/CompListView;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/CompListView;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/CompListView;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/CompListPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/CompListPresenter;->getPageListPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->setBlockThumbnailUpdate(Z)V

    return-void
.end method
