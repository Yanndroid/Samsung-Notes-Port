.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListView$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$SeslFastScrollerEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListView$5;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPressed(F)V
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListView$5;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListView;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListView;->e(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListView;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->setBlockThumbnailUpdate(Z)V

    return-void
.end method

.method public onReleased(F)V
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListView$5;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListView;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListView;->e(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListView;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->setBlockThumbnailUpdate(Z)V

    return-void
.end method
