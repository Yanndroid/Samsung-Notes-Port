.class public Ly0/c;
.super Ly0/b;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/notes/sync/importing/core/e;)V
    .locals 0

    invoke-direct {p0, p1}, Ly0/b;-><init>(Lcom/samsung/android/app/notes/sync/importing/core/e;)V

    return-void
.end method


# virtual methods
.method public a(Ly0/a;)V
    .locals 3

    invoke-virtual {p0}, Ly0/b;->b()Lcom/samsung/android/app/notes/sync/importing/core/e;

    move-result-object v0

    check-cast v0, Lz0/a;

    check-cast p1, Ly0/d;

    invoke-virtual {p1}, Ly0/d;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ly0/d;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ly0/d;->c()Z

    move-result p1

    invoke-virtual {v0, v1, v2, p1}, Lz0/a;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
