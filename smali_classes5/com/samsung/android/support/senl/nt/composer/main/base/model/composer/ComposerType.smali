.class public Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ComposerType;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ComposerType$Type;
    }
.end annotation


# instance fields
.field private mType:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ComposerType$Type;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ComposerType$Type;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ComposerType;->mType:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ComposerType$Type;

    return-void
.end method


# virtual methods
.method public isComposer()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ComposerType;->mType:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ComposerType$Type;

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ComposerType$Type;->COMPOSER:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ComposerType$Type;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRecyclebin()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ComposerType;->mType:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ComposerType$Type;

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ComposerType$Type;->RECYCLEBIN:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ComposerType$Type;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isScreenOFF()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ComposerType;->mType:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ComposerType$Type;

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ComposerType$Type;->SCREENOFF:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ComposerType$Type;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isScreenOn()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ComposerType;->mType:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ComposerType$Type;

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ComposerType$Type;->SCREENON:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ComposerType$Type;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
