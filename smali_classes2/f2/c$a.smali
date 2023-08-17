.class public Lf2/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/base/common/sync/IAuthInfoReqListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf2/c;->d(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lf2/c;


# direct methods
.method public constructor <init>(Lf2/c;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lf2/c$a;->b:Lf2/c;

    iput-object p2, p0, Lf2/c$a;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[PUSH] Fail to get AccessToken "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "RegisterSmpUsingPam"

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lf2/c$a;->b:Lf2/c;

    invoke-static {p1}, Lf2/c;->c(Lf2/c;)Le2/b;

    move-result-object p1

    const/4 p2, -0x1

    invoke-interface {p1, p2}, Le2/b;->onEnded(I)V

    return-void
.end method

.method public onReceived(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "RegisterSmpUsingPam"

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "[PUSH] onReceived()"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lf2/c$a;->a:Landroid/content/Context;

    invoke-static {v0}, Lh2/a;->g(Landroid/content/Context;)Lh2/a;

    move-result-object v0

    new-instance v1, Lf2/c$a$a;

    invoke-direct {v1, p0, p1, p2}, Lf2/c$a$a;-><init>(Lf2/c$a;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2, v1}, Lh2/a;->e(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/base/common/sync/IAuthorizationListener;)Z

    return-void

    :cond_1
    :goto_0
    const-string p1, "[PUSH] onReceived() : userToken or userId is empty!"

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
