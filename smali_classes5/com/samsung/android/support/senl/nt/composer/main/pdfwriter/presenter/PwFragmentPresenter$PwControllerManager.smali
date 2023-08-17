.class Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/PwFragmentPresenter$PwControllerManager;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/PwFragmentPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PwControllerManager"
.end annotation


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/ViewState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/ViewState;)V

    return-void
.end method


# virtual methods
.method public createStorageChecker()Lcom/samsung/android/support/senl/nt/composer/main/base/util/StorageChecker;
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/util/StorageChecker;

    const/16 v1, 0x800

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/StorageChecker;-><init>(I)V

    return-object v0
.end method
