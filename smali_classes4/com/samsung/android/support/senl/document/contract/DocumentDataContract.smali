.class public interface abstract Lcom/samsung/android/support/senl/document/contract/DocumentDataContract;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract addCategory(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract deleteSDoc(Landroid/content/Context;Ljava/lang/String;Z)V
.end method

.method public abstract getCategoryUUID(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;
.end method

.method public abstract getNoteFilePathList(Landroid/content/Context;Z)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSDocUUID(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract isExistingNote(Landroid/content/Context;Ljava/lang/String;)Z
.end method

.method public abstract saveDoc(Landroid/content/Context;Lcom/samsung/android/support/senl/document/contract/DocumentSaveParamBuilder;)Z
.end method

.method public abstract setNoteFavorite(Landroid/content/Context;Ljava/lang/String;Z)I
.end method

.method public abstract setNoteLock(Landroid/content/Context;Ljava/lang/String;Z)Z
.end method
