.class Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/composer/PwComposerViewPresenter$PwComposerControllerManager;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerManager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/composer/PwComposerViewPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PwComposerControllerManager"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerManager;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/composer/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/composer/PwComposerViewPresenter$PwComposerControllerManager;-><init>()V

    return-void
.end method


# virtual methods
.method public createComposerModeController()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerModeController;
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/composer/PwComposerViewPresenter$PwComposerModeController;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/composer/PwComposerViewPresenter$PwComposerModeController;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/composer/b;)V

    return-object v0
.end method

.method public createComposerSelectionController()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerSelectionController;
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/composer/PwComposerViewPresenter$PwComposerSelectionController;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/composer/PwComposerViewPresenter$PwComposerSelectionController;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/composer/c;)V

    return-object v0
.end method
