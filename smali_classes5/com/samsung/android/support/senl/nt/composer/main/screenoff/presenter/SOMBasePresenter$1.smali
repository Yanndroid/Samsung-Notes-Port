.class Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/SOMBasePresenter$1;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager$HeirCreator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/SOMBasePresenter;->createHeirCreator()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager$HeirCreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/SOMBasePresenter;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/SOMBasePresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/SOMBasePresenter$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/SOMBasePresenter;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager$HeirCreator;-><init>()V

    return-void
.end method


# virtual methods
.method public createComposerViewPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffViewPresenter;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffViewPresenter;-><init>()V

    return-object v0
.end method

.method public createControllerManager(Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/ViewState;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/SOMBasePresenter$SOMControllerManager;

    invoke-direct {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/SOMBasePresenter$SOMControllerManager;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/ViewState;)V

    return-object v0
.end method

.method public createMenuPresenterManager(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/common/MenuPresenterContract$IMenuParent;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/MenuPresenterManager;
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/menu/MenuPresenterManagerSOff;

    invoke-direct {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/menu/MenuPresenterManagerSOff;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/common/MenuPresenterContract$IMenuParent;)V

    return-object v0
.end method

.method public createModeObserver()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ModeObserver;
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffModeObserver;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffModeObserver;-><init>()V

    return-object v0
.end method
