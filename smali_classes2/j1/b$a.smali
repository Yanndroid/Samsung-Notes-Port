.class public Lj1/b$a;
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
.field public final synthetic a:Ljava/util/concurrent/CompletableFuture;

.field public final synthetic b:Lj1/b;


# direct methods
.method public constructor <init>(Lj1/b;Ljava/util/concurrent/CompletableFuture;)V
    .locals 0

    iput-object p1, p0, Lj1/b$a;->b:Lj1/b;

    iput-object p2, p0, Lj1/b$a;->a:Ljava/util/concurrent/CompletableFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ll1/c;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "result createNote, onResult : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CreateNote"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_4

    :try_start_0
    invoke-virtual {p1}, Ll1/c;->b()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    iget-object p1, p0, Lj1/b$a;->b:Lj1/b;

    iget-object v0, p0, Lj1/b$a;->a:Ljava/util/concurrent/CompletableFuture;

    const-string v2, "CreateNote HTTP_Failed"

    :goto_0
    invoke-static {p1, v0, v2}, Lj1/b;->c(Lj1/b;Ljava/util/concurrent/CompletableFuture;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p1}, Ll1/c;->b()I

    move-result v0

    const/16 v2, 0x191

    if-ne v0, v2, :cond_1

    invoke-static {}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->x()Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;

    move-result-object p1

    iget-object v0, p0, Lj1/b$a;->b:Lj1/b;

    invoke-static {v0}, Lj1/b;->a(Lj1/b;)Li1/h;

    move-result-object v0

    iget-object v0, v0, Li1/h;->c:Ljava/lang/String;

    iget-object v2, p0, Lj1/b$a;->b:Lj1/b;

    invoke-static {v2}, Lj1/b;->a(Lj1/b;)Li1/h;

    move-result-object v2

    iget-object v2, v2, Li1/h;->b:Ljava/lang/String;

    iget-object v3, p0, Lj1/b$a;->b:Lj1/b;

    invoke-static {v3}, Lj1/b;->a(Lj1/b;)Li1/h;

    move-result-object v3

    iget-object v3, v3, Li1/h;->a:Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem$RequestType;

    invoke-virtual {p1, v0, v2, v3}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->i(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem$RequestType;)V

    invoke-static {}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->x()Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->M()V

    iget-object p1, p0, Lj1/b$a;->b:Lj1/b;

    iget-object v0, p0, Lj1/b$a;->a:Ljava/util/concurrent/CompletableFuture;

    const-string v2, "HTTP_UNAUTHORIZED"

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ll1/c;->b()I

    move-result v0

    const/16 v2, 0x1ad

    if-ne v0, v2, :cond_2

    iget-object p1, p0, Lj1/b$a;->b:Lj1/b;

    iget-object v0, p0, Lj1/b$a;->a:Ljava/util/concurrent/CompletableFuture;

    const-string v2, "HTTP_TOO_MANY_REQUESTS"

    goto :goto_0

    :cond_2
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Ll1/c;->a()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "id"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "createdDateTime"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createdDateTime : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",connectedNotesId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->x()Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;

    move-result-object p1

    iget-object v0, p0, Lj1/b$a;->b:Lj1/b;

    invoke-static {v0}, Lj1/b;->a(Lj1/b;)Li1/h;

    move-result-object v0

    iget-object v0, v0, Li1/h;->c:Ljava/lang/String;

    iget-object v2, p0, Lj1/b$a;->b:Lj1/b;

    invoke-static {v2}, Lj1/b;->a(Lj1/b;)Li1/h;

    move-result-object v2

    iget-object v2, v2, Li1/h;->b:Ljava/lang/String;

    iget-object v3, p0, Lj1/b$a;->b:Lj1/b;

    invoke-static {v3}, Lj1/b;->a(Lj1/b;)Li1/h;

    move-result-object v3

    iget-object v3, v3, Li1/h;->a:Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem$RequestType;

    invoke-virtual {p1, v0, v2, v3}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->i(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem$RequestType;)V

    iget-object p1, p0, Lj1/b$a;->b:Lj1/b;

    iget-object v0, p0, Lj1/b$a;->a:Ljava/util/concurrent/CompletableFuture;

    const-string v2, "failed"

    goto/16 :goto_0

    :cond_3
    iget-object v2, p0, Lj1/b$a;->b:Lj1/b;

    invoke-static {v2}, Lj1/b;->a(Lj1/b;)Li1/h;

    move-result-object v2

    iput-object p1, v2, Li1/h;->b:Ljava/lang/String;

    iget-object p1, p0, Lj1/b$a;->b:Lj1/b;

    invoke-static {p1, v0}, Lj1/b;->b(Lj1/b;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->x()Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;

    move-result-object p1

    iget-object v0, p0, Lj1/b$a;->b:Lj1/b;

    invoke-static {v0}, Lj1/b;->a(Lj1/b;)Li1/h;

    move-result-object v0

    iget-object v0, v0, Li1/h;->c:Ljava/lang/String;

    iget-object v2, p0, Lj1/b$a;->b:Lj1/b;

    invoke-static {v2}, Lj1/b;->a(Lj1/b;)Li1/h;

    move-result-object v2

    iget-object v2, v2, Li1/h;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lj1/b$a;->b:Lj1/b;

    iget-object v0, p0, Lj1/b$a;->a:Ljava/util/concurrent/CompletableFuture;

    const-string v2, "finished create note."
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed. "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lj1/b$a;->b:Lj1/b;

    iget-object v0, p0, Lj1/b$a;->a:Ljava/util/concurrent/CompletableFuture;

    const-string v1, "failed create note."

    invoke-static {p1, v0, v1}, Lj1/b;->c(Lj1/b;Ljava/util/concurrent/CompletableFuture;Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method
