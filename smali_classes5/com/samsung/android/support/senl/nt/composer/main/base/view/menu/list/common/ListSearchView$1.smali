.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/common/ListSearchView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/common/ListSearchView;->initSearchView(Landroid/view/View;Landroid/view/View$OnFocusChangeListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/common/ListSearchView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/common/ListSearchView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/common/ListSearchView$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/common/ListSearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/common/ListSearchView$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/common/ListSearchView;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/common/ListSearchView;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/common/ListSearchView;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/common/ListSearchView$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/common/ListSearchView;

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/common/ListSearchView;->g(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/common/ListSearchView;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/common/ListSearchView$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/common/ListSearchView;

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/common/ListSearchView;->f(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/common/ListSearchView;Ljava/lang/String;)V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/common/ListSearchView$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/common/ListSearchView;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/common/ListSearchView;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/common/ListSearchView;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/common/ListSearchView$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/common/ListSearchView;

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/common/ListSearchView;->f(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/common/ListSearchView;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/common/ListSearchView$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/common/ListSearchView;

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/common/ListSearchView;->g(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/common/ListSearchView;Ljava/lang/String;)V

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/common/ListSearchView$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/common/ListSearchView;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/common/ListSearchView;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/common/ListSearchView;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/common/IBaseListContract$ISearchPresenter;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/common/IBaseListContract$ISearchPresenter;->submitSearchKeyword(Ljava/lang/String;)V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
