.class public Lg2/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/base/common/sync/IAuthInfoReqListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg2/b;->k(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lg2/b;


# direct methods
.method public constructor <init>(Lg2/b;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lg2/b$b;->b:Lg2/b;

    iput-object p2, p0, Lg2/b$b;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initQuotaUi() : Fail to get AccessToken, errCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " errMsg = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "QT/QuotaHelper"

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onReceived(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "QT/QuotaHelper"

    const-string v1, "onReceived()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lg2/b$b;->b:Lg2/b;

    invoke-static {v0}, Lg2/b;->a(Lg2/b;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lh2/a;->g(Landroid/content/Context;)Lh2/a;

    move-result-object v0

    new-instance v1, Lg2/b$b$a;

    invoke-direct {v1, p0}, Lg2/b$b$a;-><init>(Lg2/b$b;)V

    invoke-virtual {v0, p1, p2, v1}, Lh2/a;->e(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/base/common/sync/IAuthorizationListener;)Z

    return-void

    :cond_1
    :goto_0
    const-string p1, "onReceived() : userToken or userId is null!"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
