.class public Lcom/samsung/android/support/senl/nt/app/sync/contractimpl/SDocTagResolverContractImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb0/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addTag(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 0

    invoke-static {p1, p2, p3, p4}, Lcom/samsung/android/app/notes/sync/db/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public deleteNoteTagContent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/samsung/android/app/notes/sync/db/l;->o(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public deleteTag(Landroid/content/Context;Ljava/lang/String;JIZ)V
    .locals 0

    invoke-static/range {p1 .. p6}, Lcom/samsung/android/app/notes/sync/db/l;->m(Landroid/content/Context;Ljava/lang/String;JIZ)I

    return-void
.end method

.method public deleteTagSync(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1, p2}, Lcom/samsung/android/app/notes/sync/db/l;->n(Landroid/content/Context;Ljava/lang/String;)Z

    return-void
.end method

.method public getDirtyCountOfNoteTag(Landroid/content/Context;)I
    .locals 0

    invoke-static {p1}, Lcom/samsung/android/app/notes/sync/db/j;->a(Landroid/content/Context;)I

    move-result p1

    return p1
.end method

.method public getNoteTagDeleted(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/samsung/android/app/notes/sync/db/j;->p(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getNoteTagExtraInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/samsung/android/app/notes/sync/db/j;->q(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getNoteTagModifiedTime(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)J
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/samsung/android/app/notes/sync/db/j;->t(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide p1

    return-wide p1
.end method

.method public getNoteTagServerTimestamp(Landroid/content/Context;Ljava/lang/String;)J
    .locals 0

    invoke-static {p1, p2}, Lcom/samsung/android/app/notes/sync/db/j;->r(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide p1

    return-wide p1
.end method

.method public getNoteTagServerTimestamp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)J
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/samsung/android/app/notes/sync/db/j;->s(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide p1

    return-wide p1
.end method

.method public getNoteTagUUIDList(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/samsung/android/app/notes/sync/db/j;->u(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getSDocUUIDListByTag(Landroid/content/Context;Ljava/lang/String;Z)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p1, p2, p3}, Lcom/samsung/android/app/notes/sync/db/j;->w(Landroid/content/Context;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getSDocUuidAndNoteTagTimeList(Landroid/content/Context;)Ljava/util/HashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/samsung/android/app/notes/sync/db/j;->v(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object p1

    return-object p1
.end method

.method public getTagDeleted(Landroid/content/Context;Ljava/lang/String;)I
    .locals 0

    invoke-static {p1, p2}, Lcom/samsung/android/app/notes/sync/db/j;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getTagExtraInfo(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p1, p2}, Lcom/samsung/android/app/notes/sync/db/j;->e(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTagLastModifiedTime(Landroid/content/Context;Ljava/lang/String;)J
    .locals 0

    invoke-static {p1, p2}, Lcom/samsung/android/app/notes/sync/db/j;->f(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide p1

    return-wide p1
.end method

.method public getTagName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p1, p2}, Lcom/samsung/android/app/notes/sync/db/j;->g(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTagServerTimestamp(Landroid/content/Context;Ljava/lang/String;)J
    .locals 0

    invoke-static {p1, p2}, Lcom/samsung/android/app/notes/sync/db/j;->o(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide p1

    return-wide p1
.end method

.method public getTagUUID(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/samsung/android/app/notes/sync/db/j;->h(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTagUUIDList(Landroid/content/Context;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/samsung/android/app/notes/sync/db/j;->j(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getTagUUIDList(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/samsung/android/app/notes/sync/db/j;->n(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getTagUUIDListByDeleted(Landroid/content/Context;Z)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/samsung/android/app/notes/sync/db/j;->k(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getTagUUIDListByDirty(Landroid/content/Context;I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/samsung/android/app/notes/sync/db/j;->l(Landroid/content/Context;I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public isExistTag(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p1, p2}, Lcom/samsung/android/app/notes/sync/db/j;->x(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public recoveryTag(Landroid/content/Context;Ljava/lang/String;JI)V
    .locals 0

    invoke-static {p1, p2, p3, p4, p5}, Lcom/samsung/android/app/notes/sync/db/l;->p(Landroid/content/Context;Ljava/lang/String;JI)V

    return-void
.end method

.method public setNoteTag(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-static {p1, p2, p3, p4}, Lcom/samsung/android/app/notes/sync/db/l;->v(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public setNoteTagContent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IJJLjava/lang/String;I)I
    .locals 0

    invoke-static/range {p1 .. p10}, Lcom/samsung/android/app/notes/sync/db/l;->w(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IJJLjava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public setNoteTagContentList(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;I)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/base/common/sync/TagContentItem;",
            ">;I)I"
        }
    .end annotation

    invoke-static {p1, p2, p3, p4}, Lcom/samsung/android/app/notes/sync/db/l;->x(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;I)I

    move-result p1

    return p1
.end method

.method public setNoteTagDirty(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/samsung/android/app/notes/sync/db/l;->u(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public setTagDirty(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/samsung/android/app/notes/sync/db/l;->s(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public setTagModifiedAndServerTimestamp(Landroid/content/Context;Ljava/lang/String;JJ)V
    .locals 0

    invoke-static/range {p1 .. p6}, Lcom/samsung/android/app/notes/sync/db/l;->y(Landroid/content/Context;Ljava/lang/String;JJ)V

    return-void
.end method

.method public setTagModifiedAndServerTimestampAndExtraInfo(Landroid/content/Context;Ljava/lang/String;JJLjava/lang/String;)V
    .locals 0

    invoke-static/range {p1 .. p7}, Lcom/samsung/android/app/notes/sync/db/l;->z(Landroid/content/Context;Ljava/lang/String;JJLjava/lang/String;)V

    return-void
.end method

.method public setTagServerTimestamp(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, Lcom/samsung/android/app/notes/sync/db/l;->t(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method

.method public synchronizeTag()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/notes/sync/db/l;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public updateTagName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/samsung/android/app/notes/sync/db/l;->G(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method
