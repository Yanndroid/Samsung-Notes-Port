.class public Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoft;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoft$MicrosoftCallback;
    }
.end annotation


# static fields
.field private static final NOTES_NOTEBOOK_SAMSUNG:Ljava/lang/String; = "Samsung"

.field private static final NOTES_SECTION_SAMSUNGNOTES:Ljava/lang/String; = "Samsung Notes"

.field private static final TAG:Ljava/lang/String; = "SettingsMicrosoft"


# instance fields
.field private mActivityWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private mAuthHelper:Lg1/a;

.field private mCallback:Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoft$MicrosoftCallback;


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoft$MicrosoftCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;",
            "Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoft$MicrosoftCallback;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoft;->mAuthHelper:Lg1/a;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoft;->mActivityWeakReference:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoft;->mCallback:Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoft$MicrosoftCallback;

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lg1/a;->p(Landroid/content/Context;)Lg1/a;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoft;->mAuthHelper:Lg1/a;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoft;)Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoft$MicrosoftCallback;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoft;->mCallback:Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoft$MicrosoftCallback;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoft;)Z
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoft;->doInteractiveSignIn()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoft;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoft;->setSignedInState(ZLjava/lang/String;)V

    return-void
.end method

.method private doInteractiveSignIn()Z
    .locals 3

    const-string v0, "SettingsMicrosoft"

    const-string v1, "doInteractiveSignIn"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoft;->mActivityWeakReference:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoft;->mAuthHelper:Lg1/a;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoft;->getAuthCallback()Lcom/microsoft/identity/client/AuthenticationCallback;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lg1/a;->h(Landroid/app/Activity;Lcom/microsoft/identity/client/AuthenticationCallback;)Z

    move-result v0

    return v0
.end method

.method private doSilentSignIn()Z
    .locals 2

    const-string v0, "SettingsMicrosoft"

    const-string v1, "doSilentSignIn"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoft;->mAuthHelper:Lg1/a;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoft;->getAuthCallback()Lcom/microsoft/identity/client/AuthenticationCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lg1/a;->i(Lcom/microsoft/identity/client/AuthenticationCallback;)Z

    move-result v0

    return v0
.end method

.method private getAuthCallback()Lcom/microsoft/identity/client/AuthenticationCallback;
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoft$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoft$4;-><init>(Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoft;)V

    return-object v0
.end method

.method private setSignedInState(ZLjava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sign in : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", str : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SettingsMicrosoft"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->x()Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->Q(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoft;->mCallback:Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoft$MicrosoftCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoft$MicrosoftCallback;->onUpdate(ZLjava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public executeAfterAuthInit(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoft;->mAuthHelper:Lg1/a;

    invoke-virtual {v0, p1}, Lg1/a;->j(Ljava/lang/Runnable;)V

    return-void
.end method

.method public executeSignInAfterAuthInit()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoft;->mAuthHelper:Lg1/a;

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoft$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoft$1;-><init>(Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoft;)V

    invoke-virtual {v0, v1}, Lg1/a;->j(Ljava/lang/Runnable;)V

    return-void
.end method

.method public isAuthInitCompleted()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoft;->mAuthHelper:Lg1/a;

    invoke-virtual {v0}, Lg1/a;->q()Z

    move-result v0

    return v0
.end method

.method public isSignIn()Z
    .locals 3

    invoke-static {}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->x()Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->A()V

    invoke-static {}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->x()Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->z()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSignIn : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SettingsMicrosoft"

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoft;->mActivityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoft;->mActivityWeakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public signIn()Z
    .locals 2

    const-string v0, "SettingsMicrosoft"

    const-string v1, "signIn"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoft;->mAuthHelper:Lg1/a;

    invoke-virtual {v0}, Lg1/a;->l()Lcom/microsoft/identity/client/configuration/AccountMode;

    move-result-object v0

    sget-object v1, Lcom/microsoft/identity/client/configuration/AccountMode;->MULTIPLE:Lcom/microsoft/identity/client/configuration/AccountMode;

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoft;->doInteractiveSignIn()Z

    move-result v0

    return v0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoft;->doSilentSignIn()Z

    move-result v0

    return v0
.end method

.method public signOut()V
    .locals 2

    const-string v0, "SettingsMicrosoft"

    const-string v1, "signOut"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoft;->mAuthHelper:Lg1/a;

    invoke-virtual {v0}, Lg1/a;->l()Lcom/microsoft/identity/client/configuration/AccountMode;

    move-result-object v0

    sget-object v1, Lcom/microsoft/identity/client/configuration/AccountMode;->MULTIPLE:Lcom/microsoft/identity/client/configuration/AccountMode;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoft;->mAuthHelper:Lg1/a;

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoft$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoft$2;-><init>(Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoft;)V

    invoke-virtual {v0, v1}, Lg1/a;->t(Lcom/microsoft/identity/client/IMultipleAccountPublicClientApplication$RemoveAccountCallback;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoft;->mAuthHelper:Lg1/a;

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoft$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoft$3;-><init>(Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoft;)V

    invoke-virtual {v0, v1}, Lg1/a;->u(Lcom/microsoft/identity/client/ISingleAccountPublicClientApplication$SignOutCallback;)V

    :goto_0
    return-void
.end method
