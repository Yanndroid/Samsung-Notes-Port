.class public Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->T(Lh1/a;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lh1/a;

.field public final synthetic b:Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;Lh1/a;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager$d;->b:Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;

    iput-object p2, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager$d;->a:Lh1/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager$d;->b:Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;

    invoke-static {v0}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->a(Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager$d;->b:Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;

    invoke-static {v0}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->b(Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager$d;->b:Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;

    invoke-static {v1}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->a(Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager$d;->b:Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;

    invoke-static {v0}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->a(Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager$d;->b:Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager$d;->a:Lh1/a;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->K(Lh1/a;)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager$d;->b:Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;

    invoke-static {v0}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->b(Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
