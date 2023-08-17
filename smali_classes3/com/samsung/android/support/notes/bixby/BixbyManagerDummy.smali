.class Lcom/samsung/android/support/notes/bixby/BixbyManagerDummy;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBixbyAction()Ljava/lang/String;
    .locals 1

    const-string v0, "SelectNote"

    return-object v0
.end method

.method public getShareType()Ljava/lang/String;
    .locals 1

    const-string v0, "none"

    return-object v0
.end method

.method public handleAppLink(ILandroid/content/Intent;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public registerBixby2Action(Lcom/samsung/android/support/notes/bixby/BixbyManagerContract$IBixby2Action;)V
    .locals 0

    return-void
.end method

.method public registerDrawerFragmentBixby2(Lcom/samsung/android/support/notes/bixby/BixbyManagerContract$IDrawerFragment;)V
    .locals 0

    return-void
.end method

.method public registerNoteFragmentBixby2(Lcom/samsung/android/support/notes/bixby/BixbyManagerContract$INoteFragment;)V
    .locals 0

    return-void
.end method

.method public registerNoteListActivityBixby2(Lcom/samsung/android/support/notes/bixby/BixbyManagerContract$INoteListActivity;)V
    .locals 0

    return-void
.end method

.method public releaseDrawerFragment()V
    .locals 0

    return-void
.end method

.method public releaseNoteFragment()V
    .locals 0

    return-void
.end method

.method public releaseNoteListActivity()V
    .locals 0

    return-void
.end method

.method public setup(Landroid/app/Application;)V
    .locals 0

    return-void
.end method
