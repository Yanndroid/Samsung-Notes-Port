.class public Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/SearchSettingsActivity;
.super Lcom/samsung/android/support/senl/nt/app/settings/common/component/SettingsBaseActivity;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "SearchSettingsActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/common/component/SettingsBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public createSettingsFragment()Landroidx/fragment/app/Fragment;
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/SearchSettingsFragment;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/SearchSettingsFragment;-><init>()V

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    const-string v0, "SearchSettingsActivity"

    return-object v0
.end method

.method public initFragment()V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/SearchSettingsActivity;->createSettingsFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/SearchSettingsFragment;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$id;->fragment_container:I

    invoke-virtual {v1, v2, v0}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    :cond_0
    return-void
.end method

.method public initFragmentType()V
    .locals 1

    const/16 v0, 0xc

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/common/component/SettingsBaseActivity;->mFragmentType:I

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/app/settings/common/component/SettingsBaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/SearchSettingsActivity;->getTag()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onCreate# "

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setFinishOnTouchOutside(Z)V

    return-void
.end method

.method public onSupportNavigateUp()Z
    .locals 1

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    const/4 v0, 0x1

    return v0
.end method
