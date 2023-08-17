.class public abstract Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbarFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "CustomToolbarFragment"


# instance fields
.field private mCreateOptionMenuRunnable:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;

.field private mIsToolbarEnabled:Z

.field public mToolbar:Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public enableAdjustableMenu()V
    .locals 2

    const-string v0, "CustomToolbarFragment"

    const-string v1, "enableAdjustableMenu# "

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbarFragment;->mToolbar:Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;->enableAdjustableMenu()V

    return-void
.end method

.method public enableToolbar()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbarFragment;->mToolbar:Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbarFragment;->mIsToolbarEnabled:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbarFragment;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_2

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbarFragment;->mHandler:Landroid/os/Handler;

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbarFragment;->mCreateOptionMenuRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_3

    new-instance v0, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbarFragment$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbarFragment$1;-><init>(Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbarFragment;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbarFragment;->mCreateOptionMenuRunnable:Ljava/lang/Runnable;

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbarFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbarFragment;->mCreateOptionMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbarFragment;->mIsToolbarEnabled:Z

    return-void
.end method

.method public getSupportedToolbar()Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/ICustomToolbar;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbarFragment;->mToolbar:Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;

    return-object v0
.end method

.method public abstract initAppbarContents(Landroid/view/View;)V
.end method

.method public initToolbar(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget v0, Lcom/samsung/android/support/senl/nt/base/R$id;->toolbar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbarFragment;->mToolbar:Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;->initToolbar()V

    :cond_0
    return-void
.end method

.method public initialize(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbarFragment;->initToolbar(Landroid/view/View;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbarFragment;->initAppbarContents(Landroid/view/View;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1    # Landroid/content/res/Configuration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onConfigurationChanged# "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->hashCode()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CustomToolbarFragment"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbarFragment;->mToolbar:Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;->postUpdateToolbarLayout()V

    :cond_0
    return-void
.end method

.method public abstract onCreateFragmentOptionMenu(Landroid/view/Menu;Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/IMenuInflater;)V
    .param p1    # Landroid/view/Menu;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/IMenuInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1    # Landroid/view/Menu;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MenuInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbarFragment;->mToolbar:Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    goto :goto_0

    :cond_0
    const-string p1, "CustomToolbarFragment"

    const-string p2, "onCreateOptionsMenu# "

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbarFragment;->mToolbar:Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;

    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbarFragment;->mToolbar:Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbarFragment;->onCreateFragmentOptionMenu(Landroid/view/Menu;Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/IMenuInflater;)V

    :goto_0
    return-void
.end method

.method public onDestroyView()V
    .locals 3

    const-string v0, "CustomToolbarFragment"

    const-string v1, "onDestroyView# "

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbarFragment;->mToolbar:Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;

    if-nez v0, :cond_0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setOnMenuItemClickListener(Landroidx/appcompat/widget/Toolbar$OnMenuItemClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbarFragment;->mToolbar:Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;->release()V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbarFragment;->mToolbar:Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbarFragment;->mIsToolbarEnabled:Z

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbarFragment;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbarFragment;->mCreateOptionMenuRunnable:Ljava/lang/Runnable;

    if-eqz v2, :cond_1

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbarFragment;->mHandler:Landroid/os/Handler;

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbarFragment;->mCreateOptionMenuRunnable:Ljava/lang/Runnable;

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public abstract onPrepareFragmentOptionMenu(Landroid/view/Menu;)V
    .param p1    # Landroid/view/Menu;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 1
    .param p1    # Landroid/view/Menu;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbarFragment;->mToolbar:Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    goto :goto_0

    :cond_0
    const-string p1, "CustomToolbarFragment"

    const-string v0, "onPrepareOptionsMenu# "

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbarFragment;->mToolbar:Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;

    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbarFragment;->onPrepareFragmentOptionMenu(Landroid/view/Menu;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbarFragment;->mToolbar:Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;->updateOverflowBtnBadge()V

    :goto_0
    return-void
.end method
