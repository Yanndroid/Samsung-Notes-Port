.class public Lcom/samsung/android/app/notes/sync/migration/restore/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/notes/sync/migration/restore/b$a;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:I

.field public h:I

.field public i:Z

.field public j:Landroid/content/Intent;

.field public k:Ljava/lang/String;

.field public l:Lcom/samsung/android/app/notes/sync/migration/common/Type$Work;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/samsung/android/app/notes/sync/migration/common/Type$Work;->ENTIRE:Lcom/samsung/android/app/notes/sync/migration/common/Type$Work;

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/migration/restore/b;->l:Lcom/samsung/android/app/notes/sync/migration/common/Type$Work;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/app/notes/sync/migration/restore/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/notes/sync/migration/restore/b;-><init>()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/app/notes/sync/migration/restore/b;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/migration/restore/b;->b:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic b(Lcom/samsung/android/app/notes/sync/migration/restore/b;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/app/notes/sync/migration/restore/b;->i:Z

    return-void
.end method

.method public static bridge synthetic c(Lcom/samsung/android/app/notes/sync/migration/restore/b;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/migration/restore/b;->j:Landroid/content/Intent;

    return-void
.end method

.method public static bridge synthetic d(Lcom/samsung/android/app/notes/sync/migration/restore/b;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/migration/restore/b;->k:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic e(Lcom/samsung/android/app/notes/sync/migration/restore/b;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/migration/restore/b;->a:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic f(Lcom/samsung/android/app/notes/sync/migration/restore/b;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/app/notes/sync/migration/restore/b;->g:I

    return-void
.end method

.method public static bridge synthetic g(Lcom/samsung/android/app/notes/sync/migration/restore/b;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/migration/restore/b;->e:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic h(Lcom/samsung/android/app/notes/sync/migration/restore/b;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/migration/restore/b;->f:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic i(Lcom/samsung/android/app/notes/sync/migration/restore/b;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/migration/restore/b;->d:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic j(Lcom/samsung/android/app/notes/sync/migration/restore/b;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/migration/restore/b;->c:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic k(Lcom/samsung/android/app/notes/sync/migration/restore/b;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/app/notes/sync/migration/restore/b;->h:I

    return-void
.end method

.method public static bridge synthetic l(Lcom/samsung/android/app/notes/sync/migration/restore/b;Lcom/samsung/android/app/notes/sync/migration/common/Type$Work;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/migration/restore/b;->l:Lcom/samsung/android/app/notes/sync/migration/common/Type$Work;

    return-void
.end method


# virtual methods
.method public m()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/migration/restore/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public n()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/app/notes/sync/migration/restore/b;->i:Z

    return v0
.end method

.method public o()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/migration/restore/b;->j:Landroid/content/Intent;

    return-object v0
.end method

.method public p()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/migration/restore/b;->k:Ljava/lang/String;

    return-object v0
.end method

.method public q()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/migration/restore/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public r()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/notes/sync/migration/restore/b;->g:I

    return v0
.end method

.method public s()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/migration/restore/b;->e:Ljava/lang/String;

    return-object v0
.end method

.method public t()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/migration/restore/b;->f:Ljava/lang/String;

    return-object v0
.end method

.method public u()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/migration/restore/b;->d:Ljava/lang/String;

    return-object v0
.end method

.method public v()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/notes/sync/migration/restore/b;->h:I

    return v0
.end method

.method public w()Lcom/samsung/android/app/notes/sync/migration/common/Type$Work;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/migration/restore/b;->l:Lcom/samsung/android/app/notes/sync/migration/common/Type$Work;

    return-object v0
.end method
