.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager$HeirCreator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HeirCreator"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createComposerModel(Landroid/app/Activity;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-direct {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method public createComposerViewPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;-><init>()V

    return-object v0
.end method

.method public createControllerManager(Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/ViewState;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;

    invoke-direct {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/ViewState;)V

    return-object v0
.end method

.method public createDialogPresenterManager()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;-><init>()V

    return-object v0
.end method

.method public createMenuPresenterManager(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/common/MenuPresenterContract$IMenuParent;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/MenuPresenterManager;
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/MenuPresenterManager;

    invoke-direct {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/MenuPresenterManager;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/common/MenuPresenterContract$IMenuParent;)V

    return-object v0
.end method

.method public createModeObserver()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ModeObserver;
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ModeObserver;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ModeObserver;-><init>()V

    return-object v0
.end method
