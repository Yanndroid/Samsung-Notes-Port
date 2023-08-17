.class public Lj1/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll1/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj1/b;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/util/concurrent/CompletableFuture;

.field public final synthetic c:Lj1/b;


# direct methods
.method public constructor <init>(Lj1/b;Ljava/lang/String;Ljava/util/concurrent/CompletableFuture;)V
    .locals 0

    iput-object p1, p0, Lj1/b$b;->c:Lj1/b;

    iput-object p2, p0, Lj1/b$b;->a:Ljava/lang/String;

    iput-object p3, p0, Lj1/b$b;->b:Ljava/util/concurrent/CompletableFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ll1/c;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "result add attachment. path : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lj1/b$b;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->logPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", onResult : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CreateNote"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lj1/b$b;->a:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->deleteFile(Ljava/lang/String;)Z

    iget-object p1, p0, Lj1/b$b;->c:Lj1/b;

    iget-object v0, p0, Lj1/b$b;->b:Ljava/util/concurrent/CompletableFuture;

    const-string v1, "finished add attachment."

    invoke-static {p1, v0, v1}, Lj1/b;->c(Lj1/b;Ljava/util/concurrent/CompletableFuture;Ljava/lang/String;)V

    return-void
.end method
