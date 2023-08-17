.class Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/SOMBasePresenter$SOMComposerResolver;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerResolver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/SOMBasePresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SOMComposerResolver"
.end annotation


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerCloser;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerResolver$Contract;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerResolver;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerCloser;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerResolver$Contract;)V

    return-void
.end method


# virtual methods
.method public close(Ljava/lang/String;Ljava/lang/Runnable;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public isEditMode()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isEditable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
