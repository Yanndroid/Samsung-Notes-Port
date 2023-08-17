.class public Lcom/samsung/android/support/senl/nt/composer/main/base/util/StorageChecker;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ERR_NONE:I = 0x0

.field public static final ERR_NOT_ENOUGH_MEMORY:I = 0x1

.field public static final ERR_OVER_SIZE:I = 0x2

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mMaximumDocumentSize:J

.field private final mMaximumDocumentSizeMB:J

.field private mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "StorageChecker"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/util/StorageChecker;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0x40000000

    iput-wide v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/util/StorageChecker;->mMaximumDocumentSize:J

    const-wide/16 v0, 0x400

    iput-wide v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/util/StorageChecker;->mMaximumDocumentSizeMB:J

    return-void
.end method

.method public constructor <init>(I)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/util/StorageChecker;->mMaximumDocumentSizeMB:J

    const-wide/32 v2, 0x100000

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/util/StorageChecker;->mMaximumDocumentSize:J

    return-void
.end method

.method private getNoteSize()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/util/StorageChecker;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getBoundFilesSize()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isAvailableNoteSize()Z
    .locals 5

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/StorageChecker;->getNoteSize()I

    move-result v0

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/util/StorageChecker;->mMaximumDocumentSize:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    sget-object v2, Lcom/samsung/android/support/senl/nt/composer/main/base/util/StorageChecker;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isAvailableNoteSize# "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/util/StorageChecker;->mMaximumDocumentSize:J

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static showErrorDialog(Landroid/content/Context;I)Z
    .locals 2

    const-wide/16 v0, 0x400

    invoke-static {p0, p1, v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/StorageChecker;->showErrorDialog(Landroid/content/Context;IJ)Z

    move-result p0

    return p0
.end method

.method public static showErrorDialog(Landroid/content/Context;IJ)Z
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/util/StorageChecker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showErrorDialog# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/samsung/android/support/senl/nt/base/winset/util/DialogUtils;->showNotEnoughStorageDialog(Landroid/content/Context;Ljava/lang/Runnable;)Landroidx/appcompat/app/AlertDialog;

    return v1

    :cond_0
    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_1

    invoke-static {p0, p2, p3}, Lcom/samsung/android/support/senl/nt/base/winset/util/DialogUtils;->showOverSizeItemsDialog(Landroid/content/Context;J)Landroidx/appcompat/app/AlertDialog;

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public checkAvailableStateToAdd(Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/StorageChecker;->getNoteSize()I

    move-result v0

    int-to-long v0, v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    new-instance v5, Ljava/io/File;

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v5

    add-long/2addr v0, v5

    iget-wide v5, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/util/StorageChecker;->mMaximumDocumentSize:J

    cmp-long v5, v0, v5

    if-lez v5, :cond_0

    sget-object v5, Lcom/samsung/android/support/senl/nt/composer/main/base/util/StorageChecker;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkAvailableStateToAdd# "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " size: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ge v4, v2, :cond_2

    invoke-interface {p1, v3, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    :cond_2
    return-object p1
.end method

.method public checkAvailableStateToAdd(J)Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/StorageChecker;->getNoteSize()I

    move-result v0

    int-to-long v0, v0

    add-long/2addr v0, p1

    iget-wide p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/util/StorageChecker;->mMaximumDocumentSize:J

    cmp-long p1, v0, p1

    if-lez p1, :cond_0

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/util/StorageChecker;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkAvailableStateToAdd# "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public checkAvailableStateToAdd(Ljava/lang/String;)Z
    .locals 4

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/StorageChecker;->getNoteSize()I

    move-result v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    int-to-long v2, v0

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v0

    add-long/2addr v2, v0

    long-to-int p1, v2

    int-to-long v0, p1

    iget-wide v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/util/StorageChecker;->mMaximumDocumentSize:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/util/StorageChecker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkAvailableStateToAdd# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public checkAvailableStateToEdit(ZZ)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/StorageChecker;->checkAvailableStateToEdit(ZZZ)I

    move-result p1

    return p1
.end method

.method public checkAvailableStateToEdit(ZZZ)I
    .locals 2

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/util/StorageUtils;->isAvailableMinimumMemory()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/util/StorageChecker;->TAG:Ljava/lang/String;

    const-string v1, "checkAvailableStateToEdit# not enough memory"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p2, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/StorageChecker;->isAvailableNoteSize()Z

    move-result p2

    if-nez p2, :cond_1

    or-int/lit8 p1, p1, 0x2

    sget-object p2, Lcom/samsung/android/support/senl/nt/composer/main/base/util/StorageChecker;->TAG:Ljava/lang/String;

    const-string v0, "checkAvailableStateToEdit# over size"

    invoke-static {p2, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz p3, :cond_2

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/util/StorageChecker;->mContext:Landroid/content/Context;

    if-eqz p2, :cond_2

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/StorageChecker;->showErrorDialog(Landroid/content/Context;I)Z

    :cond_2
    return p1
.end method

.method public getMaximumDocumentSize()J
    .locals 4

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/StorageChecker;->getNoteSize()I

    move-result v0

    int-to-long v0, v0

    const-wide/32 v2, 0x40000000

    sub-long/2addr v2, v0

    return-wide v2
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/util/StorageChecker;->mContext:Landroid/content/Context;

    return-void
.end method

.method public setNote(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/util/StorageChecker;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    return-void
.end method
