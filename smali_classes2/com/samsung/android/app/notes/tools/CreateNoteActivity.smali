.class public Lcom/samsung/android/app/notes/tools/CreateNoteActivity;
.super Lcom/samsung/android/support/senl/nt/composer/main/screenon/ScreenOnActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenon/ScreenOnActivity;-><init>()V

    return-void
.end method

.method private checkHorizontalFolded()V
    .locals 3

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/FoldStateCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/FoldStateCompat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/view/FoldStateCompat;->isFoldableDevice()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "posture_launched_key"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/samsung/android/app/notes/tools/CreateNoteActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/notes/tools/CreateNoteActivity$1;-><init>(Lcom/samsung/android/app/notes/tools/CreateNoteActivity;)V

    invoke-static {p0, v0}, Lcom/samsung/android/app/notes/tools/FoldedPopupUtil;->getFoldedActivityOptions(Landroid/content/Context;Lcom/samsung/android/app/notes/tools/FoldedPopupUtil$IFoldedActivityOptionsCallback;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setFullScreenMode()V
    .locals 3

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "posture_launched_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "fullscreen_mode"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_0
    return-void
.end method


# virtual methods
.method public getClassName()Ljava/lang/String;
    .locals 1

    const-class v0, Lcom/samsung/android/app/notes/tools/CreateNoteActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConcreteClass()Ljava/lang/Class;
    .locals 1

    const-class v0, Lcom/samsung/android/app/notes/tools/CreateNoteActivity;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenon/ScreenOnActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/samsung/android/app/notes/tools/CreateNoteActivity;->checkHorizontalFolded()V

    invoke-direct {p0}, Lcom/samsung/android/app/notes/tools/CreateNoteActivity;->setFullScreenMode()V

    return-void
.end method
