.class public Lcom/samsung/android/support/senl/nt/app/main/coedit/CoeditLaunchSocialPickerActivity;
.super Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "CoeditLaunchSocialPickerActivity"


# instance fields
.field private mAnchorType:I

.field private mCaller:I

.field private mCoeditCreateInfo:Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditPickerInfo;

.field private final mCoeditCreateResult:Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnector$CoeditCreateResult;

.field private mSessionConnector:Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnector;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;-><init>()V

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/coedit/CoeditLaunchSocialPickerActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/main/coedit/CoeditLaunchSocialPickerActivity$1;-><init>(Lcom/samsung/android/support/senl/nt/app/main/coedit/CoeditLaunchSocialPickerActivity;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/coedit/CoeditLaunchSocialPickerActivity;->mCoeditCreateResult:Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnector$CoeditCreateResult;

    return-void
.end method

.method public static bridge synthetic e(Lcom/samsung/android/support/senl/nt/app/main/coedit/CoeditLaunchSocialPickerActivity;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/support/senl/nt/app/main/coedit/CoeditLaunchSocialPickerActivity;->mAnchorType:I

    return p0
.end method

.method public static bridge synthetic f(Lcom/samsung/android/support/senl/nt/app/main/coedit/CoeditLaunchSocialPickerActivity;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/support/senl/nt/app/main/coedit/CoeditLaunchSocialPickerActivity;->mCaller:I

    return p0
.end method

.method private finishActivityWithResult(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "finishActivityWithResult# groupId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", spaceId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CoeditLaunchSocialPickerActivity"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainCoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "mde_group_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "mde_space_id"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lv/b;->b()Lv/b;

    move-result-object p1

    invoke-virtual {p1}, Lv/b;->a()Ljava/lang/String;

    move-result-object p1

    const-string p2, "mde_owner_id"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/coedit/CoeditLaunchSocialPickerActivity;->mCoeditCreateInfo:Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditPickerInfo;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditPickerInfo;->getInvitationLink()Lcom/samsung/android/sdk/mobileservice/social/group/InvitationLink;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/coedit/CoeditLaunchSocialPickerActivity;->mCoeditCreateInfo:Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditPickerInfo;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditPickerInfo;->getInvitationLink()Lcom/samsung/android/sdk/mobileservice/social/group/InvitationLink;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/mobileservice/social/group/InvitationLink;->getUrl()Ljava/lang/String;

    move-result-object p1

    const-string p2, "mde_coedit_invite_url"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const/4 p1, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public static bridge synthetic g(Lcom/samsung/android/support/senl/nt/app/main/coedit/CoeditLaunchSocialPickerActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/coedit/CoeditLaunchSocialPickerActivity;->finishActivityWithResult(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic h(Lcom/samsung/android/support/senl/nt/app/main/coedit/CoeditLaunchSocialPickerActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/coedit/CoeditLaunchSocialPickerActivity;->launchSocialPicker()V

    return-void
.end method

.method public static bridge synthetic i(Lcom/samsung/android/support/senl/nt/app/main/coedit/CoeditLaunchSocialPickerActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/coedit/CoeditLaunchSocialPickerActivity;->showrProgress()V

    return-void
.end method

.method private isProgressVisible()Z
    .locals 1

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->progress_circle:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private launchSocialPicker()V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/coedit/CoeditLaunchSocialPickerActivity;->mSessionConnector:Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnector;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnector;->isStorageFull()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v3, Lcom/samsung/android/support/senl/nt/app/R$string;->co_edit_cannot_create_shared_note_storage_full:I

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v1, v2}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHandler;->show(Landroid/content/Context;Ljava/lang/String;IZ)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    const-string v0, "CoeditLaunchSocialPickerActivity"

    const-string v3, "launchSocialPicker#"

    invoke-static {v0, v3}, Lcom/samsung/android/support/senl/nt/app/common/log/MainCoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditPickerInfo$CreateStandalone;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Group://Standalone "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/samsung/android/support/senl/nt/app/R$string;->co_edit_note_auto_title:I

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {}, Lu/e;->c()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    const-string v2, ""

    aput-object v2, v5, v1

    invoke-virtual {p0, v4, v5}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditPickerInfo$CreateStandalone;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/coedit/CoeditLaunchSocialPickerActivity;->mCoeditCreateResult:Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnector$CoeditCreateResult;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditPickerInfo;->setResultCallback(Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnector$CoeditCreateResult;)Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditPickerInfo;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/main/coedit/CoeditLaunchSocialPickerActivity$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/app/main/coedit/CoeditLaunchSocialPickerActivity$3;-><init>(Lcom/samsung/android/support/senl/nt/app/main/coedit/CoeditLaunchSocialPickerActivity;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditPickerInfo;->setActivityFinishedListener(Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditPickerInfo$ActivityFinishedListener;)Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditPickerInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/coedit/CoeditLaunchSocialPickerActivity;->mCoeditCreateInfo:Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditPickerInfo;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/coedit/CoeditLaunchSocialPickerActivity;->mSessionConnector:Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnector;

    invoke-interface {v1, v0}, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnector;->launchSocialPicker(Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditPickerInfo;)V

    return-void
.end method

.method private showrProgress()V
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/coedit/CoeditLaunchSocialPickerActivity$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/main/coedit/CoeditLaunchSocialPickerActivity$4;-><init>(Lcom/samsung/android/support/senl/nt/app/main/coedit/CoeditLaunchSocialPickerActivity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/coedit/CoeditLaunchSocialPickerActivity;->isProgressVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CoeditLaunchSocialPickerActivity"

    const-string v1, "onBackPressed# blocked. progress is visible"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainCoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$layout;->handoff_activity:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    const/4 v0, 0x0

    const-string v1, "view_mode"

    const-string v2, "key_anchor_type"

    if-eqz p1, :cond_0

    const/16 v3, 0x65

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/support/senl/nt/app/main/coedit/CoeditLaunchSocialPickerActivity;->mAnchorType:I

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    :goto_0
    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/main/coedit/CoeditLaunchSocialPickerActivity;->mCaller:I

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_1

    const/16 v3, 0x64

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/support/senl/nt/app/main/coedit/CoeditLaunchSocialPickerActivity;->mAnchorType:I

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    goto :goto_0

    :cond_1
    :goto_1
    new-instance p1, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnectorImpl;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/main/coedit/CoeditLaunchSocialPickerActivity$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/app/main/coedit/CoeditLaunchSocialPickerActivity$2;-><init>(Lcom/samsung/android/support/senl/nt/app/main/coedit/CoeditLaunchSocialPickerActivity;)V

    const-string v2, "CoeditLaunchSocialPickerActivity"

    invoke-direct {p1, v0, v2, v1}, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnectorImpl;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnector$ActivityContract;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/coedit/CoeditLaunchSocialPickerActivity;->mSessionConnector:Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnector;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnector;->isLatestNotesVersion()Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "onCreate# isLatestNotesVersion false"

    invoke-static {v2, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainCoeditLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/coedit/CoeditLaunchSocialPickerActivity;->mSessionConnector:Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnector;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnector;->connect()Z

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;->onDestroy()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/coedit/CoeditLaunchSocialPickerActivity;->mSessionConnector:Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnector;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnector;->disconnect()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/coedit/CoeditLaunchSocialPickerActivity;->mAnchorType:I

    const-string v1, "key_anchor_type"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/coedit/CoeditLaunchSocialPickerActivity;->mCaller:I

    const-string v1, "view_mode"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method
