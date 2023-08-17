.class public Lh2/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static d:Lh2/b;


# instance fields
.field public a:Landroid/content/Context;

.field public b:Z

.field public c:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lh2/b;->b:Z

    iput-boolean v0, p0, Lh2/b;->c:Z

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v0

    invoke-virtual {v0}, Lx/e;->a()Lx/a;

    move-result-object v0

    invoke-interface {v0}, Lx/a;->getAppContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lh2/b;->a:Landroid/content/Context;

    return-void
.end method

.method public static declared-synchronized b()Lh2/b;
    .locals 2

    const-class v0, Lh2/b;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lh2/b;->d:Lh2/b;

    if-nez v1, :cond_0

    new-instance v1, Lh2/b;

    invoke-direct {v1}, Lh2/b;-><init>()V

    sput-object v1, Lh2/b;->d:Lh2/b;

    :cond_0
    sget-object v1, Lh2/b;->d:Lh2/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lh2/b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Lj2/b;

    invoke-direct {p1}, Lj2/b;-><init>()V

    invoke-virtual {p1}, Lj2/b;->a()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance v0, Lj2/a;

    invoke-direct {v0}, Lj2/a;-><init>()V

    invoke-virtual {v0, p1}, Lj2/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0, p1}, Lh2/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "ServerDomainManager"

    const-string v0, "[PAM] getServerUrl() : domainUrl is empty!"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public d()Z
    .locals 3

    iget-boolean v0, p0, Lh2/b;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lh2/b;->a:Landroid/content/Context;

    const-string v1, "SYNC_PREF"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "isStaging"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lh2/b;->b:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lh2/b;->c:Z

    :cond_0
    iget-boolean v0, p0, Lh2/b;->b:Z

    return v0
.end method

.method public e(Z)V
    .locals 3

    iget-object v0, p0, Lh2/b;->a:Landroid/content/Context;

    const-string v1, "SYNC_PREF"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "isStaging"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iput-boolean p1, p0, Lh2/b;->b:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lh2/b;->c:Z

    return-void
.end method
