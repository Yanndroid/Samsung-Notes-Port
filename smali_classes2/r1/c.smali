.class public abstract Lr1/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/notes/sync/migration/common/Type$Work;I)V
    .locals 1

    sget-object v0, Lcom/samsung/android/app/notes/sync/migration/common/Type$Work;->ENTIRE:Lcom/samsung/android/app/notes/sync/migration/common/Type$Work;

    if-ne p1, v0, :cond_0

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object p1

    invoke-virtual {p1, p2}, Lc3/n;->E(I)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object p1

    invoke-virtual {p1, p2}, Lc3/n;->G(I)V

    :goto_0
    return-void
.end method
