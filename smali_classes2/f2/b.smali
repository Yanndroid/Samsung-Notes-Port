.class public Lf2/b;
.super Le2/e;
.source "SourceFile"


# direct methods
.method public constructor <init>(Le2/b;)V
    .locals 1

    invoke-direct {p0, p1}, Le2/e;-><init>(Le2/b;)V

    new-instance p1, Lf2/c;

    iget-object v0, p0, Le2/e;->c:Le2/b;

    invoke-direct {p1, v0}, Lf2/c;-><init>(Le2/b;)V

    iput-object p1, p0, Le2/e;->a:Le2/c;

    new-instance p1, Le2/f;

    invoke-direct {p1}, Le2/f;-><init>()V

    iput-object p1, p0, Le2/e;->b:Le2/d;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
