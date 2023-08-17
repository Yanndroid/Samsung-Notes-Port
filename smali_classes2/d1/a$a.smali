.class public Ld1/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld1/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Ld1/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ld1/a;

    invoke-direct {v0}, Ld1/a;-><init>()V

    iput-object v0, p0, Ld1/a$a;->a:Ld1/a;

    return-void
.end method


# virtual methods
.method public a()Ld1/a;
    .locals 1

    iget-object v0, p0, Ld1/a$a;->a:Ld1/a;

    return-object v0
.end method

.method public b(Ljava/lang/String;)Ld1/a$a;
    .locals 1

    iget-object v0, p0, Ld1/a$a;->a:Ld1/a;

    invoke-virtual {v0, p1}, Ld1/a;->j(Ljava/lang/String;)V

    return-object p0
.end method

.method public c(I)Ld1/a$a;
    .locals 1

    iget-object v0, p0, Ld1/a$a;->a:Ld1/a;

    invoke-virtual {v0, p1}, Ld1/a;->k(I)V

    return-object p0
.end method

.method public d(J)Ld1/a$a;
    .locals 1

    iget-object v0, p0, Ld1/a$a;->a:Ld1/a;

    invoke-virtual {v0, p1, p2}, Ld1/a;->l(J)V

    return-object p0
.end method

.method public e(I)Ld1/a$a;
    .locals 1

    iget-object v0, p0, Ld1/a$a;->a:Ld1/a;

    invoke-virtual {v0, p1}, Ld1/a;->m(I)V

    return-object p0
.end method

.method public f(I)Ld1/a$a;
    .locals 1

    iget-object v0, p0, Ld1/a$a;->a:Ld1/a;

    invoke-virtual {v0, p1}, Ld1/a;->n(I)V

    return-object p0
.end method

.method public g(I)Ld1/a$a;
    .locals 1

    iget-object v0, p0, Ld1/a$a;->a:Ld1/a;

    invoke-virtual {v0, p1}, Ld1/a;->o(I)V

    return-object p0
.end method

.method public h(Ljava/lang/String;)Ld1/a$a;
    .locals 1

    iget-object v0, p0, Ld1/a$a;->a:Ld1/a;

    invoke-virtual {v0, p1}, Ld1/a;->p(Ljava/lang/String;)V

    return-object p0
.end method
