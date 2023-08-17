.class public Lp1/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp1/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Lp1/a;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lp1/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lp1/a;-><init>(Lp1/b;)V

    iput-object v0, p0, Lp1/a$a;->a:Lp1/a;

    return-void
.end method


# virtual methods
.method public a()Lp1/a;
    .locals 1

    invoke-virtual {p0}, Lp1/a$a;->b()V

    iget-object v0, p0, Lp1/a$a;->a:Lp1/a;

    return-object v0
.end method

.method public final b()V
    .locals 3

    iget-object v0, p0, Lp1/a$a;->a:Lp1/a;

    invoke-virtual {v0}, Lp1/a;->s()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1}, Lx1/a;->a(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lp1/a;->f(Lp1/a;Ljava/lang/String;)V

    iget-object v0, p0, Lp1/a$a;->a:Lp1/a;

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object v1

    invoke-virtual {v1}, Lc3/n;->g()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lp1/a;->k(Lp1/a;Ljava/lang/String;)V

    iget-object v0, p0, Lp1/a$a;->a:Lp1/a;

    invoke-static {v0}, Lp1/a;->a(Lp1/a;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lp1/a$a;->a:Lp1/a;

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object v1

    invoke-virtual {v1}, Lc3/n;->n()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lp1/a;->d(Lp1/a;Ljava/lang/String;)V

    iget-object v0, p0, Lp1/a$a;->a:Lp1/a;

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object v1

    invoke-virtual {v1}, Lc3/n;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lp1/a;->c(Lp1/a;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lp1/a$a;->a:Lp1/a;

    invoke-static {v0}, Lp1/a;->b(Lp1/a;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lp1/a$a;->a:Lp1/a;

    invoke-static {v0}, Lp1/a;->b(Lp1/a;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SDocBnR"

    invoke-static {v1, v2}, Lcom/samsung/android/app/notes/sync/utils/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lp1/a;->l(Lp1/a;Ljava/lang/String;)V

    iget-object v0, p0, Lp1/a$a;->a:Lp1/a;

    invoke-static {v0}, Lp1/a;->b(Lp1/a;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SSWL"

    invoke-static {v1, v2}, Lcom/samsung/android/app/notes/sync/utils/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lp1/a;->o(Lp1/a;Ljava/lang/String;)V

    iget-object v0, p0, Lp1/a$a;->a:Lp1/a;

    invoke-static {v0}, Lp1/a;->b(Lp1/a;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SmartSwitchRestoreDB"

    invoke-static {v1, v2}, Lcom/samsung/android/app/notes/sync/utils/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lp1/a;->m(Lp1/a;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lp1/a$a;->a:Lp1/a;

    invoke-virtual {v0}, Lp1/a;->s()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1}, Lx1/a;->c(Landroid/content/Intent;)Lcom/samsung/android/app/notes/sync/migration/common/Type$Work;

    move-result-object v1

    invoke-static {v0, v1}, Lp1/a;->p(Lp1/a;Lcom/samsung/android/app/notes/sync/migration/common/Type$Work;)V

    return-void
.end method

.method public c(Landroid/content/Intent;)Lp1/a$a;
    .locals 1

    iget-object v0, p0, Lp1/a$a;->a:Lp1/a;

    invoke-static {v0, p1}, Lp1/a;->e(Lp1/a;Landroid/content/Intent;)V

    return-object p0
.end method

.method public d(I)Lp1/a$a;
    .locals 1

    iget-object v0, p0, Lp1/a$a;->a:Lp1/a;

    invoke-static {v0, p1}, Lp1/a;->g(Lp1/a;I)V

    return-object p0
.end method

.method public e(Ljava/lang/String;)Lp1/a$a;
    .locals 1

    iget-object v0, p0, Lp1/a$a;->a:Lp1/a;

    invoke-static {v0, p1}, Lp1/a;->h(Lp1/a;Ljava/lang/String;)V

    return-object p0
.end method

.method public f(Ljava/lang/String;)Lp1/a$a;
    .locals 1

    iget-object v0, p0, Lp1/a$a;->a:Lp1/a;

    invoke-static {v0, p1}, Lp1/a;->i(Lp1/a;Ljava/lang/String;)V

    return-object p0
.end method

.method public g(Ljava/lang/String;)Lp1/a$a;
    .locals 1

    iget-object v0, p0, Lp1/a$a;->a:Lp1/a;

    invoke-static {v0, p1}, Lp1/a;->j(Lp1/a;Ljava/lang/String;)V

    return-object p0
.end method

.method public h(Ljava/lang/String;)Lp1/a$a;
    .locals 1

    iget-object v0, p0, Lp1/a$a;->a:Lp1/a;

    invoke-static {v0, p1}, Lp1/a;->n(Lp1/a;Ljava/lang/String;)V

    return-object p0
.end method
