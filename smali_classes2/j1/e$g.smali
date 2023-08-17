.class public Lj1/e$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll1/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj1/e;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lj1/e;


# direct methods
.method public constructor <init>(Lj1/e;)V
    .locals 0

    iput-object p1, p0, Lj1/e$g;->a:Lj1/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ll1/c;)V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "result createNote, onResult : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UpdateNote"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_6

    :try_start_0
    invoke-virtual {p1}, Ll1/c;->b()I

    move-result v0

    const/16 v2, 0x191

    if-ne v0, v2, :cond_0

    const-string p1, "result deleteNote, HTTP_RESPONSE_UNAUTHORIZED"

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->x()Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;

    move-result-object p1

    iget-object v0, p0, Lj1/e$g;->a:Lj1/e;

    invoke-static {v0}, Lj1/e;->a(Lj1/e;)Li1/h;

    move-result-object v0

    iget-object v0, v0, Li1/h;->c:Ljava/lang/String;

    iget-object v2, p0, Lj1/e$g;->a:Lj1/e;

    invoke-static {v2}, Lj1/e;->a(Lj1/e;)Li1/h;

    move-result-object v2

    iget-object v2, v2, Li1/h;->b:Ljava/lang/String;

    iget-object v3, p0, Lj1/e$g;->a:Lj1/e;

    invoke-static {v3}, Lj1/e;->a(Lj1/e;)Li1/h;

    move-result-object v3

    iget-object v3, v3, Li1/h;->a:Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem$RequestType;

    invoke-virtual {p1, v0, v2, v3}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->i(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem$RequestType;)V

    invoke-static {}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->x()Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->M()V

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p1}, Ll1/c;->b()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    const-string p1, "result deleteNote, HTTP_RESPONSE_COMMON_FAILED"

    :goto_0
    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_1
    invoke-virtual {p1}, Ll1/c;->b()I

    move-result v0

    const/16 v2, 0x1ad

    if-ne v0, v2, :cond_2

    const-string p1, "result deleteNote, HTTP_RESPONSE_TOO_MANY_REQUESTS"

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

    iget-object v0, p0, Lj1/e$g;->a:Lj1/e;

    invoke-static {v0}, Lj1/e;->a(Lj1/e;)Li1/h;

    move-result-object v0

    iget-object v0, v0, Li1/h;->c:Ljava/lang/String;

    iget-object v2, p0, Lj1/e$g;->a:Lj1/e;

    invoke-static {v2}, Lj1/e;->a(Lj1/e;)Li1/h;

    move-result-object v2

    iget-object v2, v2, Li1/h;->b:Ljava/lang/String;

    iget-object v3, p0, Lj1/e$g;->a:Lj1/e;

    invoke-static {v3}, Lj1/e;->a(Lj1/e;)Li1/h;

    move-result-object v3

    iget-object v3, v3, Li1/h;->a:Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem$RequestType;

    invoke-virtual {p1, v0, v2, v3}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->i(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem$RequestType;)V

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    iget-object v3, p0, Lj1/e$g;->a:Lj1/e;

    invoke-static {v3}, Lj1/e;->a(Lj1/e;)Li1/h;

    move-result-object v3

    iget-object v3, v3, Li1/h;->e:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/DeviceInfo;->isEngMode()Z

    move-result v6

    if-eqz v6, :cond_4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "request add attachment. path : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->logPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-static {}, Lk1/a;->f()Lk1/a;

    move-result-object v6

    add-int/2addr v2, v5

    new-instance v5, Lj1/e$g$a;

    invoke-direct {v5, p0, v4}, Lj1/e$g$a;-><init>(Lj1/e$g;Ljava/lang/String;)V

    invoke-virtual {v6, p1, v4, v2, v5}, Lk1/a;->a(Ljava/lang/String;Ljava/lang/String;ILl1/a;)V

    goto :goto_1

    :cond_5
    invoke-static {v0}, Ln1/b;->b(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->x()Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;

    move-result-object v0

    iget-object v4, p0, Lj1/e$g;->a:Lj1/e;

    invoke-static {v4}, Lj1/e;->a(Lj1/e;)Li1/h;

    move-result-object v4

    iget-object v4, v4, Li1/h;->c:Ljava/lang/String;

    invoke-virtual {v0, v4, p1, v5}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->V(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2, v3}, Li1/a;->r(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

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

    :cond_6
    :goto_2
    return-void
.end method
