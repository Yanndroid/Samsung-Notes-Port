.class public Lu1/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu1/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lu1/a$a;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lu1/a$a;
    .locals 1

    invoke-virtual {p0}, Lu1/a;->d()Lu1/a$a;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lu1/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lu1/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lu1/a;->a()Lu1/a$a;

    move-result-object v0

    return-object v0
.end method

.method public final d()Lu1/a$a;
    .locals 3

    new-instance v0, Lu1/a$a;

    invoke-virtual {p0}, Lu1/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lu1/a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lx1/g;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lu1/a$a;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lu1/a;->a:Ljava/lang/String;

    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lu1/a;->b:Ljava/lang/String;

    return-void
.end method
