.class public Lq0/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq0/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lm0/a;",
        ">;"
    }
.end annotation


# instance fields
.field public a:I

.field public b:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lq0/e$a;->a:I

    iput p2, p0, Lq0/e$a;->b:I

    return-void
.end method


# virtual methods
.method public a(Lm0/a;Lm0/a;)I
    .locals 2

    iget v0, p0, Lq0/e$a;->a:I

    const/4 v1, 0x2

    if-nez v0, :cond_1

    iget v0, p0, Lq0/e$a;->b:I

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Lm0/a;->start()I

    move-result p1

    invoke-interface {p2}, Lm0/a;->start()I

    move-result p2

    :goto_0
    sub-int/2addr p1, p2

    return p1

    :cond_0
    invoke-interface {p2}, Lm0/a;->start()I

    move-result p2

    invoke-interface {p1}, Lm0/a;->start()I

    move-result p1

    :goto_1
    sub-int/2addr p2, p1

    return p2

    :cond_1
    iget v0, p0, Lq0/e$a;->b:I

    if-ne v0, v1, :cond_2

    invoke-interface {p1}, Lm0/a;->d()I

    move-result p1

    invoke-interface {p2}, Lm0/a;->d()I

    move-result p2

    goto :goto_0

    :cond_2
    invoke-interface {p2}, Lm0/a;->d()I

    move-result p2

    invoke-interface {p1}, Lm0/a;->d()I

    move-result p1

    goto :goto_1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lm0/a;

    check-cast p2, Lm0/a;

    invoke-virtual {p0, p1, p2}, Lq0/e$a;->a(Lm0/a;Lm0/a;)I

    move-result p1

    return p1
.end method
