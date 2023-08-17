.class Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffViewPresenter$SOMDocInitialization;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerDocInitialization;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffViewPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SOMDocInitialization"
.end annotation


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/ModelManager;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerDocInitialization;-><init>(Landroid/app/Activity;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/ModelManager;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerDocInitialization;->mUseTemplate:Z

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerDocInitialization;->mLoadSettingBgColor:Z

    const/16 p1, 0x64

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerDocInitialization;->mSinglePageDefaultPageCount:I

    return-void
.end method
