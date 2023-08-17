.class public Lq1/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lq1/b;)V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lr1/d;

    invoke-direct {v1}, Lr1/d;-><init>()V

    invoke-virtual {p1}, Lq1/b;->e()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1}, Lq1/b;->h()Lcom/samsung/android/app/notes/sync/migration/common/Type$Work;

    move-result-object v3

    invoke-virtual {p1}, Lq1/b;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4, v0}, Lr1/d;->b(Landroid/content/Context;Lcom/samsung/android/app/notes/sync/migration/common/Type$Work;Ljava/lang/String;Ljava/util/List;)V

    new-instance v1, Lr1/h;

    invoke-direct {v1}, Lr1/h;-><init>()V

    invoke-virtual {p1}, Lq1/b;->e()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1}, Lq1/b;->h()Lcom/samsung/android/app/notes/sync/migration/common/Type$Work;

    move-result-object v3

    invoke-virtual {p1}, Lq1/b;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lr1/h;->b(Landroid/content/Context;Lcom/samsung/android/app/notes/sync/migration/common/Type$Work;Ljava/lang/String;)V

    new-instance v1, Lr1/b;

    invoke-direct {v1}, Lr1/b;-><init>()V

    invoke-virtual {p1}, Lq1/b;->e()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1}, Lq1/b;->h()Lcom/samsung/android/app/notes/sync/migration/common/Type$Work;

    move-result-object v3

    invoke-virtual {p1}, Lq1/b;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lr1/b;->b(Landroid/content/Context;Lcom/samsung/android/app/notes/sync/migration/common/Type$Work;Ljava/lang/String;)V

    new-instance v1, Lr1/e;

    invoke-direct {v1}, Lr1/e;-><init>()V

    invoke-virtual {p1}, Lq1/b;->e()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1}, Lq1/b;->h()Lcom/samsung/android/app/notes/sync/migration/common/Type$Work;

    move-result-object v3

    invoke-virtual {p1}, Lq1/b;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4, v0}, Lr1/e;->b(Landroid/content/Context;Lcom/samsung/android/app/notes/sync/migration/common/Type$Work;Ljava/lang/String;Ljava/util/List;)V

    new-instance v1, Lr1/f;

    invoke-direct {v1}, Lr1/f;-><init>()V

    invoke-virtual {p1}, Lq1/b;->e()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1}, Lq1/b;->h()Lcom/samsung/android/app/notes/sync/migration/common/Type$Work;

    move-result-object v3

    invoke-virtual {p1}, Lq1/b;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lr1/f;->b(Landroid/content/Context;Lcom/samsung/android/app/notes/sync/migration/common/Type$Work;Ljava/lang/String;)V

    new-instance v1, Lr1/a;

    invoke-direct {v1}, Lr1/a;-><init>()V

    invoke-virtual {p1}, Lq1/b;->e()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1}, Lq1/b;->h()Lcom/samsung/android/app/notes/sync/migration/common/Type$Work;

    move-result-object v3

    invoke-virtual {p1}, Lq1/b;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4, v0}, Lr1/a;->b(Landroid/content/Context;Lcom/samsung/android/app/notes/sync/migration/common/Type$Work;Ljava/lang/String;Ljava/util/List;)V

    new-instance v0, Lr1/g;

    invoke-direct {v0}, Lr1/g;-><init>()V

    invoke-virtual {p1}, Lq1/b;->f()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lr1/g;->b(Ljava/lang/String;)V

    return-void
.end method
