.class public Ll/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ll/b;


# direct methods
.method public constructor <init>(Ll/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll/c;->a:Ll/b;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Ll/c;->a:Ll/b;

    invoke-virtual {v0}, Ll/b;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ll/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ShareSingleTask$SDocShareOperation"

    const-string v1, "Account changed!"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ll/c;->b()V

    iget-object v0, p0, Ll/c;->a:Ll/b;

    invoke-virtual {v0}, Ll/b;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Ll/a;->d(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 8

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v0

    invoke-virtual {v0}, Lx/e;->a()Lx/a;

    move-result-object v0

    invoke-interface {v0}, Lx/a;->getAppContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/notes/sync/db/t;

    invoke-direct {v1, v0}, Lcom/samsung/android/app/notes/sync/db/t;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/samsung/android/app/notes/sync/db/f;

    invoke-direct {v2, v0}, Lcom/samsung/android/app/notes/sync/db/f;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/samsung/android/app/notes/sync/db/f;->y()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v5, "ShareSingleTask$SDocShareOperation"

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-instance v6, Lcom/samsung/android/app/notes/sync/db/s;

    invoke-direct {v6, v0, v4}, Lcom/samsung/android/app/notes/sync/db/s;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/samsung/android/app/notes/sync/db/s;->o()I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_0

    const-string v5, "SDocShareOperation"

    invoke-virtual {v1, v4, v5}, Lcom/samsung/android/app/notes/sync/db/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is already deleted!"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deleteAllLocalSharedItem. deleted : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
