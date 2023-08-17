.class public Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->U(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager$b;->b:Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;

    iput-object p2, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager$b;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager$b;->b:Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager$b;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->e(Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager$b;->b:Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;

    invoke-static {v0}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->h(Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;)V

    return-void
.end method
