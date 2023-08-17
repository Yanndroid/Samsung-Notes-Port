.class public Ly0/p;
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
    .locals 2

    invoke-virtual {p0}, Ly0/b;->b()Lcom/samsung/android/app/notes/sync/importing/core/e;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/notes/sync/importing/core/l;

    check-cast p1, Ly0/q;

    invoke-virtual {p1}, Ly0/q;->c()Lcom/google/api/services/drive/Drive;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/notes/sync/importing/core/l;->n(Lcom/google/api/services/drive/Drive;)V

    invoke-virtual {p1}, Ly0/q;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/notes/sync/importing/core/l;->m(Ljava/lang/String;)V

    return-void
.end method
