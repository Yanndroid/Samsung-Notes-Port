.class Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/composer/PwComposerViewPresenter$PwModelManager;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/ModelManager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/composer/PwComposerViewPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PwModelManager"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/ModelManager;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/composer/d;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/composer/PwComposerViewPresenter$PwModelManager;-><init>()V

    return-void
.end method


# virtual methods
.method public createObjectManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/composer/PwObjectManager;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/composer/PwObjectManager;-><init>()V

    return-object v0
.end method
