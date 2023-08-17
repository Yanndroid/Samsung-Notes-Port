.class Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/SOMBasePresenter$SOMControllerManager;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/SOMBasePresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SOMControllerManager"
.end annotation


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/ViewState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/ViewState;)V

    return-void
.end method


# virtual methods
.method public creteQuickSaveTimerController()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/QuickSaveTimerController;
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/QuickSaveTimerController$Empty;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/QuickSaveTimerController$Empty;-><init>()V

    return-object v0
.end method
