.class public Lcom/samsung/android/support/senl/nt/app/lock/presenter/create/CreatePasswordPresenter;
.super Lcom/samsung/android/support/senl/nt/app/lock/presenter/password/AbsPasswordPresenter;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/lock/presenter/create/ICreateContract$IPresenter;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mView:Lcom/samsung/android/support/senl/nt/app/lock/presenter/create/ICreateContract$IView;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "CreatePasswordPresenter"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/lock/utils/LockLogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/create/CreatePasswordPresenter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/lock/presenter/create/ICreateContract$IView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/password/AbsPasswordPresenter;-><init>(Lcom/samsung/android/support/senl/nt/app/lock/presenter/password/IBasePasswordContract$IView;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/create/CreatePasswordPresenter;->mView:Lcom/samsung/android/support/senl/nt/app/lock/presenter/create/ICreateContract$IView;

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/support/senl/nt/app/lock/presenter/create/CreatePasswordPresenter;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/create/CreatePasswordPresenter;->lambda$savePassword$0(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/app/lock/presenter/create/CreatePasswordPresenter;)Lcom/samsung/android/support/senl/nt/app/lock/presenter/create/ICreateContract$IView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/create/CreatePasswordPresenter;->mView:Lcom/samsung/android/support/senl/nt/app/lock/presenter/create/ICreateContract$IView;

    return-object p0
.end method

.method public static bridge synthetic c()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/create/CreatePasswordPresenter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private synthetic lambda$savePassword$0(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/create/CreatePasswordPresenter;->mView:Lcom/samsung/android/support/senl/nt/app/lock/presenter/create/ICreateContract$IView;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/password/IBasePasswordContract$IView;->ignoreInputEvent(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/password/AbsPasswordPresenter;->mPasswordModel:Lcom/samsung/android/support/senl/nt/app/lock/model/password/PasswordModel;

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/lock/presenter/create/CreatePasswordPresenter$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/create/CreatePasswordPresenter$1;-><init>(Lcom/samsung/android/support/senl/nt/app/lock/presenter/create/CreatePasswordPresenter;Landroid/content/Context;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/samsung/android/support/senl/nt/app/lock/model/password/PasswordModel;->savePassword(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/app/lock/model/password/PasswordModel$OnSaveResultListener;)V

    return-void
.end method


# virtual methods
.method public finishCancel()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/create/CreatePasswordPresenter;->mView:Lcom/samsung/android/support/senl/nt/app/lock/presenter/create/ICreateContract$IView;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/base/IBaseContract$IView;->finishCancel()V

    :cond_0
    return-void
.end method

.method public finishSuccess()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/create/CreatePasswordPresenter;->mView:Lcom/samsung/android/support/senl/nt/app/lock/presenter/create/ICreateContract$IView;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/base/IBaseContract$IView;->finishSuccess()V

    :cond_0
    return-void
.end method

.method public savePassword(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/create/CreatePasswordPresenter;->TAG:Ljava/lang/String;

    const-string v1, "savePassword"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;

    invoke-direct {v1, v0}, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/create/a;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/create/a;-><init>(Lcom/samsung/android/support/senl/nt/app/lock/presenter/create/CreatePasswordPresenter;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method
