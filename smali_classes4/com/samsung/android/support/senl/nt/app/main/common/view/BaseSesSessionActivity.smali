.class public Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity;
.super Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity$delayedRequest;,
        Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity$SesUiAllListener;,
        Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity$RequestSyncCallback;
    }
.end annotation


# static fields
.field public static final RESULT_ERROR:I = 0x1

.field private static final TAG:Ljava/lang/String; = "BaseSesSessionActivity"


# instance fields
.field private isConnecting:Z

.field private isDestroyCalled:Z

.field private mFinishActivityBySesPermissionError:Z

.field private mIsRequestSocialSignUp:Z

.field private mIsSocialSignUpResultOk:Z

.field private mRetryRequestSyncByDelayedActivate:Z

.field private mRetryRequestSyncByDelayedActivateCount:I

.field private mSesUiAllListener:Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity$SesUiAllListener;

.field private sessionCount:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity;->isConnecting:Z

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity;->isDestroyCalled:Z

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity;->mFinishActivityBySesPermissionError:Z

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity;->mRetryRequestSyncByDelayedActivateCount:I

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity;->mRetryRequestSyncByDelayedActivate:Z

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity;->mIsSocialSignUpResultOk:Z

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity;->mIsRequestSocialSignUp:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity;->mSesUiAllListener:Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity$SesUiAllListener;

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity;->sessionCount:I

    return-void
.end method

.method private checkReadyToUseSharedService()Z
    .locals 6

    const-string v0, "BaseSesSessionActivity"

    const/4 v1, 0x1

    :try_start_0
    invoke-static {}, Lu/b;->g()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity;->getTag()Ljava/lang/String;

    move-result-object v2

    const-string v3, "checkReadyToUseSharedService# start social sign up."

    invoke-static {v2, v3}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity;->mIsRequestSocialSignUp:Z

    if-nez v2, :cond_0

    iput-boolean v1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity;->mIsRequestSocialSignUp:Z

    invoke-static {}, Lu/b;->e()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "getIntentForSocialSignUp() start activity"

    invoke-static {v0, v3}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x8

    invoke-virtual {p0, v2, v3}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity;->getTag()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkReadyToUseSharedService# Exception : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/desktopmode/DesktopModeCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/desktopmode/DesktopModeCompat;

    move-result-object v2

    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/senl/cm/base/framework/desktopmode/DesktopModeCompat;->isDexMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "reconnectShareContentProvider() start"

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity;->reconnectShareContentProvider()V

    :cond_2
    return v1
.end method

