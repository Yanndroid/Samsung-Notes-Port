.class public abstract Lp0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm0/a;
.implements Lm0/b;


# instance fields
.field public a:I

.field public b:I

.field public c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lp0/b;->a:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lp0/b;->a:I

    return-void
.end method

.method public static k(Ljava/lang/String;)Lp0/b;
    .locals 1

    const-string v0, "alignment"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p0, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocAlignmentParagraph;

    invoke-direct {p0}, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocAlignmentParagraph;-><init>()V

    return-object p0

    :cond_0
    const-string v0, "bullet"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p0, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocBulletParagraph;

    invoke-direct {p0}, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocBulletParagraph;-><init>()V

    return-object p0

    :cond_1
    const-string v0, "indentLevel"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance p0, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocIndentLevelParagraph;

    invoke-direct {p0}, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocIndentLevelParagraph;-><init>()V

    return-object p0

    :cond_2
    const-string v0, "lineSpacing"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance p0, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocLineSpacingParagraph;

    invoke-direct {p0}, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocLineSpacingParagraph;-><init>()V

    return-object p0

    :cond_3
    const-string v0, "parsingState"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    new-instance p0, Lp0/n;

    invoke-direct {p0}, Lp0/n;-><init>()V

    return-object p0

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method public static p(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "alignment"

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "bullet"

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "indentLevel"

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "lineSpacing"

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "parsingState"

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public IsSame(Ljava/lang/Object;)Z
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lp0/b;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lp0/b;

    iget v1, p0, Lp0/b;->a:I

    iget v3, p1, Lp0/b;->a:I

    const-string v4, "]"

    const-string v5, " - "

    const-string v6, "WCon_TextParagraphBase"

    if-eq v1, v3, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " !! equals() - NE - type["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lp0/b;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lp0/b;->a:I

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2
    iget v1, p0, Lp0/b;->b:I

    iget v3, p1, Lp0/b;->b:I

    if-eq v1, v3, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " !! equals() - NE - startPos["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lp0/b;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lp0/b;->b:I

    goto :goto_0

    :cond_3
    iget v1, p0, Lp0/b;->c:I

    iget v3, p1, Lp0/b;->c:I

    if-eq v1, v3, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " !! equals() - NE - endPos["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lp0/b;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lp0/b;->c:I

    goto :goto_0

    :cond_4
    return v0
.end method

.method public abstract a()Ljava/lang/String;
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lp0/b;->b:I

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    const-string v0, "paragraph"

    return-object v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lp0/b;->c:I

    return v0
.end method

.method public e(I)V
    .locals 0

    iput p1, p0, Lp0/b;->c:I

    return-void
.end method

.method public f(Ljava/lang/String;)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0, p1}, Lp0/b;->q(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public g()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\'paragraph/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lp0/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\'paragraph/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lp0/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lp0/b;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i(Lq0/a;I)I
    .locals 2

    invoke-virtual {p1, p2}, Lq0/a;->e(I)I

    move-result v0

    iput v0, p0, Lp0/b;->a:I

    add-int/lit8 v0, p2, 0x4

    invoke-virtual {p1, v0}, Lq0/a;->e(I)I

    move-result v1

    iput v1, p0, Lp0/b;->b:I

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p1, v0}, Lq0/a;->e(I)I

    move-result p1

    iput p1, p0, Lp0/b;->c:I

    add-int/lit8 v0, v0, 0x4

    sub-int/2addr v0, p2

    return v0
.end method

.method public j(Lp0/b;)V
    .locals 1

    iget v0, p1, Lp0/b;->a:I

    iput v0, p0, Lp0/b;->a:I

    iget v0, p1, Lp0/b;->b:I

    iput v0, p0, Lp0/b;->b:I

    iget p1, p1, Lp0/b;->c:I

    iput p1, p0, Lp0/b;->c:I

    return-void
.end method

.method public l(Lq0/a;I)I
    .locals 2

    iget v0, p0, Lp0/b;->a:I

    invoke-virtual {p1, p2, v0}, Lq0/a;->u(II)V

    add-int/lit8 v0, p2, 0x4

    iget v1, p0, Lp0/b;->b:I

    invoke-virtual {p1, v0, v1}, Lq0/a;->u(II)V

    add-int/lit8 v0, v0, 0x4

    iget v1, p0, Lp0/b;->c:I

    invoke-virtual {p1, v0, v1}, Lq0/a;->u(II)V

    add-int/lit8 v0, v0, 0x4

    sub-int/2addr v0, p2

    return v0
.end method

.method public m()I
    .locals 1

    const/16 v0, 0xc

    return v0
.end method

.method public abstract n()Ljava/lang/String;
.end method

.method public o()I
    .locals 1

    iget v0, p0, Lp0/b;->a:I

    return v0
.end method

.method public abstract q(Ljava/lang/String;)Z
.end method

.method public start()I
    .locals 1

    iget v0, p0, Lp0/b;->b:I

    return v0
.end method
