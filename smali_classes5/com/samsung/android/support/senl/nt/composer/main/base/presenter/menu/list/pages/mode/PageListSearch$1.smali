.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListSearch$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/SearchResultUpdater$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListSearch;->init(Landroid/content/Context;Ljava/util/List;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListModeContract$IView;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListSearch;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListSearch;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListSearch$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListSearch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onThumbnailCreated(Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/PageId;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListSearch$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListSearch;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListSearch;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListSearch;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListModeContract$IView;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListSearch;->d()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onThumbnailCreated#, view is null"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListSearch$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListSearch;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListSearch;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListSearch;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListSearch$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListSearch;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListSearch;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListSearch;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListModeContract$IView;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListModeContract$IView;->getAdapter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/common/IPageAdapter;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/common/IPageAdapter;->notifyDataSetChanged()V

    return-void
.end method
