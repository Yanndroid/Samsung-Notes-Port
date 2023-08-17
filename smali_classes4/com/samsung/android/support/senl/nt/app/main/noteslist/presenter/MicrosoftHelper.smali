.class public Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/MicrosoftHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/MicrosoftHelper$IPresenter;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "MicrosoftHelper"


# instance fields
.field private final mIPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/MicrosoftHelper$IPresenter;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/MicrosoftHelper$IPresenter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/MicrosoftHelper;->mIPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/MicrosoftHelper$IPresenter;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/MicrosoftHelper;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/MicrosoftHelper$IPresenter;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/MicrosoftHelper;->mIPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/MicrosoftHelper$IPresenter;

    return-object p0
.end method

.method private checkSkipTipcard(Landroid/content/Context;)Z
    .locals 6

    invoke-static {p1}, Lo1/a;->b(Landroid/content/Context;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    const/4 v2, 0x1

    const-string v3, "MicrosoftHelper"

    if-nez p1, :cond_0

    const-string p1, "checkMeridianDialog# false - skip. "

    :goto_0
    invoke-static {v3, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    const-wide/32 v0, 0x240c8400

    cmp-long p1, v4, v0

    if-gez p1, :cond_1

    const-string p1, "checkMeridianDialog# false - operate only once a day. So skip. "

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private isMeridianAlreadyJoined(Landroid/content/Context;)Z
    .locals 3

    invoke-static {}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->x()Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->A()V

    invoke-static {}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->x()Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->z()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "MicrosoftHelper"

    const-string v2, "checkMeridianDialog# already login"

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, v1}, Lo1/a;->h(Landroid/content/Context;Z)V

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method private isMeridianDialogExist()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/MicrosoftHelper;->mIPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/MicrosoftHelper$IPresenter;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/MicrosoftHelper$IPresenter;->getAbsFragment()Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "meridian_dialog"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/common/dialog/MeridianDialogFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MicrosoftHelper"

    const-string v1, "checkMeridianDialog# already showing"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private showMeridianDialog(Landroid/content/Context;)V
    .locals 2

    const-string v0, "101"

    const-string v1, "6700"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/CommonSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/MicrosoftHelper;->isMeridianDialogExist()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/MicrosoftHelper;->isMeridianAlreadyJoined(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-static {p1}, Lf/a;->m(Landroid/content/Context;)Lf/a;

    move-result-object v0

    invoke-virtual {v0}, Lf/a;->r()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/MicrosoftHelper;->mIPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/MicrosoftHelper$IPresenter;

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/MicrosoftHelper$2;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/MicrosoftHelper$2;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/MicrosoftHelper;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/MicrosoftHelper$IPresenter;->showMeridianDialog(Lcom/samsung/android/support/senl/nt/app/common/dialog/MeridianDialogFragment$DialogListener;)V

    return-void
.end method

.method private showMeridianTipcardAfterMeridianDialog(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/MicrosoftHelper;->checkSkipTipcard(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lc2/a;->a()Lc2/a;

    move-result-object v0

    invoke-virtual {v0}, Lc2/a;->e()Z

    move-result v0

    const-string v1, "MicrosoftHelper"

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/common/util/NotesUtils;->isMsSyncSupported()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/util/DeviceUtils;->isDemoDevice(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/common/util/TipCardSharedPreference;->isMicrosoftLoginTipcardCanceled()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "checkMeridianDialog# false - tipCard already shown"

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lo1/a;->g(Landroid/content/Context;J)V

    new-instance p1, Lo1/a;

    invoke-direct {p1}, Lo1/a;-><init>()V

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/MicrosoftHelper$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/MicrosoftHelper$1;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/MicrosoftHelper;)V

    invoke-virtual {p1, v0}, Lo1/a;->f(Lo1/a$b;)V

    return-void

    :cond_3
    :goto_0
    const-string p1, "checkMeridianDialog# false - device condition"

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public checkMeridianDialog(Landroid/content/Context;)V
    .locals 1

    invoke-static {p1}, Lo1/a;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/MicrosoftHelper;->showMeridianDialog(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/MicrosoftHelper;->showMeridianTipcardAfterMeridianDialog(Landroid/content/Context;)V

    :goto_0
    return-void
.end method

.method public connectMsLoginProcessStarted()V
    .locals 3

    invoke-static {}, Ln/a;->b()Ln/a;

    move-result-object v0

    invoke-virtual {v0}, Ln/a;->k()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lc3/h;->e(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$string;->settings_sync_to_ms_network_connection_error_msg:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v2}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHandler;->show(Landroid/content/Context;Ljava/lang/String;IZ)V

    return-void

    :cond_1
    const-string v1, "101"

    const-string v2, "6701"

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/CommonSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lo1/a;->i(Landroid/content/Context;I)V

    const-string v0, "517"

    const-string v1, "5171"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/CommonSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/MicrosoftHelper;->mIPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/MicrosoftHelper$IPresenter;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/MicrosoftHelper$IPresenter;->startMeridianSettingProcess()V

    return-void
.end method
