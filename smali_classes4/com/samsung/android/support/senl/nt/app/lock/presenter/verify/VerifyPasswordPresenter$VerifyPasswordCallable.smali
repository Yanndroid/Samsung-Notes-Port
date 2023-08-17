.class Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyPasswordPresenter$VerifyPasswordCallable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyPasswordPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VerifyPasswordCallable"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPassword:Ljava/lang/String;

.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyPasswordPresenter;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyPasswordPresenter;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyPasswordPresenter$VerifyPasswordCallable;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyPasswordPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyPasswordPresenter$VerifyPasswordCallable;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyPasswordPresenter$VerifyPasswordCallable;->mPassword:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyPasswordPresenter$VerifyPasswordCallable;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyPasswordPresenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyPasswordPresenter;->d(Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyPasswordPresenter;)Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/IVerifyPasswordContract$IView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/password/IBasePasswordContract$IView;->ignoreInputEvent(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyPasswordPresenter$VerifyPasswordCallable;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyPasswordPresenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyPasswordPresenter;->access$000(Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyPasswordPresenter;)Lcom/samsung/android/support/senl/nt/app/lock/model/password/PasswordModel;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyPasswordPresenter$VerifyPasswordCallable;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyPasswordPresenter$VerifyPasswordCallable;->mPassword:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/app/lock/model/password/PasswordModel;->verifyPassword(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyPasswordPresenter$VerifyPasswordCallable;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyPasswordPresenter;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyPasswordPresenter;->d(Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyPasswordPresenter;)Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/IVerifyPasswordContract$IView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/password/IBasePasswordContract$IView;->ignoreInputEvent(Z)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyPasswordPresenter$VerifyPasswordCallable;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyPasswordPresenter;

    if-eqz v0, :cond_0

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyPasswordPresenter;->f(Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyPasswordPresenter;)V

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyPasswordPresenter;->e(Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyPasswordPresenter;)V

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyPasswordPresenter$VerifyPasswordCallable;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
