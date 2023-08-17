.class public Lj1/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll1/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj1/c;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lj1/c;


# direct methods
.method public constructor <init>(Lj1/c;)V
    .locals 0

    iput-object p1, p0, Lj1/c$a;->a:Lj1/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ll1/c;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "result deleteNote, onResult : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeleteNote"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_4

    :try_start_0
    invoke-virtual {p1}, Ll1/c;->b()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    const-string p1, "Failed. HTTP_RESPONSE_COMMON_FAILED"

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->x()Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;

    move-result-object p1

    iget-object v0, p0, Lj1/c$a;->a:Lj1/c;

    invoke-static {v0}, Lj1/c;->b(Lj1/c;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lj1/c$a;->a:Lj1/c;

    invoke-static {v2}, Lj1/c;->a(Lj1/c;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem$RequestType;->DELETE:Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem$RequestType;

    invoke-virtual {p1, v0, v2, v3}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->i(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem$RequestType;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Ll1/c;->b()I

    move-result v0

    const/16 v2, 0x191

    if-ne v0, v2, :cond_1

    const-string p1, "Failed. HTTP_RESPONSE_UNAUTHORIZED"

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->x()Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;

    move-result-object p1

    iget-object v0, p0, Lj1/c$a;->a:Lj1/c;

    invoke-static {v0}, Lj1/c;->b(Lj1/c;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lj1/c$a;->a:Lj1/c;

    invoke-static {v2}, Lj1/c;->a(Lj1/c;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem$RequestType;->DELETE:Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem$RequestType;

    invoke-virtual {p1, v0, v2, v3}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->i(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem$RequestType;)V

    invoke-static {}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->x()Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->M()V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ll1/c;->b()I

    move-result v0

    const/16 v2, 0x1ad

    if-ne v0, v2, :cond_2

    const-string p1, "Failed. HTTP_RESPONSE_TOO_MANY_REQUESTS"

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Ll1/c;->b()I

    move-result v0

    const/16 v2, 0x194

    if-ne v0, v2, :cond_3

    const-string p1, "Failed. HTTP_RESOURCE_NOT_FOUND"

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0}, Lj1/c$a;->b()V

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Ll1/c;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NO_CONTENT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_4

    goto :goto_0

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

    :cond_4
    :goto_1
    return-void
.end method

.method public final b()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->x()Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;

    move-result-object v0

    iget-object v1, p0, Lj1/c$a;->a:Lj1/c;

    invoke-static {v1}, Lj1/c;->b(Lj1/c;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->H(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Li1/a;->r(J)V

    return-void
.end method
