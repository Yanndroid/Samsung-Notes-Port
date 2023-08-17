.class public Lh/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static c:Lh/e;


# instance fields
.field public a:Landroid/content/Context;

.field public b:Lh/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lh/e;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lh/e;->a:Landroid/content/Context;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lh/e;
    .locals 2

    const-class v0, Lh/e;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lh/e;->c:Lh/e;

    if-nez v1, :cond_0

    new-instance v1, Lh/e;

    invoke-direct {v1, p0}, Lh/e;-><init>(Landroid/content/Context;)V

    sput-object v1, Lh/e;->c:Lh/e;

    :cond_0
    sget-object p0, Lh/e;->c:Lh/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final b()V
    .locals 2

    iget-object v0, p0, Lh/e;->a:Landroid/content/Context;

    invoke-static {v0}, Lc3/l;->k(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lh/e;->b:Lh/a;

    if-eqz v0, :cond_0

    instance-of v0, v0, Lh/c;

    if-nez v0, :cond_5

    :cond_0
    new-instance v0, Lh/c;

    iget-object v1, p0, Lh/e;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lh/c;-><init>(Landroid/content/Context;)V

    :goto_0
    iput-object v0, p0, Lh/e;->b:Lh/a;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lh/e;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/util/CommonUtils;->isSamsungCloudUpper505(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lh/e;->b:Lh/a;

    if-eqz v0, :cond_2

    instance-of v0, v0, Lh/b;

    if-nez v0, :cond_5

    :cond_2
    new-instance v0, Lh/b;

    iget-object v1, p0, Lh/e;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lh/b;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lh/e;->a:Landroid/content/Context;

    invoke-static {v0}, Lc3/l;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lh/d;

    iget-object v1, p0, Lh/e;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lh/d;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_4
    new-instance v0, Lh/f;

    iget-object v1, p0, Lh/e;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lh/f;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_5
    :goto_1
    return-void
.end method

.method public c()Z
    .locals 1

    invoke-virtual {p0}, Lh/e;->b()V

    iget-object v0, p0, Lh/e;->b:Lh/a;

    invoke-virtual {v0}, Lh/a;->c()Z

    move-result v0

    return v0
.end method

.method public d()Z
    .locals 1

    invoke-virtual {p0}, Lh/e;->b()V

    iget-object v0, p0, Lh/e;->b:Lh/a;

    invoke-virtual {v0}, Lh/a;->d()Z

    move-result v0

    return v0
.end method

.method public e()Z
    .locals 1

    invoke-virtual {p0}, Lh/e;->b()V

    iget-object v0, p0, Lh/e;->b:Lh/a;

    invoke-virtual {v0}, Lh/a;->e()Z

    move-result v0

    return v0
.end method

.method public f(Z)V
    .locals 1

    invoke-virtual {p0}, Lh/e;->b()V

    iget-object v0, p0, Lh/e;->b:Lh/a;

    invoke-virtual {v0, p1}, Lh/a;->g(Z)V

    return-void
.end method

.method public g(Z)V
    .locals 1

    invoke-virtual {p0}, Lh/e;->b()V

    iget-object v0, p0, Lh/e;->b:Lh/a;

    invoke-virtual {v0, p1}, Lh/a;->h(Z)V

    return-void
.end method

.method public h()V
    .locals 1

    invoke-virtual {p0}, Lh/e;->b()V

    iget-object v0, p0, Lh/e;->b:Lh/a;

    invoke-virtual {v0}, Lh/a;->i()V

    return-void
.end method

.method public i()V
    .locals 1

    invoke-virtual {p0}, Lh/e;->b()V

    iget-object v0, p0, Lh/e;->b:Lh/a;

    invoke-virtual {v0}, Lh/a;->j()V

    return-void
.end method

.method public j(I)V
    .locals 1

    invoke-virtual {p0}, Lh/e;->b()V

    iget-object v0, p0, Lh/e;->b:Lh/a;

    invoke-virtual {v0, p1}, Lh/a;->k(I)V

    return-void
.end method

.method public k()V
    .locals 1

    invoke-virtual {p0}, Lh/e;->b()V

    iget-object v0, p0, Lh/e;->b:Lh/a;

    invoke-virtual {v0}, Lh/a;->l()V

    return-void
.end method

.method public l()V
    .locals 1

    invoke-virtual {p0}, Lh/e;->b()V

    iget-object v0, p0, Lh/e;->b:Lh/a;

    invoke-virtual {v0}, Lh/a;->m()V

    return-void
.end method
