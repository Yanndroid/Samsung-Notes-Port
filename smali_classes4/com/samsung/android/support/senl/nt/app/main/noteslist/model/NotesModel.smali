.class public Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel$ChildDeletableList;,
        Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel$MovingFolder;
    }
.end annotation


# static fields
.field private static final FILE_NAME_FOR_SAVED_INSTANCE:Ljava/lang/String; = "saved_instance_check_notes_list"

.field private static final KEY_CHECKED_DIMDED_LIST:Ljava/lang/String; = "key_checked_dim_list"

.field private static final KEY_CHECKED_SUB_FOLDER_LIST:Ljava/lang/String; = "key_checked_sub_folder_list"

.field private static final KEY_SAVE_EXPORT_ITEMS:Ljava/lang/String; = "key_saving_item_list"

.field private static final KEY_SAVE_EXPORT_TYPE:Ljava/lang/String; = "key_saving_type"

.field private static final TAG:Ljava/lang/String; = "NotesModel"


# instance fields
.field private mCheckedDimedNotes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mCheckedFolders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mCheckedNotes:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mConvertingStateHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mDragAndDropUuid:Ljava/lang/String;

.field private mExportPdfType:I

.field private mIsScrolling:Z

.field private mItemLongPressed:Z

.field private mLastDisplay:I

.field private mLastOpenedSDocXDataChanged:Z

.field private mLastOpenedSDocXUuid:Ljava/lang/String;

.field private mPostNotifyDataSetChanged:Z

.field private mRequestCodeForOtherApp:I

.field private mSaveExportNoteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSaveExportType:I

.field private mToolType:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->mConvertingStateHashMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->mCheckedNotes:Ljava/util/LinkedHashMap;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->mCheckedDimedNotes:Ljava/util/HashMap;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->mCheckedFolders:Ljava/util/HashMap;

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->mSaveExportType:I

    sget v1, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfExport;->PDF_EXPORT_TYPE_RASTER:I

    iput v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->mExportPdfType:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->mToolType:I

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->mRequestCodeForOtherApp:I

    return-void
.end method

