.class public Lcom/samsung/android/support/senl/nt/composer/main/simple/model/ComposerStateManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mComposerState:Lcom/samsung/android/support/senl/nt/composer/main/simple/model/ComposerState;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "ComposerStateManager"

    const-string v1, "CV"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/ComposerStateManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/ComposerState;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/ComposerState;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/ComposerStateManager;->mComposerState:Lcom/samsung/android/support/senl/nt/composer/main/simple/model/ComposerState;

    return-void
.end method


# virtual methods
.method public getComposerState()Lcom/samsung/android/support/senl/nt/composer/main/simple/model/ComposerState;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/ComposerStateManager;->mComposerState:Lcom/samsung/android/support/senl/nt/composer/main/simple/model/ComposerState;

    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/ComposerStateManager;->mComposerState:Lcom/samsung/android/support/senl/nt/composer/main/simple/model/ComposerState;

    const-string v1, "ComposerState"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-void
.end method

.method public restoreState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "ComposerState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/ComposerStateManager;->TAG:Ljava/lang/String;

    const-string v0, "restoreState# no data"

    :goto_0
    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/ComposerState;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/ComposerStateManager;->mComposerState:Lcom/samsung/android/support/senl/nt/composer/main/simple/model/ComposerState;

    if-nez p1, :cond_1

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/ComposerStateManager;->TAG:Ljava/lang/String;

    const-string v0, "restoreState# empty data"

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/ComposerState;->setReadyRestore(Z)V

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/ComposerStateManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "restoreState# "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/ComposerStateManager;->mComposerState:Lcom/samsung/android/support/senl/nt/composer/main/simple/model/ComposerState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
