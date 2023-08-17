.class public Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common$Folder;
.super Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Folder"
.end annotation


# direct methods
.method public constructor <init>([Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;I)V
    .locals 3

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/app/common/NotesConstants;->getFolderSpanHolderType(I)I

    move-result p2

    invoke-direct {p0, p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;-><init>(I)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;->folders:[Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    const-string p2, ""

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;->uuid:Ljava/lang/String;

    array-length p2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    aget-object v1, p1, v0

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;->uuid:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;->uuid:Ljava/lang/String;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
