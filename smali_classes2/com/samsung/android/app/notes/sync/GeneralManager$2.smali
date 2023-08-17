.class Lcom/samsung/android/app/notes/sync/GeneralManager$2;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/notes/sync/GeneralManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/app/notes/sync/GeneralManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/notes/sync/GeneralManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/GeneralManager$2;->this$0:Lcom/samsung/android/app/notes/sync/GeneralManager;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 2

    iget-object p1, p0, Lcom/samsung/android/app/notes/sync/GeneralManager$2;->this$0:Lcom/samsung/android/app/notes/sync/GeneralManager;

    invoke-static {p1}, Lcom/samsung/android/app/notes/sync/GeneralManager;->a(Lcom/samsung/android/app/notes/sync/GeneralManager;)Landroid/content/Context;

    move-result-object p1

    const-string v0, "GeneralManager"

    if-nez p1, :cond_0

    const-string p1, "[Network] onAvailable() : mContext == null"

    :goto_0
    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object p1

    invoke-virtual {p1}, Lx/e;->a()Lx/a;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object p1

    invoke-virtual {p1}, Lx/e;->a()Lx/a;

    move-result-object p1

    invoke-interface {p1}, Lx/a;->getAppContext()Landroid/content/Context;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/notes/sync/GeneralManager$2;->this$0:Lcom/samsung/android/app/notes/sync/GeneralManager;

    invoke-static {p1}, Lcom/samsung/android/app/notes/sync/GeneralManager;->a(Lcom/samsung/android/app/notes/sync/GeneralManager;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lc3/h;->r(Landroid/content/Context;)V

    invoke-static {}, Lc2/a;->a()Lc2/a;

    move-result-object p1

    invoke-virtual {p1}, Lc2/a;->d()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Lx0/a;->a()Lx0/a;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/GeneralManager$2;->this$0:Lcom/samsung/android/app/notes/sync/GeneralManager;

    invoke-static {v0}, Lcom/samsung/android/app/notes/sync/GeneralManager;->a(Lcom/samsung/android/app/notes/sync/GeneralManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lc3/h;->e(Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/GeneralManager$2;->this$0:Lcom/samsung/android/app/notes/sync/GeneralManager;

    invoke-static {v1}, Lcom/samsung/android/app/notes/sync/GeneralManager;->a(Lcom/samsung/android/app/notes/sync/GeneralManager;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lc3/h;->o(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lx0/a;->c(ZZ)V

    :cond_2
    invoke-static {}, Ln/a;->b()Ln/a;

    move-result-object p1

    invoke-virtual {p1}, Ln/a;->r()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {}, Ln2/a;->e()Ln2/a;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/GeneralManager$2;->this$0:Lcom/samsung/android/app/notes/sync/GeneralManager;

    invoke-static {v0}, Lcom/samsung/android/app/notes/sync/GeneralManager;->a(Lcom/samsung/android/app/notes/sync/GeneralManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lc3/h;->e(Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/GeneralManager$2;->this$0:Lcom/samsung/android/app/notes/sync/GeneralManager;

    invoke-static {v1}, Lcom/samsung/android/app/notes/sync/GeneralManager;->a(Lcom/samsung/android/app/notes/sync/GeneralManager;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lc3/h;->o(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Ln2/a;->h(ZZ)V

    :cond_3
    return-void

    :cond_4
    :goto_1
    const-string p1, "[Network] onAvailable() : context == null!"

    goto :goto_0
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 3

    iget-object p1, p0, Lcom/samsung/android/app/notes/sync/GeneralManager$2;->this$0:Lcom/samsung/android/app/notes/sync/GeneralManager;

    invoke-static {p1}, Lcom/samsung/android/app/notes/sync/GeneralManager;->a(Lcom/samsung/android/app/notes/sync/GeneralManager;)Landroid/content/Context;

    move-result-object p1

    const-string v0, "GeneralManager"

    if-nez p1, :cond_0

    const-string p1, "[Network] onLost() : mContext == null"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object p1

    invoke-virtual {p1}, Lx/e;->a()Lx/a;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object p1

    invoke-virtual {p1}, Lx/e;->a()Lx/a;

    move-result-object p1

    invoke-interface {p1}, Lx/a;->getAppContext()Landroid/content/Context;

    move-result-object p1

    if-nez p1, :cond_2

    :cond_1
    const-string p1, "[Network] onLost() : mContext == null!"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/app/notes/sync/GeneralManager$2;->this$0:Lcom/samsung/android/app/notes/sync/GeneralManager;

    invoke-static {p1}, Lcom/samsung/android/app/notes/sync/GeneralManager;->a(Lcom/samsung/android/app/notes/sync/GeneralManager;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lc3/h;->e(Landroid/content/Context;)Z

    move-result p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Network] onLost() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    xor-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lc2/a;->a()Lc2/a;

    move-result-object v0

    invoke-virtual {v0}, Lc2/a;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lx0/a;->a()Lx0/a;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/GeneralManager$2;->this$0:Lcom/samsung/android/app/notes/sync/GeneralManager;

    invoke-static {v1}, Lcom/samsung/android/app/notes/sync/GeneralManager;->a(Lcom/samsung/android/app/notes/sync/GeneralManager;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lc3/h;->o(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Lx0/a;->c(ZZ)V

    :cond_3
    invoke-static {}, Ln/a;->b()Ln/a;

    move-result-object v0

    invoke-virtual {v0}, Ln/a;->r()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Ln2/a;->e()Ln2/a;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/GeneralManager$2;->this$0:Lcom/samsung/android/app/notes/sync/GeneralManager;

    invoke-static {v1}, Lcom/samsung/android/app/notes/sync/GeneralManager;->a(Lcom/samsung/android/app/notes/sync/GeneralManager;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lc3/h;->o(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Ln2/a;->h(ZZ)V

    :cond_4
    return-void
.end method
