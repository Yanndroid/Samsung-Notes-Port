.class public Lcom/samsung/android/support/senl/nt/app/settings/SettingsMainActivity;
.super Lcom/samsung/android/support/senl/nt/app/settings/common/component/SettingsBaseActivity;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "ST$SettingsMainActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/common/component/SettingsBaseActivity;-><init>()V

    return-void
.end method

.method private isExistClassInSameTask(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    invoke-virtual {p0}, Landroid/app/Activity;->getTaskId()I

    move-result v0

    const-string v1, "activity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    invoke-virtual {p1}, Landroid/app/ActivityManager;->getAppTasks()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$AppTask;

    invoke-virtual {v1}, Landroid/app/ActivityManager$AppTask;->getTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    if-gt v2, v3, :cond_1

    iget v2, v1, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    if-eq v0, v2, :cond_2

    goto :goto_0

    :cond_1
    iget v2, v1, Landroid/app/ActivityManager$RecentTaskInfo;->taskId:I

    if-eq v0, v2, :cond_2

    goto :goto_0

    :cond_2
    iget-object v1, v1, Landroid/app/ActivityManager$RecentTaskInfo;->baseActivity:Landroid/content/ComponentName;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public createSettingsFragment()Landroidx/fragment/app/Fragment;
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;-><init>()V

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    const-string v0, "ST$SettingsMainActivity"

    return-object v0
.end method

.method public initFragment()V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/settings/SettingsMainActivity;->createSettingsFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/app/settings/common/component/SettingsBaseActivity;->initFragmentArgument(Landroidx/fragment/app/Fragment;)V

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

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/common/component/SettingsBaseActivity;->mFragmentType:I

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/app/settings/common/component/SettingsBaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper;->noticeAppPermissionIfNeededs(Landroid/app/Activity;)Z

    return-void
.end method

.method public onSupportNavigateUp()Z
    .locals 4

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/access/notelist/NoteListAccessHandler;->getNoteListClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p0, v1}, Lcom/samsung/android/support/senl/nt/app/settings/SettingsMainActivity;->isExistClassInSameTask(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return v2

    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v0, 0x1c000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/MultiTaskManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/MultiTaskManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Lcom/samsung/android/support/senl/nt/base/common/MultiTaskManager;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    return v2
.end method
