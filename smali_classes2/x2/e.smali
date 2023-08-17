.class public Lx2/e;
.super Lx2/d;
.source "SourceFile"


# static fields
.field public static r:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public j:La2/g$a;

.field public k:Lcom/samsung/android/app/notes/sync/db/t;

.field public l:Lcom/samsung/android/app/notes/sync/db/f;

.field public m:Lcom/samsung/android/app/notes/sync/db/i;

.field public n:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;",
            ">;"
        }
    .end annotation
.end field

.field public o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public p:Z

.field public q:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lx2/e;->r:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lx2/d;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lx2/e;->n:Ljava/util/HashMap;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lx2/e;->o:Ljava/util/List;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lx2/e;->p:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lx2/e;->q:Ljava/lang/String;

    new-instance p1, La2/g$a;

    invoke-direct {p1, p2}, La2/g$a;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lx2/e;->j:La2/g$a;

    new-instance p1, Lcom/samsung/android/app/notes/sync/db/t;

    iget-object p2, p0, Lx2/d;->e:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/samsung/android/app/notes/sync/db/t;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lx2/e;->k:Lcom/samsung/android/app/notes/sync/db/t;

    new-instance p1, Lcom/samsung/android/app/notes/sync/db/f;

    iget-object p2, p0, Lx2/d;->e:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/samsung/android/app/notes/sync/db/f;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lx2/e;->l:Lcom/samsung/android/app/notes/sync/db/f;

    new-instance p1, Lcom/samsung/android/app/notes/sync/db/i;

    iget-object p2, p0, Lx2/d;->e:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/samsung/android/app/notes/sync/db/i;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lx2/e;->m:Lcom/samsung/android/app/notes/sync/db/i;

    return-void
.end method


# virtual methods
.method public p()La2/g$a;
    .locals 1

    iget-object v0, p0, Lx2/e;->j:La2/g$a;

    return-object v0
.end method

.method public q()Lcom/samsung/android/app/notes/sync/db/f;
    .locals 1

    iget-object v0, p0, Lx2/e;->l:Lcom/samsung/android/app/notes/sync/db/f;

    return-object v0
.end method

.method public r()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lx2/e;->q:Ljava/lang/String;

    return-object v0
.end method

.method public s()Lcom/samsung/android/app/notes/sync/db/i;
    .locals 1

    iget-object v0, p0, Lx2/e;->m:Lcom/samsung/android/app/notes/sync/db/i;

    return-object v0
.end method

.method public t()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lx2/e;->n:Ljava/util/HashMap;

    return-object v0
.end method

.method public u()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;",
            ">;"
        }
    .end annotation

    sget-object v0, Lx2/e;->r:Ljava/util/HashMap;

    return-object v0
.end method

.method public v()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lx2/e;->o:Ljava/util/List;

    return-object v0
.end method

.method public w()Lcom/samsung/android/app/notes/sync/db/t;
    .locals 1

    iget-object v0, p0, Lx2/e;->k:Lcom/samsung/android/app/notes/sync/db/t;

    return-object v0
.end method

.method public x()Z
    .locals 1

    iget-boolean v0, p0, Lx2/e;->p:Z

    return v0
.end method

.method public y(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lx2/e;->q:Ljava/lang/String;

    return-void
.end method

.method public z(Z)V
    .locals 0

    iput-boolean p1, p0, Lx2/e;->p:Z

    return-void
.end method
