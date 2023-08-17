.class public Lv/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static b:Lv/b;


# instance fields
.field public a:Landroid/content/Context;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v0

    invoke-virtual {v0}, Lx/e;->a()Lx/a;

    move-result-object v0

    invoke-interface {v0}, Lx/a;->getAppContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lv/b;->a:Landroid/content/Context;

    return-void
.end method

.method public static declared-synchronized b()Lv/b;
    .locals 2

    const-class v0, Lv/b;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lv/b;->b:Lv/b;

    if-nez v1, :cond_0

    new-instance v1, Lv/b;

    invoke-direct {v1}, Lv/b;-><init>()V

    sput-object v1, Lv/b;->b:Lv/b;

    :cond_0
    sget-object v1, Lv/b;->b:Lv/b;
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
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lv/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lf/a;->m(Landroid/content/Context;)Lf/a;

    move-result-object v0

    invoke-virtual {v0}, Lf/a;->n()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
