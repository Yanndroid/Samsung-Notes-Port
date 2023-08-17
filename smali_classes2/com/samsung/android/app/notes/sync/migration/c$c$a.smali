.class public Lcom/samsung/android/app/notes/sync/migration/c$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/base/common/access/sync/importer/ImportDocumentManagerContract$ImportTaskListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/notes/sync/migration/c$c;->a(Lcom/samsung/android/app/notes/sync/migration/common/Type$Work;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/samsung/android/app/notes/sync/migration/common/Type$Work;

.field public final synthetic c:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Lcom/samsung/android/app/notes/sync/migration/c$c;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/notes/sync/migration/c$c;ILcom/samsung/android/app/notes/sync/migration/common/Type$Work;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/migration/c$c$a;->g:Lcom/samsung/android/app/notes/sync/migration/c$c;

    iput p2, p0, Lcom/samsung/android/app/notes/sync/migration/c$c$a;->a:I

    iput-object p3, p0, Lcom/samsung/android/app/notes/sync/migration/c$c$a;->b:Lcom/samsung/android/app/notes/sync/migration/common/Type$Work;

    iput-object p4, p0, Lcom/samsung/android/app/notes/sync/migration/c$c$a;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p5, p0, Lcom/samsung/android/app/notes/sync/migration/c$c$a;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/samsung/android/app/notes/sync/migration/c$c$a;->e:Ljava/lang/String;

    iput-object p7, p0, Lcom/samsung/android/app/notes/sync/migration/c$c$a;->f:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object p1, Lcom/samsung/android/app/notes/sync/migration/c;->j:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onEnd import document uuid "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onError(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onFinish(IILjava/util/Map;I)V
    .locals 10
    .param p3    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/notes/sync/migration/c;->j:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFinish total "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", errorCount "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", successCount "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/samsung/android/app/notes/sync/migration/c$c$a;->a:I

    const/4 v2, 0x0

    if-lez v1, :cond_1

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object v1

    invoke-virtual {v1, v2}, Lc3/n;->T(Z)V

    const/4 v1, -0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/migration/c$c$a;->g:Lcom/samsung/android/app/notes/sync/migration/c$c;

    iget-object v3, v1, Lcom/samsung/android/app/notes/sync/migration/c$c;->a:Lcom/samsung/android/app/notes/sync/migration/c;

    iget-object v4, p0, Lcom/samsung/android/app/notes/sync/migration/c$c$a;->b:Lcom/samsung/android/app/notes/sync/migration/common/Type$Work;

    iget-object v5, p0, Lcom/samsung/android/app/notes/sync/migration/c$c$a;->d:Ljava/lang/String;

    iget-object v6, p0, Lcom/samsung/android/app/notes/sync/migration/c$c$a;->e:Ljava/lang/String;

    iget-object v7, p0, Lcom/samsung/android/app/notes/sync/migration/c$c$a;->f:Ljava/lang/String;

    const/4 v8, 0x1

    const/4 v9, 0x2

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/migration/c$c$a;->g:Lcom/samsung/android/app/notes/sync/migration/c$c;

    iget-object v1, v1, Lcom/samsung/android/app/notes/sync/migration/c$c;->a:Lcom/samsung/android/app/notes/sync/migration/c;

    iget-object v3, p0, Lcom/samsung/android/app/notes/sync/migration/c$c$a;->b:Lcom/samsung/android/app/notes/sync/migration/common/Type$Work;

    const/16 v4, 0x64

    invoke-static {v1, v3, v4}, Lcom/samsung/android/app/notes/sync/migration/c;->l(Lcom/samsung/android/app/notes/sync/migration/c;Lcom/samsung/android/app/notes/sync/migration/common/Type$Work;I)V

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/migration/c$c$a;->g:Lcom/samsung/android/app/notes/sync/migration/c$c;

    iget-object v3, v1, Lcom/samsung/android/app/notes/sync/migration/c$c;->a:Lcom/samsung/android/app/notes/sync/migration/c;

    iget-object v4, p0, Lcom/samsung/android/app/notes/sync/migration/c$c$a;->b:Lcom/samsung/android/app/notes/sync/migration/common/Type$Work;

    iget-object v5, p0, Lcom/samsung/android/app/notes/sync/migration/c$c$a;->d:Ljava/lang/String;

    iget-object v6, p0, Lcom/samsung/android/app/notes/sync/migration/c$c$a;->e:Ljava/lang/String;

    iget-object v7, p0, Lcom/samsung/android/app/notes/sync/migration/c$c$a;->f:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_0
    invoke-static/range {v3 .. v9}, Lcom/samsung/android/app/notes/sync/migration/c;->m(Lcom/samsung/android/app/notes/sync/migration/c;Lcom/samsung/android/app/notes/sync/migration/common/Type$Work;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/migration/c$c$a;->g:Lcom/samsung/android/app/notes/sync/migration/c$c;

    iget-object v1, v1, Lcom/samsung/android/app/notes/sync/migration/c$c;->a:Lcom/samsung/android/app/notes/sync/migration/c;

    invoke-static {v1}, Lcom/samsung/android/app/notes/sync/migration/c;->a(Lcom/samsung/android/app/notes/sync/migration/c;)I

    move-result v3

    add-int/2addr v3, p1

    invoke-static {v1, v3}, Lcom/samsung/android/app/notes/sync/migration/c;->c(Lcom/samsung/android/app/notes/sync/migration/c;I)V

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/migration/c$c$a;->g:Lcom/samsung/android/app/notes/sync/migration/c$c;

    iget-object v1, v1, Lcom/samsung/android/app/notes/sync/migration/c$c;->a:Lcom/samsung/android/app/notes/sync/migration/c;

    invoke-static {v1}, Lcom/samsung/android/app/notes/sync/migration/c;->a(Lcom/samsung/android/app/notes/sync/migration/c;)I

    move-result v1

    iget-object v3, p0, Lcom/samsung/android/app/notes/sync/migration/c$c$a;->g:Lcom/samsung/android/app/notes/sync/migration/c$c;

    iget-object v3, v3, Lcom/samsung/android/app/notes/sync/migration/c$c;->a:Lcom/samsung/android/app/notes/sync/migration/c;

    invoke-static {v3}, Lcom/samsung/android/app/notes/sync/migration/c;->b(Lcom/samsung/android/app/notes/sync/migration/c;)I

    move-result v3

    if-lt v1, v3, :cond_2

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/migration/c$c$a;->g:Lcom/samsung/android/app/notes/sync/migration/c$c;

    iget-object v1, v1, Lcom/samsung/android/app/notes/sync/migration/c$c;->a:Lcom/samsung/android/app/notes/sync/migration/c;

    invoke-static {v1}, Lcom/samsung/android/app/notes/sync/migration/c;->b(Lcom/samsung/android/app/notes/sync/migration/c;)I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/app/notes/sync/migration/c$c$a;->g:Lcom/samsung/android/app/notes/sync/migration/c$c;

    iget-object v4, v4, Lcom/samsung/android/app/notes/sync/migration/c$c;->a:Lcom/samsung/android/app/notes/sync/migration/c;

    invoke-static {v4}, Lcom/samsung/android/app/notes/sync/migration/c;->b(Lcom/samsung/android/app/notes/sync/migration/c;)I

    move-result v4

    invoke-static {v1, v3, v4}, Lcom/samsung/android/app/notes/sync/migration/c;->i(Lcom/samsung/android/app/notes/sync/migration/c;II)V

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/migration/c$c$a;->g:Lcom/samsung/android/app/notes/sync/migration/c$c;

    iget-object v1, v1, Lcom/samsung/android/app/notes/sync/migration/c$c;->a:Lcom/samsung/android/app/notes/sync/migration/c;

    invoke-static {v1, v2}, Lcom/samsung/android/app/notes/sync/migration/c;->c(Lcom/samsung/android/app/notes/sync/migration/c;I)V

    invoke-static {v1, v2}, Lcom/samsung/android/app/notes/sync/migration/c;->f(Lcom/samsung/android/app/notes/sync/migration/c;I)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/migration/c$c$a;->g:Lcom/samsung/android/app/notes/sync/migration/c$c;

    iget-object v1, v1, Lcom/samsung/android/app/notes/sync/migration/c$c;->a:Lcom/samsung/android/app/notes/sync/migration/c;

    invoke-static {v1}, Lcom/samsung/android/app/notes/sync/migration/c;->a(Lcom/samsung/android/app/notes/sync/migration/c;)I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/app/notes/sync/migration/c$c$a;->g:Lcom/samsung/android/app/notes/sync/migration/c$c;

    iget-object v4, v4, Lcom/samsung/android/app/notes/sync/migration/c$c;->a:Lcom/samsung/android/app/notes/sync/migration/c;

    invoke-static {v4}, Lcom/samsung/android/app/notes/sync/migration/c;->b(Lcom/samsung/android/app/notes/sync/migration/c;)I

    move-result v4

    invoke-static {v1, v3, v4}, Lcom/samsung/android/app/notes/sync/migration/c;->j(Lcom/samsung/android/app/notes/sync/migration/c;II)V

    :goto_1
    if-eq p1, p4, :cond_4

    invoke-static {}, Lx1/e;->e()I

    move-result p1

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFinish retryCount "

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v0, p4}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p4, 0xa

    if-le p1, p4, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Lx1/e;->i(I)V

    goto :goto_3

    :cond_4
    :goto_2
    invoke-static {v2}, Lx1/e;->i(I)V

    iget-object p1, p0, Lcom/samsung/android/app/notes/sync/migration/c$c$a;->g:Lcom/samsung/android/app/notes/sync/migration/c$c;

    iget-object p1, p1, Lcom/samsung/android/app/notes/sync/migration/c$c;->a:Lcom/samsung/android/app/notes/sync/migration/c;

    invoke-static {p1}, Lcom/samsung/android/app/notes/sync/migration/c;->g(Lcom/samsung/android/app/notes/sync/migration/c;)V

    :goto_3
    invoke-static {}, Lcom/samsung/android/app/notes/sync/migration/c;->w()Lcom/samsung/android/app/notes/sync/migration/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/notes/sync/migration/c;->T()V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/DeviceInfo;->isEngMode()Z

    move-result p1

    if-eqz p1, :cond_5

    if-lez p2, :cond_5

    iget-object p1, p0, Lcom/samsung/android/app/notes/sync/migration/c$c$a;->g:Lcom/samsung/android/app/notes/sync/migration/c$c;

    iget-object p1, p1, Lcom/samsung/android/app/notes/sync/migration/c$c;->a:Lcom/samsung/android/app/notes/sync/migration/c;

    invoke-static {p1, p3}, Lcom/samsung/android/app/notes/sync/migration/c;->h(Lcom/samsung/android/app/notes/sync/migration/c;Ljava/util/Map;)V

    :cond_5
    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/data/DataUpdateManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/data/DataUpdateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/base/common/data/DataUpdateManager;->onDataUpdated()V

    invoke-static {}, Lx1/e;->d()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-static {p1}, Lx1/e;->h(I)V

    return-void
.end method

.method public onProgress(II)V
    .locals 3

    sget-object v0, Lcom/samsung/android/app/notes/sync/migration/c;->j:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProgress "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget p2, p0, Lcom/samsung/android/app/notes/sync/migration/c$c$a;->a:I

    if-lez p2, :cond_0

    iget-object p2, p0, Lcom/samsung/android/app/notes/sync/migration/c$c$a;->g:Lcom/samsung/android/app/notes/sync/migration/c$c;

    iget-object p2, p2, Lcom/samsung/android/app/notes/sync/migration/c$c;->a:Lcom/samsung/android/app/notes/sync/migration/c;

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/migration/c$c$a;->b:Lcom/samsung/android/app/notes/sync/migration/common/Type$Work;

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/migration/c$c$a;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    mul-int/lit8 v1, v1, 0x27

    iget v2, p0, Lcom/samsung/android/app/notes/sync/migration/c$c$a;->a:I

    div-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x33

    invoke-static {p2, v0, v1}, Lcom/samsung/android/app/notes/sync/migration/c;->l(Lcom/samsung/android/app/notes/sync/migration/c;Lcom/samsung/android/app/notes/sync/migration/common/Type$Work;I)V

    :cond_0
    iget-object p2, p0, Lcom/samsung/android/app/notes/sync/migration/c$c$a;->g:Lcom/samsung/android/app/notes/sync/migration/c$c;

    iget-object p2, p2, Lcom/samsung/android/app/notes/sync/migration/c$c;->a:Lcom/samsung/android/app/notes/sync/migration/c;

    invoke-static {p2}, Lcom/samsung/android/app/notes/sync/migration/c;->a(Lcom/samsung/android/app/notes/sync/migration/c;)I

    move-result v0

    add-int/2addr v0, p1

    iget-object p1, p0, Lcom/samsung/android/app/notes/sync/migration/c$c$a;->g:Lcom/samsung/android/app/notes/sync/migration/c$c;

    iget-object p1, p1, Lcom/samsung/android/app/notes/sync/migration/c$c;->a:Lcom/samsung/android/app/notes/sync/migration/c;

    invoke-static {p1}, Lcom/samsung/android/app/notes/sync/migration/c;->b(Lcom/samsung/android/app/notes/sync/migration/c;)I

    move-result p1

    invoke-static {p2, v0, p1}, Lcom/samsung/android/app/notes/sync/migration/c;->j(Lcom/samsung/android/app/notes/sync/migration/c;II)V

    return-void
.end method

.method public onStart(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-object p2, Lcom/samsung/android/app/notes/sync/migration/c;->j:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStart import document uuid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onUnsupportedVersionError(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
