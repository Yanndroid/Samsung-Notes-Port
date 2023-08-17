.class public Lcom/samsung/android/app/notes/sync/importing/controllers/ImportController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/notes/sync/importing/controllers/a;


# instance fields
.field public a:Lcom/samsung/android/app/notes/sync/importing/services/ImportService;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bridge synthetic f(Lcom/samsung/android/app/notes/sync/importing/controllers/ImportController;)Lcom/samsung/android/app/notes/sync/importing/services/ImportService;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/notes/sync/importing/controllers/ImportController;->a:Lcom/samsung/android/app/notes/sync/importing/services/ImportService;

    return-object p0
.end method

.method public static bridge synthetic g(Lcom/samsung/android/app/notes/sync/importing/controllers/ImportController;Lcom/samsung/android/app/notes/sync/importing/services/ImportService;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/importing/controllers/ImportController;->a:Lcom/samsung/android/app/notes/sync/importing/services/ImportService;

    return-void
.end method


# virtual methods
.method public a(ZZ)V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/notes/sync/importing/controllers/ImportController$d;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/app/notes/sync/importing/controllers/ImportController$d;-><init>(Lcom/samsung/android/app/notes/sync/importing/controllers/ImportController;ZZ)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/notes/sync/importing/controllers/ImportController;->h(Lcom/samsung/android/app/notes/sync/importing/controllers/a$a;)V

    return-void
.end method

.method public b(Ly0/a;)V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/notes/sync/importing/controllers/ImportController$c;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/notes/sync/importing/controllers/ImportController$c;-><init>(Lcom/samsung/android/app/notes/sync/importing/controllers/ImportController;Ly0/a;)V

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/app/notes/sync/importing/controllers/ImportController;->i(Lcom/samsung/android/app/notes/sync/importing/controllers/a$a;Z)V

    return-void
.end method

.method public c(II)V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/notes/sync/importing/controllers/ImportController$e;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/app/notes/sync/importing/controllers/ImportController$e;-><init>(Lcom/samsung/android/app/notes/sync/importing/controllers/ImportController;II)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/notes/sync/importing/controllers/ImportController;->h(Lcom/samsung/android/app/notes/sync/importing/controllers/a$a;)V

    return-void
.end method

.method public d()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/notes/sync/importing/controllers/ImportController$b;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/notes/sync/importing/controllers/ImportController$b;-><init>(Lcom/samsung/android/app/notes/sync/importing/controllers/ImportController;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/notes/sync/importing/controllers/ImportController;->h(Lcom/samsung/android/app/notes/sync/importing/controllers/a$a;)V

    return-void
.end method

.method public e()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/notes/sync/importing/controllers/ImportController$a;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/notes/sync/importing/controllers/ImportController$a;-><init>(Lcom/samsung/android/app/notes/sync/importing/controllers/ImportController;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/notes/sync/importing/controllers/ImportController;->h(Lcom/samsung/android/app/notes/sync/importing/controllers/a$a;)V

    return-void
.end method

.method public final h(Lcom/samsung/android/app/notes/sync/importing/controllers/a$a;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/notes/sync/importing/controllers/ImportController;->i(Lcom/samsung/android/app/notes/sync/importing/controllers/a$a;Z)V

    return-void
.end method

.method public final i(Lcom/samsung/android/app/notes/sync/importing/controllers/a$a;Z)V
    .locals 3

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v0

    invoke-virtual {v0}, Lx/e;->a()Lx/a;

    move-result-object v0

    invoke-interface {v0}, Lx/a;->getAppContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/samsung/android/app/notes/sync/importing/services/ImportService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v2, Lcom/samsung/android/app/notes/sync/importing/controllers/ImportController$1;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/samsung/android/app/notes/sync/importing/controllers/ImportController$1;-><init>(Lcom/samsung/android/app/notes/sync/importing/controllers/ImportController;Lcom/samsung/android/app/notes/sync/importing/controllers/a$a;ZLandroid/content/Context;)V

    const/4 p1, 0x1

    invoke-virtual {v0, v1, v2, p1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method
