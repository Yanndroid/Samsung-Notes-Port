.class Lcom/samsung/android/support/notes/bixby/BixbyManagerObject;
.super Lcom/samsung/android/support/notes/bixby/BixbyManagerDummy;
.source "SourceFile"


# instance fields
.field private mBixby2:Lcom/samsung/android/support/notes/bixby/bixby2/Bixby2;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/support/notes/bixby/BixbyManagerDummy;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/notes/bixby/BixbyManagerObject;->mBixby2:Lcom/samsung/android/support/notes/bixby/bixby2/Bixby2;

    return-void
.end method


# virtual methods
.method public getBixbyAction()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/notes/bixby/BixbyManagerObject;->mBixby2:Lcom/samsung/android/support/notes/bixby/bixby2/Bixby2;

    invoke-virtual {v0}, Lcom/samsung/android/support/notes/bixby/bixby2/Bixby2;->getBixbyAction()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getShareType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/notes/bixby/BixbyManagerObject;->mBixby2:Lcom/samsung/android/support/notes/bixby/bixby2/Bixby2;

    invoke-virtual {v0}, Lcom/samsung/android/support/notes/bixby/bixby2/Bixby2;->getShareType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleAppLink(ILandroid/content/Intent;)I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/notes/bixby/BixbyManagerObject;->mBixby2:Lcom/samsung/android/support/notes/bixby/bixby2/Bixby2;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/notes/bixby/bixby2/Bixby2;->handleAppLink(ILandroid/content/Intent;)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public registerBixby2Action(Lcom/samsung/android/support/notes/bixby/BixbyManagerContract$IBixby2Action;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/notes/bixby/BixbyManagerObject;->mBixby2:Lcom/samsung/android/support/notes/bixby/bixby2/Bixby2;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/samsung/android/support/notes/bixby/BixbyManagerContract$IBixby2Action;->registerBixby2Action()Lcom/samsung/android/support/notes/bixby/bixby2/contract/IBixby2ActionBackgound;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/notes/bixby/bixby2/Bixby2;->bixbyAction(Lcom/samsung/android/support/notes/bixby/bixby2/contract/IBixby2ActionBackgound;)V

    :cond_0
    return-void
.end method

.method public registerDrawerFragmentBixby2(Lcom/samsung/android/support/notes/bixby/BixbyManagerContract$IDrawerFragment;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/notes/bixby/BixbyManagerObject;->mBixby2:Lcom/samsung/android/support/notes/bixby/bixby2/Bixby2;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/samsung/android/support/notes/bixby/BixbyManagerContract$IDrawerFragment;->registerDrawerFragmentBixby2()Lcom/samsung/android/support/notes/bixby/bixby2/contract/IDrawerFragmentBixby2;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/notes/bixby/bixby2/Bixby2;->registerDrawerFragment(Lcom/samsung/android/support/notes/bixby/bixby2/contract/IDrawerFragmentBixby2;)V

    :cond_0
    return-void
.end method

.method public registerNoteFragmentBixby2(Lcom/samsung/android/support/notes/bixby/BixbyManagerContract$INoteFragment;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/notes/bixby/BixbyManagerObject;->mBixby2:Lcom/samsung/android/support/notes/bixby/bixby2/Bixby2;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/samsung/android/support/notes/bixby/BixbyManagerContract$INoteFragment;->registerNoteFragmentBixby2()Lcom/samsung/android/support/notes/bixby/bixby2/contract/INoteFragmentBixby2;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/notes/bixby/bixby2/Bixby2;->registerNoteFragment(Lcom/samsung/android/support/notes/bixby/bixby2/contract/INoteFragmentBixby2;)V

    :cond_0
    return-void
.end method

.method public registerNoteListActivityBixby2(Lcom/samsung/android/support/notes/bixby/BixbyManagerContract$INoteListActivity;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/notes/bixby/BixbyManagerObject;->mBixby2:Lcom/samsung/android/support/notes/bixby/bixby2/Bixby2;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/samsung/android/support/notes/bixby/BixbyManagerContract$INoteListActivity;->registerNoteListActivityBixby2()Lcom/samsung/android/support/notes/bixby/bixby2/contract/INoteListActivityBixby2;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/notes/bixby/bixby2/Bixby2;->registerNoteListActivity(Lcom/samsung/android/support/notes/bixby/bixby2/contract/INoteListActivityBixby2;)V

    :cond_0
    return-void
.end method

.method public releaseDrawerFragment()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/notes/bixby/BixbyManagerObject;->mBixby2:Lcom/samsung/android/support/notes/bixby/bixby2/Bixby2;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/notes/bixby/bixby2/Bixby2;->releaseDrawerFragment()V

    :cond_0
    return-void
.end method

.method public releaseNoteFragment()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/notes/bixby/BixbyManagerObject;->mBixby2:Lcom/samsung/android/support/notes/bixby/bixby2/Bixby2;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/notes/bixby/bixby2/Bixby2;->releaseNoteFragment()V

    :cond_0
    return-void
.end method

.method public releaseNoteListActivity()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/notes/bixby/BixbyManagerObject;->mBixby2:Lcom/samsung/android/support/notes/bixby/bixby2/Bixby2;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/notes/bixby/bixby2/Bixby2;->releaseNoteListActivity()V

    :cond_0
    return-void
.end method

.method public setup(Landroid/app/Application;)V
    .locals 1

    new-instance v0, Lcom/samsung/android/support/notes/bixby/bixby2/Bixby2;

    invoke-direct {v0, p1}, Lcom/samsung/android/support/notes/bixby/bixby2/Bixby2;-><init>(Landroid/app/Application;)V

    iput-object v0, p0, Lcom/samsung/android/support/notes/bixby/BixbyManagerObject;->mBixby2:Lcom/samsung/android/support/notes/bixby/bixby2/Bixby2;

    return-void
.end method
