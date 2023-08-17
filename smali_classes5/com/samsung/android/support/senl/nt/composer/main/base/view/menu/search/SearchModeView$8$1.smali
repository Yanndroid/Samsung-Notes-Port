.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/search/SearchModeView$8$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/search/SearchModeView$8;->onQueryTextSubmit(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/search/SearchModeView$8;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/search/SearchModeView$8;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/search/SearchModeView$8$1;->this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/search/SearchModeView$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/search/SearchModeView$8$1;->this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/search/SearchModeView$8;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/search/SearchModeView$8;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/search/SearchModeView;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/search/SearchModeView;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/search/SearchModeView;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/search/SearchModeView$8$1;->this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/search/SearchModeView$8;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/search/SearchModeView$8;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/search/SearchModeView;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/search/SearchModeView;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/search/SearchModeView;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter;->forward()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/search/SearchModeView$8$1;->this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/search/SearchModeView$8;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/search/SearchModeView$8;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/search/SearchModeView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/search/SearchModeView;->f(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/search/SearchModeView;Ljava/lang/Runnable;)V

    return-void
.end method
