.class Lcom/samsung/android/support/senl/nt/composer/main/recyclebin/presenter/RecycleBinPresenter$1;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager$HeirCreator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/recyclebin/presenter/RecycleBinPresenter;->createHeirCreator()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager$HeirCreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/recyclebin/presenter/RecycleBinPresenter;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/recyclebin/presenter/RecycleBinPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/recyclebin/presenter/RecycleBinPresenter$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/recyclebin/presenter/RecycleBinPresenter;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager$HeirCreator;-><init>()V

    return-void
.end method


# virtual methods
.method public createComposerModel(Landroid/app/Activity;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/recyclebin/model/RecycleBinModel;

    invoke-direct {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/recyclebin/model/RecycleBinModel;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method public createComposerViewPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/recyclebin/presenter/RecycleBinViewPresenter;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/recyclebin/presenter/RecycleBinViewPresenter;-><init>()V

    return-object v0
.end method

.method public createControllerManager(Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/ViewState;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/recyclebin/presenter/RecycleBinPresenter$RbControllerManager;

    invoke-direct {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/recyclebin/presenter/RecycleBinPresenter$RbControllerManager;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/ViewState;)V

    return-object v0
.end method

.method public createMenuPresenterManager(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/common/MenuPresenterContract$IMenuParent;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/MenuPresenterManager;
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/recyclebin/presenter/menu/MenuPresenterManagerRb;

    invoke-direct {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/recyclebin/presenter/menu/MenuPresenterManagerRb;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/common/MenuPresenterContract$IMenuParent;)V

    return-object v0
.end method
