.class Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/composer/PwComposerViewPresenter$PwDocInitialization;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerDocInitialization;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/composer/PwComposerViewPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PwDocInitialization"
.end annotation


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/ModelManager;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerDocInitialization;-><init>(Landroid/app/Activity;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/ModelManager;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerDocInitialization;->mUseTemplate:Z

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerDocInitialization;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->setPDFReaderMode(Z)V

    return-void
.end method
