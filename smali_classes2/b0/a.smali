.class public interface abstract Lb0/a;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract addCategory(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)Ljava/lang/String;
.end method

.method public abstract createRestoredFolder()Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract deleteCategory(Landroid/content/Context;Ljava/lang/String;JIZ)V
.end method

.method public abstract deleteCategorySync(Landroid/content/Context;Ljava/lang/String;)V
.end method

.method public abstract getCategoryDeleted(Ljava/lang/String;)I
.end method

.method public abstract getCategoryName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getCategoryOrder(Landroid/content/Context;Ljava/lang/String;)I
.end method

.method public abstract getCategoryServerTimestamp(Landroid/content/Context;Ljava/lang/String;)J
.end method

.method public abstract getCategoryUUIDList(Landroid/content/Context;)Ljava/util/List;
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
.end method

.method public abstract getCategoryUUIDListByDeleted(Landroid/content/Context;Z)Ljava/util/List;
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
.end method

.method public abstract getCategoryUUIDListByDirty(Landroid/content/Context;I)Ljava/util/List;
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
.end method

.method public abstract getDirtyCountOfNoteCategory(Landroid/content/Context;)I
.end method

.method public abstract getNoteCategoryDirty(Landroid/content/Context;Ljava/lang/String;)J
.end method

.method public abstract getNoteCategoryServerTimestamp(Landroid/content/Context;Ljava/lang/String;)J
.end method

.method public abstract getNoteCategoryUUID(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getUUIDListByCategory(Landroid/content/Context;Ljava/lang/String;Z)Ljava/util/List;
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
.end method

.method public abstract getUuidAndNoteCategoryTimeList(Landroid/content/Context;)Ljava/util/HashMap;
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
.end method

.method public abstract isExistCategory(Landroid/content/Context;Ljava/lang/String;)Z
.end method

.method public abstract recoveryCategory(Landroid/content/Context;Ljava/lang/String;JI)V
.end method

.method public abstract setCategoryDirty(Landroid/content/Context;Ljava/lang/String;I)V
.end method

.method public abstract setCategoryOrder(Landroid/content/Context;Ljava/util/HashMap;J)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;J)V"
        }
    .end annotation
.end method

.method public abstract setNoteCategory(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract setNoteCategory(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IJ)I
.end method

.method public abstract setNoteCategoryDirty(Landroid/content/Context;Ljava/lang/String;I)V
.end method

.method public abstract setTimestampAndDirty(Landroid/content/Context;Ljava/lang/String;JI)V
.end method

.method public abstract synchronizeCategory()Ljava/lang/Object;
.end method

.method public abstract updateCategoryNameAndColor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
.end method
