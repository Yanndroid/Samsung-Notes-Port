.class Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo$CheckInfoBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CheckInfoBuilder"
.end annotation


# instance fields
.field private corrupted:I

.field private createdTime:J

.field private final docUuid:Ljava/lang/String;

.field private filePath:Ljava/lang/String;

.field private folderUuid:Ljava/lang/String;

.field private isFavorite:Z

.field private isSdoc:Z

.field private lockType:I

.field private modifiedTime:J

.field private pageMode:I

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo$CheckInfoBuilder;->docUuid:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo$CheckInfoBuilder;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo$CheckInfoBuilder;->corrupted:I

    return p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo$CheckInfoBuilder;)J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo$CheckInfoBuilder;->createdTime:J

    return-wide v0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo$CheckInfoBuilder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo$CheckInfoBuilder;->docUuid:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo$CheckInfoBuilder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo$CheckInfoBuilder;->filePath:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo$CheckInfoBuilder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo$CheckInfoBuilder;->folderUuid:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo$CheckInfoBuilder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo$CheckInfoBuilder;->isFavorite:Z

    return p0
.end method

.method public static bridge synthetic g(Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo$CheckInfoBuilder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo$CheckInfoBuilder;->isSdoc:Z

    return p0
.end method

.method public static bridge synthetic h(Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo$CheckInfoBuilder;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo$CheckInfoBuilder;->lockType:I

    return p0
.end method

.method public static bridge synthetic i(Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo$CheckInfoBuilder;)J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo$CheckInfoBuilder;->modifiedTime:J

    return-wide v0
.end method

.method public static bridge synthetic j(Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo$CheckInfoBuilder;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo$CheckInfoBuilder;->pageMode:I

    return p0
.end method

.method public static bridge synthetic k(Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo$CheckInfoBuilder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo$CheckInfoBuilder;->title:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo;
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo$CheckInfoBuilder;)V

    return-object v0
.end method

.method public setCorrupted(I)Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo$CheckInfoBuilder;
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo$CheckInfoBuilder;->corrupted:I

    return-object p0
.end method

.method public setCreatedTime(J)Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo$CheckInfoBuilder;
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo$CheckInfoBuilder;->createdTime:J

    return-object p0
.end method

.method public setFilePath(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo$CheckInfoBuilder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo$CheckInfoBuilder;->filePath:Ljava/lang/String;

    return-object p0
.end method

.method public setFolderUuid(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo$CheckInfoBuilder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo$CheckInfoBuilder;->folderUuid:Ljava/lang/String;

    return-object p0
.end method

.method public setIsFavorite(Z)Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo$CheckInfoBuilder;
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo$CheckInfoBuilder;->isFavorite:Z

    return-object p0
.end method

.method public setIsSdoc(Z)Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo$CheckInfoBuilder;
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo$CheckInfoBuilder;->isSdoc:Z

    return-object p0
.end method

.method public setLockType(I)Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo$CheckInfoBuilder;
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo$CheckInfoBuilder;->lockType:I

    return-object p0
.end method

.method public setModifiedTime(J)Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo$CheckInfoBuilder;
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo$CheckInfoBuilder;->modifiedTime:J

    return-object p0
.end method

.method public setPageMode(I)Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo$CheckInfoBuilder;
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo$CheckInfoBuilder;->pageMode:I

    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo$CheckInfoBuilder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo$CheckInfoBuilder;->title:Ljava/lang/String;

    return-object p0
.end method
