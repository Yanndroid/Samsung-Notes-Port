.class Lcom/samsung/android/support/senl/nt/composer/main/recyclebin/presenter/RecycleBinViewPresenter$RecyclerBinModeController;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerModeController;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/recyclebin/presenter/RecycleBinViewPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecyclerBinModeController"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerModeController;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/recyclebin/presenter/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/recyclebin/presenter/RecycleBinViewPresenter$RecyclerBinModeController;-><init>()V

    return-void
.end method


# virtual methods
.method public setViewMode(Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerModeController;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerContract;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;->View:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;

    invoke-virtual {p1, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;->isMode(Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;)Z

    move-result p1

    const/4 v1, 0x4

    invoke-interface {v0, p1, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerContract;->setModeOfSpenComposerView(ZI)V

    :cond_0
    return-void
.end method
