.class public Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryDocumentCountEntry;
.super Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryEntity;
.source "SourceFile"


# annotations
.annotation build Landroidx/room/DatabaseView;
    value = "SELECT category.*, COUNT(sdoc._id) AS memoCount FROM category LEFT JOIN sdoc ON (category.UUID=sdoc.categoryUUID AND sdoc.isDeleted=0) WHERE category.isDeleted=0 GROUP BY category.UUID ORDER BY category.orderBy ASC"
    viewName = "category_memo_count"
.end annotation


# instance fields
.field private memoCount:I
    .annotation build Landroidx/room/ColumnInfo;
        defaultValue = "0"
        name = "memoCount"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryEntity;-><init>()V

    return-void
.end method


# virtual methods
.method public getMemoCount()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryDocumentCountEntry;->memoCount:I

    return v0
.end method

.method public setMemoCount(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryDocumentCountEntry;->memoCount:I

    return-void
.end method
