.class public Lcom/samsung/android/support/senl/nt/app/main/noteslist/Bixby2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/app/main/noteslist/Bixby2$DrawerFragmentBixby2;,
        Lcom/samsung/android/support/senl/nt/app/main/noteslist/Bixby2$NoteListActivityBixby2;,
        Lcom/samsung/android/support/senl/nt/app/main/noteslist/Bixby2$NoteFragmentBixby2;,
        Lcom/samsung/android/support/senl/nt/app/main/noteslist/Bixby2$ShowRecentNotesAsync;,
        Lcom/samsung/android/support/senl/nt/app/main/noteslist/Bixby2$IsNoteEmptyAsync;,
        Lcom/samsung/android/support/senl/nt/app/main/noteslist/Bixby2$GetAppStateAsync;,
        Lcom/samsung/android/support/senl/nt/app/main/noteslist/Bixby2$SaveAsync;,
        Lcom/samsung/android/support/senl/nt/app/main/noteslist/Bixby2$SearchAsync;,
        Lcom/samsung/android/support/senl/nt/app/main/noteslist/Bixby2$DeleteAsync;,
        Lcom/samsung/android/support/senl/nt/app/main/noteslist/Bixby2$Bixby2ActionBackgound;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Bixby2"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bridge synthetic a([Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/Bixby2;->isValidUUIDs([Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static isValidUUIDs([Ljava/lang/String;)Z
    .locals 5

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->getInstance()Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->getMainListRepository()Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;->get(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;

    move-result-object v3

    if-nez v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method