.method private loadCheckedDimedNotes(Landroid/os/Bundle;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "key_checked_dim_list"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->mCheckedDimedNotes:Ljava/util/HashMap;

    if-nez p1, :cond_1

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->mCheckedDimedNotes:Ljava/util/HashMap;

    :cond_1
    return-void
.end method

.method private loadCheckedFolders(Landroid/os/Bundle;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "key_checked_sub_folder_list"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->mCheckedFolders:Ljava/util/HashMap;

    if-nez p1, :cond_1

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->mCheckedFolders:Ljava/util/HashMap;

    :cond_1
    return-void
.end method

.method private loadCheckedNotes(Landroid/content/Context;)V
    .locals 4

    const-string v0, "NotesModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "saved_instance_check_notes_list"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int p1, v2

    new-array p1, p1, [B

    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v2, p1}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    if-gtz v3, :cond_0

    const-string v3, "loadCheckedNotes# failed to read paragraph list from file Stream ended unexpectedly"

    invoke-static {v0, v3}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "loadCheckedNotes# file is not successfully deleted"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception v1

    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadCheckedNotes# failed to read paragraph list from file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_3

    array-length v0, p1

    if-lez v0, :cond_3

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    array-length v1, p1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Landroid/os/Parcel;->unmarshall([BII)V

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->mCheckedNotes:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->readMap(Ljava/util/Map;Ljava/lang/ClassLoader;)V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->mCheckedNotes:Ljava/util/LinkedHashMap;

    if-nez p1, :cond_4

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->mCheckedNotes:Ljava/util/LinkedHashMap;

    :cond_4
    return-void
.end method

.method private loadSaveExportItemInfo(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "key_saving_type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->mSaveExportType:I

    const-string v0, "key_saving_item_list"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->mSaveExportNoteList:Ljava/util/ArrayList;

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->mSaveExportNoteList:Ljava/util/ArrayList;

    :cond_0
    return-void
.end method

.method private saveCheckedDimedNotes(Landroid/os/Bundle;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->mCheckedDimedNotes:Ljava/util/HashMap;

    const-string v1, "key_checked_dim_list"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-void
.end method

.method private saveCheckedFolders(Landroid/os/Bundle;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->mCheckedFolders:Ljava/util/HashMap;

    const-string v1, "key_checked_sub_folder_list"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-void
.end method

.method private saveCheckedNotes(Ljava/io/File;)V
    .locals 3

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->mCheckedNotes:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "saved_instance_check_notes_list"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    const-string v2, "NotesModel"

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "saveCheckedNotes# file is not successfully deleted"

    invoke-static {v2, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :try_start_0
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "saveCheckedNotes# the named file already exists"

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1, v1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_3
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSaveInstanceState# failed to save paragraph list into file "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private saveSaveExportItemInfo(Landroid/os/Bundle;)V
    .locals 2

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->mSaveExportType:I

    const-string v1, "key_saving_type"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->mSaveExportNoteList:Ljava/util/ArrayList;

    const-string v1, "key_saving_item_list"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method


# virtual methods
.method public addCheckedDimedNote(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->mCheckedDimedNotes:Ljava/util/HashMap;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addCheckedFolder(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->mCheckedFolders:Ljava/util/HashMap;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public addCheckedNote(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;)V
    .locals 5

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getUuid()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->mCheckedNotes:Ljava/util/LinkedHashMap;

    new-instance v2, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo$CheckInfoBuilder;

    invoke-direct {v2, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo$CheckInfoBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getCategoryUuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo$CheckInfoBuilder;->setFolderUuid(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo$CheckInfoBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo$CheckInfoBuilder;->setFilePath(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo$CheckInfoBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo$CheckInfoBuilder;->setTitle(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo$CheckInfoBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->isSdoc()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo$CheckInfoBuilder;->setIsSdoc(Z)Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo$CheckInfoBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getIsFavorite()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v2, v4}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo$CheckInfoBuilder;->setIsFavorite(Z)Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo$CheckInfoBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getCorrupted()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo$CheckInfoBuilder;->setCorrupted(I)Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo$CheckInfoBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getIsLock()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo$CheckInfoBuilder;->setLockType(I)Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo$CheckInfoBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getCreatedAt()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo$CheckInfoBuilder;->setCreatedTime(J)Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo$CheckInfoBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getLastModifiedAt()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo$CheckInfoBuilder;->setModifiedTime(J)Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo$CheckInfoBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getPageMode()I

    move-result p1

    invoke-virtual {v2, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo$CheckInfoBuilder;->setPageMode(I)Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo$CheckInfoBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo$CheckInfoBuilder;->build()Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public clearCheckedDimedNotes()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->mCheckedDimedNotes:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public clearCheckedFolders()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->mCheckedFolders:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public clearCheckedNotes()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->mCheckedNotes:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    return-void
.end method

.method public clearSaveExportNoteList()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->mSaveExportNoteList:Ljava/util/ArrayList;

    return-void
.end method

.method public getCheckNotesCountInfo()Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckNotesCountInfo;
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckNotesCountInfo;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckNotesCountInfo;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->mCheckedNotes:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckNotesCountInfo;->getCheckNotesCountInfo(Ljava/util/HashMap;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckNotesCountInfo;

    move-result-object v0

    return-object v0
.end method

.method public getCheckedDataCount()I
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->getCheckedNotesCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->getCheckedFoldersCount()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getCheckedDimedNotesCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->mCheckedDimedNotes:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public getCheckedDimedNotesInFolderCount()I
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->mCheckedDimedNotes:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->mCheckedNotes:Ljava/util/LinkedHashMap;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public getCheckedFoldersCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->mCheckedFolders:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public getCheckedFoldersUUID()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->mCheckedFolders:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getCheckedNotesCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->mCheckedNotes:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    return v0
.end method

.method public getCheckedNotesEntrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->mCheckedNotes:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getCheckedNotesUUID()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->mCheckedNotes:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getCheckedNotesUUIDForWidgetList()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->mCheckedNotes:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->mCheckedDimedNotes:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->mCheckedNotes:Ljava/util/LinkedHashMap;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getDragAndDropUuid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->mDragAndDropUuid:Ljava/lang/String;

    return-object v0
.end method

.method public getExportPdfType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->mExportPdfType:I

    return v0
.end method

.method public getLastDisplay()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->mLastDisplay:I

    return v0
.end method

.method public getLastOpenedSDocXDataChanged()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->mLastOpenedSDocXDataChanged:Z

    return v0
.end method

.method public getLastOpenedSDocXUuid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->mLastOpenedSDocXUuid:Ljava/lang/String;

    return-object v0
.end method

.method public getLongPressFlag()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->mItemLongPressed:Z

    return v0
.end method

.method public getNonCorruptedNotesUuid()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->getCheckedNotesUUID()Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->mCheckedNotes:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo;->getCorrupted()I

    move-result v3

    invoke-static {v3}, Lcom/samsung/android/support/senl/nt/app/common/util/NotesUtils;->isWarning(I)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public getRequestCodeForOtherApp()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->mRequestCodeForOtherApp:I

    return v0
.end method

.method public getSaveExportNoteList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->mSaveExportNoteList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    return-object v0
.end method

.method public getSaveExportType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->mSaveExportType:I

    return v0
.end method

.method public getSharableCheckedNoteMap()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/util/DeviceUtils;->isSupportedFileProvider()Z

    move-result v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->mCheckedNotes:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo;

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo;->isLock()Z

    move-result v4

    if-eqz v0, :cond_0

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo;

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo;->getLockType()I

    move-result v4

    const/4 v5, 0x5

    if-eq v4, v5, :cond_1

    goto :goto_0

    :cond_0
    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo;

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public getSharableCheckedOldNotes()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/util/DeviceUtils;->isSupportedFileProvider()Z

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->mCheckedNotes:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo;->isLock()Z

    move-result v4

    if-eqz v0, :cond_0

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo;->getLockType()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    goto :goto_0

    :cond_0
    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public getToolType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->mToolType:I

    return v0
.end method

.method public isScrolling()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->mIsScrolling:Z

    return v0
.end method

.method public isSubHeaderChecked(Ljava/util/Map;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->isUuidInCheckedNotes(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public isUUIDInConvertingState(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->mConvertingStateHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isUnlockConverting(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->mConvertingStateHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->mConvertingStateHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isUuidInCheckedData(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->isUuidInCheckedNotes(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->isUuidInCheckedFolder(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public isUuidInCheckedDimedNotes(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->mCheckedDimedNotes:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isUuidInCheckedFolder(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->mCheckedFolders:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isUuidInCheckedNotes(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->mCheckedNotes:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public moveFolder(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel$MovingFolder;
    .locals 4

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel$MovingFolder;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel$MovingFolder;-><init>()V

    const/4 v1, 0x0

    iput v1, v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel$MovingFolder;->moveCount:I

    iput v1, v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel$MovingFolder;->duplCount:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel$MovingFolder;->sdocUuidList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->mCheckedNotes:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo;->getFolderUuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget v3, v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel$MovingFolder;->moveCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel$MovingFolder;->moveCount:I

    iget-object v3, v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel$MovingFolder;->sdocUuidList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget v2, v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel$MovingFolder;->duplCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel$MovingFolder;->duplCount:I

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->loadCheckedNotes(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->loadCheckedDimedNotes(Landroid/os/Bundle;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->loadCheckedFolders(Landroid/os/Bundle;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->loadSaveExportItemInfo(Landroid/os/Bundle;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->saveCheckedNotes(Ljava/io/File;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->saveCheckedDimedNotes(Landroid/os/Bundle;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->saveCheckedFolders(Landroid/os/Bundle;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->saveSaveExportItemInfo(Landroid/os/Bundle;)V

    return-void
.end method

.method public postNotifyDataSetChanged()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->mPostNotifyDataSetChanged:Z

    return-void
.end method

.method public removeCheckedFolder(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->mCheckedFolders:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public removeCheckedNote(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->mCheckedNotes:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public removeUnlockConvertingState(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->mConvertingStateHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public selectAll(ZLjava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;",
            ">;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_5

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;

    iget v0, p2, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;->type:I

    const/16 v1, 0x20

    if-ne v0, v1, :cond_2

    iget-object p2, p2, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;->notes:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;

    invoke-virtual {p0, p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->addCheckedNote(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;)V

    goto :goto_0

    :cond_2
    const/16 v1, 0x10

    if-gt v0, v1, :cond_1

    iget-object p2, p2, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;->folders:[Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    array-length v0, p2

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    aget-object v2, p2, v1

    if-eqz v2, :cond_4

    sget-object v3, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$ScreenOffMemo;->UUID:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->addCheckedFolder(Ljava/lang/String;)V

    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->clearCheckedNotes()V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->clearCheckedFolders()V

    :cond_6
    return-void
.end method

.method public selectAllForListWidget(ZLjava/util/List;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;",
            ">;I)V"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "selectAllForListWidget maxListWidgetItem: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotesModel"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;

    if-lez p3, :cond_4

    if-ne v0, p3, :cond_2

    goto :goto_1

    :cond_2
    iget v1, p2, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;->type:I

    const/16 v2, 0x20

    if-ne v1, v2, :cond_1

    iget-object v1, p2, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;->notes:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->isUuidInCheckedNotes(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    iget-object p2, p2, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;->notes:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;

    invoke-virtual {p0, p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->addCheckedNote(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->clearCheckedNotes()V

    :cond_4
    :goto_1
    return-void
.end method

.method public selectAllNotes(ZLjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;

    iget v0, p2, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;->type:I

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    iget-object p2, p2, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;->notes:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;

    invoke-virtual {p0, p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->addCheckedNote(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->clearCheckedNotes()V

    :cond_3
    return-void
.end method

.method public selectAllWithSubHeader(ZLjava/util/List;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;",
            ">;Z)V"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x0

    move v1, v0

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;

    iget v3, v2, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;->type:I

    const/16 v4, 0x40

    if-ne v3, v4, :cond_7

    const-wide/16 v4, -0xf

    const-wide/16 v6, -0x10

    if-eqz v1, :cond_4

    if-eqz p3, :cond_2

    iget-wide v8, v2, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;->id:J

    cmp-long v4, v8, v4

    if-eqz v4, :cond_3

    :cond_2
    if-nez p3, :cond_7

    iget-wide v4, v2, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;->id:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_7

    :cond_3
    move v1, v0

    goto :goto_1

    :cond_4
    if-eqz p3, :cond_5

    iget-wide v8, v2, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;->id:J

    cmp-long v6, v8, v6

    if-eqz v6, :cond_6

    :cond_5
    if-nez p3, :cond_7

    iget-wide v6, v2, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;->id:J

    cmp-long v4, v6, v4

    if-nez v4, :cond_7

    :cond_6
    const/4 v1, 0x1

    :cond_7
    :goto_1
    if-nez v1, :cond_8

    goto :goto_0

    :cond_8
    const/16 v4, 0x20

    if-ne v3, v4, :cond_1

    iget-object v2, v2, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;->notes:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;

    if-eqz p1, :cond_9

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->addCheckedNote(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;)V

    goto :goto_0

    :cond_9
    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->removeCheckedNote(Ljava/lang/String;)V

    goto :goto_0

    :cond_a
    return-void
.end method

.method public setDragAndDropUuid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->mDragAndDropUuid:Ljava/lang/String;

    return-void
.end method

.method public setExportPdfType(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->mExportPdfType:I

    return-void
.end method

.method public setIsScrolling(Z)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->mPostNotifyDataSetChanged:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->mIsScrolling:Z

    if-eqz v1, :cond_1

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->mPostNotifyDataSetChanged:Z

    :cond_1
    return v1
.end method

.method public setLastDisplay(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->mLastDisplay:I

    return-void
.end method

.method public setLastOpenedSDocXDataChanged(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->mLastOpenedSDocXDataChanged:Z

    return-void
.end method

.method public setLastOpenedSDocXUuid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->mLastOpenedSDocXUuid:Ljava/lang/String;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->mLastOpenedSDocXDataChanged:Z

    :cond_0
    return-void
.end method

.method public setLongPressFlag(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->mItemLongPressed:Z

    return-void
.end method

.method public setRequestCodeForOtherApp(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->mRequestCodeForOtherApp:I

    return-void
.end method

.method public setSaveExportNoteList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->mSaveExportNoteList:Ljava/util/ArrayList;

    return-void
.end method

.method public setSaveExportType(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->mSaveExportType:I

    return-void
.end method

.method public setSavedCheckedNotes(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->getInstance()Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->getMainListRepository()Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;->get(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getIsDeleted()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->isSdoc()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->addCheckedNote(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;)V

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public setToolType(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->mToolType:I

    return-void
.end method

.method public setUnlockConvertingState(Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->mConvertingStateHashMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public toggleCheckedFolder(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->isUuidInCheckedFolder(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->removeCheckedFolder(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->addCheckedFolder(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public toggleCheckedFolder(ZLjava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->isUuidInCheckedFolder(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->addCheckedFolder(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {p0, p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->isUuidInCheckedFolder(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0, p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->removeCheckedFolder(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public toggleCheckedNote(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;)V
    .locals 2

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->isUuidInCheckedNotes(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->removeCheckedNote(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->addCheckedNote(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;)V

    :goto_0
    return-void
.end method

.method public toggleCheckedNote(ZLcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;)V
    .locals 2

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getUuid()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->isUuidInCheckedNotes(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->addCheckedNote(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->isUuidInCheckedNotes(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->removeCheckedNote(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
