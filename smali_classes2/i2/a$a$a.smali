.class public Li2/a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Li2/a$a;->onReceived(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Li2/a$a;


# direct methods
.method public constructor <init>(Li2/a$a;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Li2/a$a$a;->b:Li2/a$a;

    iput-object p2, p0, Li2/a$a$a;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v0, "CA/KeyStoreHelper"

    const/4 v1, 0x2

    :try_start_0
    const-string v2, "getKeyForLockFromCAServer() : start thread"

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lx2/e;

    iget-object v3, p0, Li2/a$a$a;->b:Li2/a$a;

    iget-object v3, v3, Li2/a$a;->b:Li2/a;

    invoke-static {v3}, Li2/a;->a(Li2/a;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Li2/a$a$a;->a:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lx2/e;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lh2/b;->b()Lh2/b;

    move-result-object v3

    const-string v4, "/ca/v1/certificates?kcid=KC02"

    invoke-virtual {v3, v4}, Lh2/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Lcom/samsung/android/app/notes/sync/network/networkutils/h;->u(Lx2/e;)Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;->v(Ljava/lang/String;)Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;

    move-result-object v2

    const-string v3, "getCertificates"

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;->d(Ljava/lang/String;)Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;->g(Ljava/lang/String;)Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;->r()Lcom/samsung/android/app/notes/sync/network/networkutils/j;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/notes/sync/network/networkutils/j;->u()I

    move-result v3

    const/16 v4, 0xc8

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Li2/a$a$a;->b:Li2/a$a;

    iget-object v3, v3, Li2/a$a;->b:Li2/a;

    invoke-static {v3}, Li2/a;->a(Li2/a;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/samsung/android/support/senl/nt/base/common/sync/CAServerKeyHelper;->setLastError(Landroid/content/Context;I)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getKeyForLockFromCAServer() : fail to get the CA key - status : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/samsung/android/app/notes/sync/network/networkutils/j;->u()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Li2/a$a$a;->b:Li2/a$a;

    iget-object v2, v2, Li2/a$a;->b:Li2/a;

    invoke-static {v2}, Li2/a;->b(Li2/a;)V

    return-void

    :cond_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {v2}, Lcom/samsung/android/app/notes/sync/network/networkutils/j;->q()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "userFingerprint"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Li2/a$a$a;->b:Li2/a$a;

    iget-object v3, v3, Li2/a$a;->a:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/samsung/android/support/senl/nt/base/common/sync/CAServerKeyHelper;->addKey(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Li2/a$a$a;->b:Li2/a$a;

    iget-object v2, v2, Li2/a$a;->b:Li2/a;

    invoke-static {v2}, Li2/a;->a(Li2/a;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/samsung/android/support/senl/nt/base/common/sync/CAServerKeyHelper;->setLastError(Landroid/content/Context;I)V

    const-string v2, "getKeyForLockFromCAServer() : succeed to get the CA key"

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Li2/a$a$a;->b:Li2/a$a;

    iget-object v2, v2, Li2/a$a;->b:Li2/a;

    invoke-static {v2}, Li2/a;->a(Li2/a;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/nt/base/common/sync/CAServerKeyHelper;->setLastError(Landroid/content/Context;I)V

    const-string v2, "getKeyForLockFromCAServer() : empty CA key!"

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object v2, p0, Li2/a$a$a;->b:Li2/a$a;

    iget-object v2, v2, Li2/a$a;->b:Li2/a;

    invoke-static {v2}, Li2/a;->a(Li2/a;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/nt/base/common/sync/CAServerKeyHelper;->setLastError(Landroid/content/Context;I)V

    const-string v1, "getKeyForLockFromCAServer() : fail to get the CA key!"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Li2/a$a$a;->b:Li2/a$a;

    iget-object v0, v0, Li2/a$a;->b:Li2/a;

    invoke-static {v0}, Li2/a;->b(Li2/a;)V

    return-void
.end method
