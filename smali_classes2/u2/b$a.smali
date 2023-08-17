.class public Lu2/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/notes/sync/network/networkutils/j$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu2/b;->e()Lcom/samsung/android/app/notes/sync/network/networkutils/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lu2/b;


# direct methods
.method public constructor <init>(Lu2/b;)V
    .locals 0

    iput-object p1, p0, Lu2/b$a;->a:Lu2/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleBinaryBody(Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 0

    const-string p1, "_"

    invoke-virtual {p2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aget-object p1, p1, p2

    iget-object p2, p0, Lu2/b$a;->a:Lu2/b;

    invoke-static {p2}, Lu2/b;->b(Lu2/b;)Le1/c;

    move-result-object p2

    invoke-virtual {p2}, Le1/c;->c()Lj0/a;

    move-result-object p2

    invoke-virtual {p2}, Lj0/a;->l()Lk0/c;

    move-result-object p2

    invoke-virtual {p2, p1}, Lk0/c;->b(Ljava/lang/String;)Ln0/k;

    move-result-object p1

    invoke-virtual {p1, p3}, Ln0/k;->G([B)V

    return-void
.end method

.method public handleStringBody(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lu2/b$a;->a:Lu2/b;

    invoke-static {p1}, Lu2/b;->b(Lu2/b;)Le1/c;

    move-result-object p1

    invoke-virtual {p1, p2}, Le1/c;->e(Ljava/lang/String;)Le1/c;

    return-void
.end method
