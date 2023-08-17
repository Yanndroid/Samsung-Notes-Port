.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolder$PageHolderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageAdapter;->setPresenter(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageAdapter;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageAdapter$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBookmarkClicked(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageAdapter$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageAdapter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageAdapter;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageAdapter;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->onBookmarkClicked(Ljava/lang/String;)V

    return-void
.end method

.method public onCheckBoxClicked(Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageAdapter$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageAdapter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageAdapter;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageAdapter;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->onCheckBoxClicked(Ljava/lang/String;Z)V

    return-void
.end method

.method public onItemClicked(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageAdapter$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageAdapter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageAdapter;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageAdapter;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->onItemClicked(Ljava/lang/String;I)V

    return-void
.end method

.method public onItemLongClicked(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListContract$IPageHolder;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageAdapter$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageAdapter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageAdapter;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageAdapter;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->onItemLongClicked(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListContract$IPageHolder;I)V

    return-void
.end method

.method public onMoreBtnClicked(Landroid/view/View;Ljava/lang/String;II)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageAdapter$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageAdapter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageAdapter;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageAdapter;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->onMoreBtnClicked(Landroid/view/View;Ljava/lang/String;II)V

    return-void
.end method
