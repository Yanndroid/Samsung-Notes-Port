.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter;->onUpdateSearchingResult(ILcom/samsung/android/sdk/composer/search/SearchData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter;

.field public final synthetic val$searchModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/search/SearchModel;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter;Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/search/SearchModel;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter$2;->val$searchModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/search/SearchModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModeContract$IView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModeContract$IView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter$2;->val$searchModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/search/SearchModel;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/search/SearchModel;->canForward()Z

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter$2;->val$searchModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/search/SearchModel;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/search/SearchModel;->canBackward()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModeContract$IView;->updateMoveButton(ZZ)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter;)V

    return-void
.end method
