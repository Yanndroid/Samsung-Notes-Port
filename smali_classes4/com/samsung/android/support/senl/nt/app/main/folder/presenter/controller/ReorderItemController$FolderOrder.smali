.class Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$FolderOrder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FolderOrder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$FolderOrder;",
        ">;"
    }
.end annotation


# instance fields
.field public final mEntry:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

.field public final mIndex:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$FolderOrder;->mEntry:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$FolderOrder;->mIndex:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$FolderOrder;)I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$FolderOrder;->mIndex:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$FolderOrder;->getIndex()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$FolderOrder;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$FolderOrder;->compareTo(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$FolderOrder;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getEntry()Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$FolderOrder;->mEntry:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    return-object v0
.end method

.method public getIndex()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$FolderOrder;->mIndex:Ljava/lang/Integer;

    return-object v0
.end method