.method private createSessionInstance()V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "createSessionInstance()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity;->sessionCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity;->sessionCount:I

    iput-boolean v1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity;->isConnecting:Z

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity;->mSesUiAllListener:Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity$SesUiAllListener;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity$SesUiAllListener;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity$SesUiAllListener;-><init>(Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity;Lcom/samsung/android/support/senl/nt/app/main/common/view/a;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity;->mSesUiAllListener:Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity$SesUiAllListener;

    :cond_0
    invoke-static {}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/k;->L()Lcom/samsung/android/app/notes/sync/contentsharing/sessession/k;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity;->mSesUiAllListener:Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity$SesUiAllListener;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->l(ILcom/samsung/android/support/senl/nt/base/common/sync/SesUiListener;)Z

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "createSessionInstance() finished"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic e(Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity;->mRetryRequestSyncByDelayedActivateCount:I

    return p0
.end method

.method public static bridge synthetic f(Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity;)Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity$SesUiAllListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity;->mSesUiAllListener:Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity$SesUiAllListener;

    return-object p0
.end method

.method public static bridge synthetic g(Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity;->mFinishActivityBySesPermissionError:Z

    return-void
.end method

.method public static bridge synthetic h(Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity;->mRetryRequestSyncByDelayedActivate:Z

    return-void
.end method

.method public static bridge synthetic i(Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity;)Z
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity;->isSesSessionConnected()Z

    move-result p0

    return p0
.end method

.method private isSesSessionConnected()Z
    .locals 3

    invoke-static {}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/k;->L()Lcom/samsung/android/app/notes/sync/contentsharing/sessession/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->A()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSesSessionConnected# connected : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isDestroyCalled : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity;->isDestroyCalled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BaseSesSessionActivity"

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity;->isDestroyCalled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static bridge synthetic j(Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity;->requestSync(Ljava/lang/String;)V

    return-void
.end method

.method private removeSessionInstance()V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "removeSessionInstance()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity;->sessionCount:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity;->sessionCount:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity;->isConnecting:Z

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity;->isDestroyCalled:Z

    invoke-static {}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/k;->L()Lcom/samsung/android/app/notes/sync/contentsharing/sessession/k;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity;->mSesUiAllListener:Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity$SesUiAllListener;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->n(ILcom/samsung/android/support/senl/nt/base/common/sync/SesUiListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity;->mSesUiAllListener:Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity$SesUiAllListener;

    return-void
.end method

.method private requestSync(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity$2;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity$2;-><init>(Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public getTag()Ljava/lang/String;
    .locals 1

    const-string v0, "BaseSesSessionActivity$"

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p3    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onActivityResult# requestCode : "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", resultCode : "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "BaseSesSessionActivity"

    invoke-static {v0, p3}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p3, 0x8

    if-ne p1, p3, :cond_1

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity;->mIsRequestSocialSignUp:Z

    const/4 p1, -0x1

    const/4 p3, 0x1

    if-ne p2, p1, :cond_0

    iput-boolean p3, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity;->mIsSocialSignUpResultOk:Z

    const-string p1, "onActivityResult : REQUEST_INTENT_SOCIAL_SIGN_UP"

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity;->requestSync(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity;->getTag()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onActivityResult Social sign up fail, app finish"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p3, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity;->sessionCount:I

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Ln/a;->b()Ln/a;

    move-result-object p1

    invoke-virtual {p1}, Ln/a;->i()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x4

    invoke-static {p1}, Lcom/samsung/android/support/senl/cm/base/framework/os/PermissionCompat;->getStoragePermissions(I)[Ljava/lang/String;

    move-result-object p1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-gt v0, v1, :cond_1

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity$1;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity$1;-><init>(Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity;[Ljava/lang/String;)V

    invoke-static {p0, v0, p1}, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper;->isPermissionGranted(Landroid/app/Activity;Ljava/lang/Runnable;[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/common/util/NotesUtils;->getPreferenceMDESupported()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity;->createSessionInstance()V

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity;->getTag()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onCreate() finished"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity;->isDestroyCalled:Z

    invoke-super {p0}, Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;->onDestroy()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1
    .param p2    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/16 v0, 0xcb

    if-ne p1, v0, :cond_1

    invoke-static {p0, p3, p2}, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper;->verifyRequestResult(Landroid/app/Activity;[I[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity;->getTag()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onRequestPermissionsResult(). permission is granted."

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/common/util/NotesUtils;->getPreferenceMDESupported()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity;->createSessionInstance()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity;->getTag()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onRequestPermissionsResult(). permission is not granted."

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 5

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onResume() "

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ln/a;->b()Ln/a;

    move-result-object v0

    invoke-virtual {v0}, Ln/a;->i()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lf/a;->m(Landroid/content/Context;)Lf/a;

    move-result-object v0

    invoke-virtual {v0}, Lf/a;->r()Z

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity;->isSesSessionConnected()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity;->onSesSessionConnected()Z

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity;->mFinishActivityBySesPermissionError:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v2, "onResume# checkPermission"

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity;->mFinishActivityBySesPermissionError:Z

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v3, "com.samsung.android.mobileservice"

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string v4, "android.permission.READ_CONTACTS"

    invoke-virtual {v0, v4, v3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v2, :cond_1

    if-nez v0, :cond_1

    const-string v0, "initConnection : connected, has permission"

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity;->mIsSocialSignUpResultOk:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    :cond_2
    iput-boolean v1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity;->mIsSocialSignUpResultOk:Z

    const-string v0, "initConnection : connected, no permission"

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity;->mRetryRequestSyncByDelayedActivate:Z

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity;->mRetryRequestSyncByDelayedActivateCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity;->mRetryRequestSyncByDelayedActivateCount:I

    iput-boolean v1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity;->mRetryRequestSyncByDelayedActivate:Z

    const-string v0, "initConnection : connected, mFinishActivityBySesPermissionError false"

    :goto_0
    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity;->requestSync(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity;->isConnecting:Z

    if-nez v0, :cond_5

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity;->createSessionInstance()V

    goto :goto_1

    :cond_5
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity$delayedRequest;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity$delayedRequest;-><init>(Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_6
    :goto_1
    return-void
.end method

.method public onSesSessionConnected()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onSesSessionConnected()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity;->isConnecting:Z

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity;->isDestroyCalled:Z

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity;->checkReadyToUseSharedService()Z

    move-result v0

    return v0
.end method

.method public onStop()V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStop() sesSessionCount : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity;->sessionCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/common/util/NotesUtils;->getPreferenceMDESupported()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity;->removeSessionInstance()V

    :cond_0
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    return-void
.end method

.method public reconnectShareContentProvider()V
    .locals 0

    return-void
.end method
