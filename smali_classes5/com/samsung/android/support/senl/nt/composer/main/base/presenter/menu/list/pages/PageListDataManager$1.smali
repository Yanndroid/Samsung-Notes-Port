.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;->onInsertedPages(Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager$PageUpdateState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;

.field public final synthetic val$state:Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager$PageUpdateState;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager$PageUpdateState;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager$1;->val$state:Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager$PageUpdateState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListMode;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager$Construct;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager$Construct;->getView()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListContract$IView;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager$1;->val$state:Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager$PageUpdateState;

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListMode;->onPageInserted(Ljava/util/List;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListModeContract$IView;Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager$PageUpdateState;)V

    return-void
.end method
