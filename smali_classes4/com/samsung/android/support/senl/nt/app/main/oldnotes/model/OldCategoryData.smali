.class public Lcom/samsung/android/support/senl/nt/app/main/oldnotes/model/OldCategoryData;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CATEGORY_COLOR_NONE:I = -0x1

.field public static final VIEW_TYPE_DESCRIPTION:I = 0x2

.field public static final VIEW_TYPE_ITEM:I = 0x1

.field public static final VIEW_TYPE_NONE:I


# instance fields
.field private mNotesDocumentCountEntry:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesDocumentCountEntry;

.field private final mViewType:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/main/oldnotes/model/OldCategoryData;->mViewType:I

    return-void
.end method

.method public constructor <init>(ILcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesDocumentCountEntry;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/main/oldnotes/model/OldCategoryData;->mViewType:I

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/oldnotes/model/OldCategoryData;->mNotesDocumentCountEntry:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesDocumentCountEntry;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    instance-of v0, p1, Lcom/samsung/android/support/senl/nt/app/main/oldnotes/model/OldCategoryData;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/main/oldnotes/model/OldCategoryData;

    iget v2, p0, Lcom/samsung/android/support/senl/nt/app/main/oldnotes/model/OldCategoryData;->mViewType:I

    iget v3, v0, Lcom/samsung/android/support/senl/nt/app/main/oldnotes/model/OldCategoryData;->mViewType:I

    if-eq v2, v3, :cond_1

    return v1

    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/oldnotes/model/OldCategoryData;->getCategoryUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/oldnotes/model/OldCategoryData;->getCategoryUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/oldnotes/model/OldCategoryData;->getDocumentCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/oldnotes/model/OldCategoryData;->getDocumentCount()I

    move-result v1

    if-ne v0, v1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getCategoryUuid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/oldnotes/model/OldCategoryData;->mNotesDocumentCountEntry:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesDocumentCountEntry;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesDocumentCountEntry;->getCategoryUuid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/oldnotes/model/OldCategoryData;->mNotesDocumentCountEntry:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesDocumentCountEntry;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesDocumentCountEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayNameColor()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/oldnotes/model/OldCategoryData;->mNotesDocumentCountEntry:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesDocumentCountEntry;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesDocumentCountEntry;->getDisplayNameColor()I

    move-result v0

    return v0
.end method

.method public getDocumentCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/oldnotes/model/OldCategoryData;->mNotesDocumentCountEntry:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesDocumentCountEntry;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesDocumentCountEntry;->getDocumentCount()I

    move-result v0

    return v0
.end method

.method public getId()I
    .locals 2

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/oldnotes/model/OldCategoryData;->mViewType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/oldnotes/model/OldCategoryData;->mNotesDocumentCountEntry:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesDocumentCountEntry;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesDocumentCountEntry;->getCategoryUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getViewType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/oldnotes/model/OldCategoryData;->mViewType:I

    return v0
.end method
