.class public Lcom/samsung/android/app/notes/sync/migration/restore/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/notes/sync/migration/restore/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Lcom/samsung/android/app/notes/sync/migration/restore/b;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/app/notes/sync/migration/restore/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/notes/sync/migration/restore/b;-><init>(Lcom/samsung/android/app/notes/sync/migration/restore/c;)V

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/migration/restore/b$a;->a:Lcom/samsung/android/app/notes/sync/migration/restore/b;

    return-void
.end method


# virtual methods
.method public a()Lcom/samsung/android/app/notes/sync/migration/restore/b;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/migration/restore/b$a;->b()V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/migration/restore/b$a;->a:Lcom/samsung/android/app/notes/sync/migration/restore/b;

    return-object v0
.end method

.method public final b()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/migration/restore/b$a;->a:Lcom/samsung/android/app/notes/sync/migration/restore/b;

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object v1

    invoke-virtual {v1}, Lc3/n;->n()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/notes/sync/migration/restore/b;->a(Lcom/samsung/android/app/notes/sync/migration/restore/b;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/migration/restore/b$a;->a:Lcom/samsung/android/app/notes/sync/migration/restore/b;

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/migration/restore/b;->q()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/migration/restore/b$a;->a:Lcom/samsung/android/app/notes/sync/migration/restore/b;

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/migration/restore/b;->q()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SSWL"

    invoke-static {v1, v2}, Lcom/samsung/android/app/notes/sync/utils/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/notes/sync/migration/restore/b;->j(Lcom/samsung/android/app/notes/sync/migration/restore/b;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/migration/restore/b$a;->a:Lcom/samsung/android/app/notes/sync/migration/restore/b;

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/migration/restore/b;->o()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1}, Lx1/a;->a(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/notes/sync/migration/restore/b;->d(Lcom/samsung/android/app/notes/sync/migration/restore/b;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/migration/restore/b$a;->a:Lcom/samsung/android/app/notes/sync/migration/restore/b;

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/migration/restore/b;->o()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1}, Lx1/a;->c(Landroid/content/Intent;)Lcom/samsung/android/app/notes/sync/migration/common/Type$Work;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/notes/sync/migration/restore/b;->l(Lcom/samsung/android/app/notes/sync/migration/restore/b;Lcom/samsung/android/app/notes/sync/migration/common/Type$Work;)V

    return-void
.end method

.method public c(Z)Lcom/samsung/android/app/notes/sync/migration/restore/b$a;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/migration/restore/b$a;->a:Lcom/samsung/android/app/notes/sync/migration/restore/b;

    invoke-static {v0, p1}, Lcom/samsung/android/app/notes/sync/migration/restore/b;->b(Lcom/samsung/android/app/notes/sync/migration/restore/b;Z)V

    return-object p0
.end method

.method public d(Landroid/content/Intent;)Lcom/samsung/android/app/notes/sync/migration/restore/b$a;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/migration/restore/b$a;->a:Lcom/samsung/android/app/notes/sync/migration/restore/b;

    invoke-static {v0, p1}, Lcom/samsung/android/app/notes/sync/migration/restore/b;->c(Lcom/samsung/android/app/notes/sync/migration/restore/b;Landroid/content/Intent;)V

    return-object p0
.end method

.method public e(Ljava/lang/String;)Lcom/samsung/android/app/notes/sync/migration/restore/b$a;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/migration/restore/b$a;->a:Lcom/samsung/android/app/notes/sync/migration/restore/b;

    invoke-static {v0, p1}, Lcom/samsung/android/app/notes/sync/migration/restore/b;->e(Lcom/samsung/android/app/notes/sync/migration/restore/b;Ljava/lang/String;)V

    return-object p0
.end method

.method public f(I)Lcom/samsung/android/app/notes/sync/migration/restore/b$a;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/migration/restore/b$a;->a:Lcom/samsung/android/app/notes/sync/migration/restore/b;

    invoke-static {v0, p1}, Lcom/samsung/android/app/notes/sync/migration/restore/b;->f(Lcom/samsung/android/app/notes/sync/migration/restore/b;I)V

    return-object p0
.end method

.method public g(Ljava/lang/String;)Lcom/samsung/android/app/notes/sync/migration/restore/b$a;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/migration/restore/b$a;->a:Lcom/samsung/android/app/notes/sync/migration/restore/b;

    invoke-static {v0, p1}, Lcom/samsung/android/app/notes/sync/migration/restore/b;->g(Lcom/samsung/android/app/notes/sync/migration/restore/b;Ljava/lang/String;)V

    return-object p0
.end method

.method public h(Ljava/lang/String;)Lcom/samsung/android/app/notes/sync/migration/restore/b$a;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/migration/restore/b$a;->a:Lcom/samsung/android/app/notes/sync/migration/restore/b;

    invoke-static {v0, p1}, Lcom/samsung/android/app/notes/sync/migration/restore/b;->h(Lcom/samsung/android/app/notes/sync/migration/restore/b;Ljava/lang/String;)V

    return-object p0
.end method

.method public i(Ljava/lang/String;)Lcom/samsung/android/app/notes/sync/migration/restore/b$a;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/migration/restore/b$a;->a:Lcom/samsung/android/app/notes/sync/migration/restore/b;

    invoke-static {v0, p1}, Lcom/samsung/android/app/notes/sync/migration/restore/b;->i(Lcom/samsung/android/app/notes/sync/migration/restore/b;Ljava/lang/String;)V

    return-object p0
.end method

.method public j(I)Lcom/samsung/android/app/notes/sync/migration/restore/b$a;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/migration/restore/b$a;->a:Lcom/samsung/android/app/notes/sync/migration/restore/b;

    invoke-static {v0, p1}, Lcom/samsung/android/app/notes/sync/migration/restore/b;->k(Lcom/samsung/android/app/notes/sync/migration/restore/b;I)V

    return-object p0
.end method
