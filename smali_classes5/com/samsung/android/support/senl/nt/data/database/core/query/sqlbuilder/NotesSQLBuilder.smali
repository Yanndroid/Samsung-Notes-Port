.class public Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/SQLKeyword;
.implements Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$Select;
.implements Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$On;
.implements Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$Where;
.implements Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$Join;
.implements Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$When;
.implements Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$Then;


# instance fields
.field private final mBuilder:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;->mBuilder:Ljava/lang/StringBuilder;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;->mBuilder:Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public and(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-object p0
.end method

.method public bridge synthetic and(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$On;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;->and(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic and(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$Then;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;->and(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;

    move-result-object p1

    return-object p1
.end method

.method public append(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public as(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$As;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " AS "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " , "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public asEnd(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " AS "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public build()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, " +"

    const-string v2, " "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public caseWhen(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$When;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v1, " CASE WHEN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public delimiter()Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public elseEnd(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v1, " ELSE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " END "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public else_()Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v1, " ELSE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public end()Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v1, " END "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public escape(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v1, " ESCAPE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public except(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v1, " EXCEPT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public from(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$From;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v1, " FROM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public groupBy(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v1, " GROUP BY "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public in(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v1, " IN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public innerJoin(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$Join;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v1, " INNER JOIN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public leftJoin(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$Join;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v1, " LEFT JOIN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public like(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v1, " LIKE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public limit(I)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;
    .locals 2

    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v1, " LIMIT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_0
    return-object p0
.end method

.method public on(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$On;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v1, " ON "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public or()Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v1, " OR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public or(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v1, " OR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-object p0
.end method

.method public bridge synthetic or(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$Then;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;->or(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;

    move-result-object p1

    return-object p1
.end method

.method public orderBy(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v1, " ORDER BY "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-object p0
.end method

.method public orderBy(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/SQLKeyword$OrderOption;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v1, " ORDER BY "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v1, " REPLACE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public select()Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$Select;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v1, " SELECT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public select(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$Select;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v1, " SELECT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public then()Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$Then;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v1, " THEN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public then(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$Then;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v1, " THEN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public union(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v1, " UNION "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public when(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$When;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v1, " WHEN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public where(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$Where;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v1, " WHERE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0
.end method
