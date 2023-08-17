.class public Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo$CheckInfoBuilder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final corrupted:I

.field private final createdTime:J

.field private final docUuid:Ljava/lang/String;

.field private final filePath:Ljava/lang/String;

.field private final folderUuid:Ljava/lang/String;

.field private final isFavorite:Z

.field private final isLock:Z

.field private final isSdoc:Z

.field private final lockType:I

.field private final modifiedTime:J

.field private final pageMode:I

.field private final title:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo;->docUuid:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo;->folderUuid:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo;->filePath:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo;->title:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo;->isSdoc:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo;->isFavorite:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo;->corrupted:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo;->lockType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo;->createdTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo;->modifiedTime:J

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/common/util/NotesUtils;->isLock(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo;->isLock:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo;->pageMode:I

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo$CheckInfoBuilder;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo$CheckInfoBuilder;->c(Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo$CheckInfoBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo;->docUuid:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo$CheckInfoBuilder;->e(Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo$CheckInfoBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo;->folderUuid:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo$CheckInfoBuilder;->d(Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo$CheckInfoBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo;->filePath:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo$CheckInfoBuilder;->k(Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo$CheckInfoBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo;->title:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo$CheckInfoBuilder;->g(Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo$CheckInfoBuilder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo;->isSdoc:Z

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo$CheckInfoBuilder;->f(Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo$CheckInfoBuilder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo;->isFavorite:Z

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo$CheckInfoBuilder;->a(Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo$CheckInfoBuilder;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo;->corrupted:I

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo$CheckInfoBuilder;->h(Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo$CheckInfoBuilder;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo;->lockType:I

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo$CheckInfoBuilder;->b(Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo$CheckInfoBuilder;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo;->createdTime:J

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo$CheckInfoBuilder;->i(Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo$CheckInfoBuilder;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo;->modifiedTime:J

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/common/util/NotesUtils;->isLock(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo;->isLock:Z

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo$CheckInfoBuilder;->j(Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo$CheckInfoBuilder;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo;->pageMode:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCorrupted()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo;->corrupted:I

    return v0
.end method

.method public getCreatedTime()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo;->createdTime:J

    return-wide v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method public getFolderUuid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo;->folderUuid:Ljava/lang/String;

    return-object v0
.end method

.method public getLockType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo;->lockType:I

    return v0
.end method

.method public getModifiedTime()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo;->modifiedTime:J

    return-wide v0
.end method

.method public getPageMode()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo;->pageMode:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo;->docUuid:Ljava/lang/String;

    return-object v0
.end method

.method public isFavorite()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo;->isFavorite:Z

    return v0
.end method

.method public isLock()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo;->isLock:Z

    return v0
.end method

.method public isSdoc()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo;->isSdoc:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo;->docUuid:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo;->folderUuid:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo;->filePath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo;->title:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo;->isSdoc:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo;->isFavorite:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo;->corrupted:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo;->lockType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo;->createdTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo;->modifiedTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo;->pageMode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
