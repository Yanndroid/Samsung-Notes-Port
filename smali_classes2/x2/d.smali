.class public abstract Lx2/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:Z

.field public c:Z

.field public d:Z

.field public e:Landroid/content/Context;

.field public f:Ljava/lang/String;

.field public g:J

.field public h:I

.field public i:Ly2/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lx2/d;->a:Z

    iput-boolean v0, p0, Lx2/d;->b:Z

    iput-boolean v0, p0, Lx2/d;->c:Z

    iput-boolean v0, p0, Lx2/d;->d:Z

    const/4 v0, -0x1

    iput v0, p0, Lx2/d;->h:I

    iput-object p1, p0, Lx2/d;->e:Landroid/content/Context;

    iput-object p2, p0, Lx2/d;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lx2/d;->e:Landroid/content/Context;

    return-object v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lx2/d;->h:I

    return v0
.end method

.method public c()Ly2/b;
    .locals 1

    iget-object v0, p0, Lx2/d;->i:Ly2/b;

    return-object v0
.end method

.method public d()J
    .locals 2

    iget-wide v0, p0, Lx2/d;->g:J

    return-wide v0
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lx2/d;->a:Z

    return v0
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Lx2/d;->b:Z

    return v0
.end method

.method public g()Z
    .locals 1

    iget-boolean v0, p0, Lx2/d;->c:Z

    return v0
.end method

.method public h()Z
    .locals 1

    iget-boolean v0, p0, Lx2/d;->d:Z

    return v0
.end method

.method public i(Z)V
    .locals 0

    iput-boolean p1, p0, Lx2/d;->a:Z

    return-void
.end method

.method public j(Z)V
    .locals 0

    iput-boolean p1, p0, Lx2/d;->b:Z

    return-void
.end method

.method public k(I)V
    .locals 0

    iput p1, p0, Lx2/d;->h:I

    return-void
.end method

.method public l(Ly2/b;)V
    .locals 0

    iput-object p1, p0, Lx2/d;->i:Ly2/b;

    return-void
.end method

.method public m(Z)V
    .locals 0

    iput-boolean p1, p0, Lx2/d;->c:Z

    return-void
.end method

.method public n(J)V
    .locals 0

    iput-wide p1, p0, Lx2/d;->g:J

    return-void
.end method

.method public o(Z)V
    .locals 0

    iput-boolean p1, p0, Lx2/d;->d:Z

    return-void
.end method
