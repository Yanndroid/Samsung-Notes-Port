.class public Lcom/samsung/android/support/senl/nt/composer/main/recyclebin/model/RecycleBinModel;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;-><init>(Landroid/app/Activity;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mState:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;->setEditable(Z)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mComposerSaveModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/ComposerSaveModel;

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/ComposerSaveModel;->setEditable(Z)V

    return-void
.end method


# virtual methods
.method public getRecycleBinTimeMoved()J
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getNotesDocEntityManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->getRecycleBinTimeMoved()J

    move-result-wide v0

    return-wide v0
.end method

.method public restore()V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getNotesDocEntityManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->restore()V

    return-void
.end method
