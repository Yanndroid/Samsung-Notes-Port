.class public Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeClosureEntity;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/room/Entity;
    foreignKeys = {
        .subannotation Landroidx/room/ForeignKey;
            childColumns = {
                "ancestor"
            }
            entity = Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;
            onDelete = 0x5
            onUpdate = 0x5
            parentColumns = {
                "UUID"
            }
        .end subannotation,
        .subannotation Landroidx/room/ForeignKey;
            childColumns = {
                "descendant"
            }
            entity = Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;
            onDelete = 0x5
            onUpdate = 0x5
            parentColumns = {
                "UUID"
            }
        .end subannotation
    }
    primaryKeys = {
        "ancestor",
        "descendant"
    }
    tableName = "category_tree_closure"
.end annotation


# instance fields
.field private ancestor:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/room/ColumnInfo;
        defaultValue = ""
        name = "ancestor"
    .end annotation
.end field

.field private depth:I
    .annotation build Landroidx/room/ColumnInfo;
        defaultValue = "0"
        name = "depth"
    .end annotation
.end field

.field private descendant:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/room/ColumnInfo;
        defaultValue = ""
        name = "descendant"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeClosureEntity;->ancestor:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeClosureEntity;->descendant:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAncestor()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeClosureEntity;->ancestor:Ljava/lang/String;

    return-object v0
.end method

.method public getDepth()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeClosureEntity;->depth:I

    return v0
.end method

.method public getDescendant()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeClosureEntity;->descendant:Ljava/lang/String;

    return-object v0
.end method

.method public setAncestor(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeClosureEntity;->ancestor:Ljava/lang/String;

    return-void
.end method

.method public setDepth(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeClosureEntity;->depth:I

    return-void
.end method

.method public setDescendant(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeClosureEntity;->descendant:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NotesCategoryTreeClosureEntity{ancestor=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeClosureEntity;->ancestor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", descendant=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeClosureEntity;->descendant:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", depth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeClosureEntity;->depth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
