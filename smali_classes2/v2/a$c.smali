.class public Lv2/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv2/a$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lv2/a;->n(Lk0/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le1/b$a;

.field public final synthetic b:Ljava/lang/StringBuilder;

.field public final synthetic c:Lv2/a;


# direct methods
.method public constructor <init>(Lv2/a;Le1/b$a;Ljava/lang/StringBuilder;)V
    .locals 0

    iput-object p1, p0, Lv2/a$c;->c:Lv2/a;

    iput-object p2, p0, Lv2/a$c;->a:Le1/b$a;

    iput-object p3, p0, Lv2/a$c;->b:Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lv2/a$c;->c:Lv2/a;

    iget-object v1, p0, Lv2/a$c;->a:Le1/b$a;

    iget-object v1, v1, Le1/b$a;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lv2/a;->e(Lv2/a;Ljava/lang/String;)V

    iget-object v0, p0, Lv2/a$c;->c:Lv2/a;

    invoke-static {v0}, Lv2/a;->c(Lv2/a;)Lx2/e;

    move-result-object v0

    invoke-virtual {v0}, Lx2/e;->p()La2/g$a;

    move-result-object v1

    iget-object v0, p0, Lv2/a$c;->c:Lv2/a;

    invoke-static {v0}, Lv2/a;->c(Lv2/a;)Lx2/e;

    move-result-object v0

    invoke-virtual {v0}, Lx2/d;->a()Landroid/content/Context;

    move-result-object v2

    iget-object v0, p0, Lv2/a$c;->a:Le1/b$a;

    iget-object v3, v0, Le1/b$a;->f:Ljava/lang/String;

    iget-object v4, v0, Le1/b$a;->e:Ljava/lang/String;

    iget-object v5, v0, Le1/b$a;->b:Ljava/lang/String;

    iget-object v0, p0, Lv2/a$c;->c:Lv2/a;

    invoke-static {v0}, Lv2/a;->a(Lv2/a;)Lcom/samsung/android/app/notes/sync/network/networkutils/c;

    move-result-object v6

    invoke-static/range {v1 .. v6}, La2/g;->p(La2/g$a;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/app/notes/sync/network/networkutils/c;)V

    iget-object v0, p0, Lv2/a$c;->a:Le1/b$a;

    const/4 v1, 0x1

    iput-boolean v1, v0, Le1/b$a;->j:Z

    const-string v0, "SyncNote/SyncFiles"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fileUploaded file = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lv2/a$c;->a:Le1/b$a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lv2/a$c;->b:Ljava/lang/StringBuilder;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lv2/a$c;->b:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lv2/a$c;->a:Le1/b$a;

    invoke-virtual {v2}, Le1/b$a;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
