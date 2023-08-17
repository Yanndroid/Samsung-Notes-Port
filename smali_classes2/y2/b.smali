.class public Ly2/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Lcom/samsung/android/support/senl/nt/base/common/sync/ServerNoteInfo;

.field public e:I
    .annotation build Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncInfoEntity$ConflictStrategy;
    .end annotation
.end field

.field public f:Ljava/lang/String;

.field public g:Lcom/samsung/android/support/senl/nt/base/common/sync/TemporalServerNoteInfo;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ly2/b;->a:I

    const/4 p1, 0x0

    iput-object p1, p0, Ly2/b;->b:Ljava/lang/String;

    iput-object p1, p0, Ly2/b;->c:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Ly2/b;->e:I

    iput-object p1, p0, Ly2/b;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Ly2/b;->a:I

    const/4 v0, 0x0

    iput-object v0, p0, Ly2/b;->b:Ljava/lang/String;

    iput-object v0, p0, Ly2/b;->c:Ljava/lang/String;

    return-void
.end method

.method public b()I
    .locals 1
    .annotation build Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncInfoEntity$ConflictStrategy;
    .end annotation

    iget v0, p0, Ly2/b;->e:I

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ly2/b;->f:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ly2/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public e()Lcom/samsung/android/support/senl/nt/base/common/sync/ServerNoteInfo;
    .locals 1

    iget-object v0, p0, Ly2/b;->d:Lcom/samsung/android/support/senl/nt/base/common/sync/ServerNoteInfo;

    return-object v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Ly2/b;->a:I

    return v0
.end method

.method public g()Lcom/samsung/android/support/senl/nt/base/common/sync/TemporalServerNoteInfo;
    .locals 1

    iget-object v0, p0, Ly2/b;->g:Lcom/samsung/android/support/senl/nt/base/common/sync/TemporalServerNoteInfo;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ly2/b;->c:Ljava/lang/String;

    return-object v0
.end method

.method public i(I)V
    .locals 0
    .param p1    # I
        .annotation build Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncInfoEntity$ConflictStrategy;
        .end annotation
    .end param

    iput p1, p0, Ly2/b;->e:I

    return-void
.end method

.method public j(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ly2/b;->f:Ljava/lang/String;

    return-void
.end method

.method public k(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ly2/b;->b:Ljava/lang/String;

    return-void
.end method

.method public l(Lcom/samsung/android/support/senl/nt/base/common/sync/ServerNoteInfo;)V
    .locals 0

    iput-object p1, p0, Ly2/b;->d:Lcom/samsung/android/support/senl/nt/base/common/sync/ServerNoteInfo;

    return-void
.end method

.method public m(I)V
    .locals 0

    iput p1, p0, Ly2/b;->a:I

    return-void
.end method

.method public n(Lcom/samsung/android/support/senl/nt/base/common/sync/TemporalServerNoteInfo;)V
    .locals 0

    iput-object p1, p0, Ly2/b;->g:Lcom/samsung/android/support/senl/nt/base/common/sync/TemporalServerNoteInfo;

    return-void
.end method

.method public o(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ly2/b;->c:Ljava/lang/String;

    return-void
.end method
