.class public Lcom/samsung/android/support/senl/document/SDoc;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final CACHE_STATE_EDIT:I = 0x1

.field private static final CACHE_STATE_FILE:Ljava/lang/String; = "state.dat"

.field private static final CACHE_STATE_NONE:I = 0x0

.field private static final CACHE_STATE_OPEN:I = 0x2

.field private static final COMPONENT_COUNT:I = 0x5

.field private static final SDOC_BACKUP_EXTENSION:Ljava/lang/String; = ".bak"

.field private static final SPenSDK30:Ljava/lang/String; = "SPenSDK30"

.field private static final TAG:Ljava/lang/String; = "SDoc"


# instance fields
.field private mComponentArray:[Lcom/samsung/android/support/senl/document/component/SDocComponent;

.field private mExtraZipFileList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mFilePath:Ljava/lang/String;

.field private mIsFirstSave:Z

.field private mLocker:Lcom/samsung/android/support/senl/document/SDocLocker;

.field private mRestoreUnsavedData:Z

.field private mRootDocDirPath:Ljava/lang/String;

.field private mSDocContent:Lcom/samsung/android/support/senl/document/component/SDocContent;

.field private mSDocDocument:Lcom/samsung/android/support/senl/document/component/SDocDocument;

.field private mSDocEndTag:Lcom/samsung/android/support/senl/document/component/SDocEndTag;

.field private mSDocFileManager:Lcom/samsung/android/support/senl/document/component/SDocFileManager;

.field private mSDocMode:I

.field private mSDocSearchData:Lcom/samsung/android/support/senl/document/component/SDocSearchData;

.field private mZipFileList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/SDoc;->mRootDocDirPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/SDoc;->mFilePath:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/SDoc;->mSDocContent:Lcom/samsung/android/support/senl/document/component/SDocContent;

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/SDoc;->mSDocDocument:Lcom/samsung/android/support/senl/document/component/SDocDocument;

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/SDoc;->mSDocEndTag:Lcom/samsung/android/support/senl/document/component/SDocEndTag;

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/SDoc;->mSDocFileManager:Lcom/samsung/android/support/senl/document/component/SDocFileManager;

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/SDoc;->mSDocSearchData:Lcom/samsung/android/support/senl/document/component/SDocSearchData;

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/SDoc;->mComponentArray:[Lcom/samsung/android/support/senl/document/component/SDocComponent;

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/SDoc;->mZipFileList:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/SDoc;->mExtraZipFileList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/support/senl/document/SDoc;->mIsFirstSave:Z

    iput-boolean v1, p0, Lcom/samsung/android/support/senl/document/SDoc;->mRestoreUnsavedData:Z

    iput v1, p0, Lcom/samsung/android/support/senl/document/SDoc;->mSDocMode:I

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/SDoc;->mLocker:Lcom/samsung/android/support/senl/document/SDocLocker;

    const-string v1, "SDoc"

    const-string v2, "SDoc(1) - start!"

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/support/senl/document/SDoc;->mIsFirstSave:Z

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/senl/document/SDoc;->construct(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/document/SDoc;->setCacheState(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/support/senl/document/SDoc;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZI)V

    const-string p1, "SDoc"

    const-string p2, "SDoc(3) end!"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/support/senl/document/SDoc;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZI)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SDoc(5) end!, fileFullPath = ["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/samsung/android/support/senl/document/util/SDocUtil;->logPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "], ["

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, "], mode = ["

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SDoc"

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/support/senl/document/SDoc;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZI)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SDoc(4) end!, fileFullPath = ["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/samsung/android/support/senl/document/util/SDocUtil;->logPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "], ["

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, "], restoreUnsavedData = ["

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SDoc"

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/SDoc;->mRootDocDirPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/SDoc;->mFilePath:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/SDoc;->mSDocContent:Lcom/samsung/android/support/senl/document/component/SDocContent;

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/SDoc;->mSDocDocument:Lcom/samsung/android/support/senl/document/component/SDocDocument;

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/SDoc;->mSDocEndTag:Lcom/samsung/android/support/senl/document/component/SDocEndTag;

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/SDoc;->mSDocFileManager:Lcom/samsung/android/support/senl/document/component/SDocFileManager;

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/SDoc;->mSDocSearchData:Lcom/samsung/android/support/senl/document/component/SDocSearchData;

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/SDoc;->mComponentArray:[Lcom/samsung/android/support/senl/document/component/SDocComponent;

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/SDoc;->mZipFileList:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/SDoc;->mExtraZipFileList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/support/senl/document/SDoc;->mIsFirstSave:Z

    iput-boolean v1, p0, Lcom/samsung/android/support/senl/document/SDoc;->mRestoreUnsavedData:Z

    iput v1, p0, Lcom/samsung/android/support/senl/document/SDoc;->mSDocMode:I

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/SDoc;->mLocker:Lcom/samsung/android/support/senl/document/SDocLocker;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SDoc(0) start!, fileFullPath = ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/samsung/android/support/senl/document/util/SDocUtil;->logPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "], ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    if-eqz p3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "], restoreUnsavedData = ["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "] mode = ["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "SDoc"

    invoke-static {v4, v0}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_5

    if-ltz p5, :cond_4

    iput p5, p0, Lcom/samsung/android/support/senl/document/SDoc;->mSDocMode:I

    new-instance p5, Ljava/io/File;

    invoke-direct {p5, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p5}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SDoc file is not exist. ["

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/samsung/android/support/senl/document/util/SDocUtil;->logPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".bak"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-ne v6, v2, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Find backup file. ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/samsung/android/support/senl/document/util/SDocUtil;->logPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, p5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v5

    if-nez v5, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fail to restore sdoc file. Force open. ["

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/samsung/android/support/senl/document/util/SDocUtil;->logPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object p2, v0

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Success to restore sdoc file. ["

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/samsung/android/support/senl/document/util/SDocUtil;->logPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/document/SDoc;->construct(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p5}, Ljava/io/File;->exists()Z

    move-result p5

    if-nez p5, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Make new file. ["

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/samsung/android/support/senl/document/util/SDocUtil;->logPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/samsung/android/support/senl/document/SDoc;->mIsFirstSave:Z

    goto :goto_2

    :cond_3
    iput-boolean v1, p0, Lcom/samsung/android/support/senl/document/SDoc;->mIsFirstSave:Z

    iput-boolean p4, p0, Lcom/samsung/android/support/senl/document/SDoc;->mRestoreUnsavedData:Z

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/document/SDoc;->load(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    iput-object p2, p0, Lcom/samsung/android/support/senl/document/SDoc;->mFilePath:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/document/SDoc;->setCacheState(I)V

    return-void

    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string p2, "SDoc0() - mode is invalid. mode must be positive number."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/io/IOException;

    const-string p2, "SDoc0() - fileFullPath is null"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private checkCacheDirectory(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkCacheDirectory() - start, fileFullPath = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/samsung/android/support/senl/document/util/SDocUtil;->logPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SDoc"

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/samsung/android/support/senl/document/SDocFile;->getRootCacheDirectoryPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/.nomedia"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "checkCacheDirectory() - cannot create nomedia file."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "checkCacheDirectory() - cannot create root cache directory."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    const-string v0, "/"

    if-nez p2, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {p2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/samsung/android/support/senl/document/SDocFile;->convertPathToHashedName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    iput-object p1, p0, Lcom/samsung/android/support/senl/document/SDoc;->mRootDocDirPath:Ljava/lang/String;

    iget p1, p0, Lcom/samsung/android/support/senl/document/SDoc;->mSDocMode:I

    if-lez p1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/samsung/android/support/senl/document/SDoc;->mRootDocDirPath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/samsung/android/support/senl/document/SDoc;->mSDocMode:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/document/SDoc;->mRootDocDirPath:Ljava/lang/String;

    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "checkCacheDirectory() - cacheDirPath = ["

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/samsung/android/support/senl/document/SDoc;->mRootDocDirPath:Ljava/lang/String;

    invoke-static {p2}, Lcom/samsung/android/support/senl/document/util/SDocUtil;->logPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/io/File;

    iget-object p2, p0, Lcom/samsung/android/support/senl/document/SDoc;->mRootDocDirPath:Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_5

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string p2, "checkCacheDirectory() - cannot create current document cache directory."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_2
    return-void

    :cond_6
    new-instance p1, Ljava/io/IOException;

    const-string p2, "checkCacheDirectory() - rootCacheDirPath is invalid. [null]"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private construct(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/document/SDoc;->checkCacheDirectory(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p2, 0x5

    new-array p2, p2, [Lcom/samsung/android/support/senl/document/component/SDocComponent;

    iput-object p2, p0, Lcom/samsung/android/support/senl/document/SDoc;->mComponentArray:[Lcom/samsung/android/support/senl/document/component/SDocComponent;

    new-instance p2, Lcom/samsung/android/support/senl/document/component/SDocContent;

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/SDoc;->mRootDocDirPath:Ljava/lang/String;

    invoke-direct {p2, v0}, Lcom/samsung/android/support/senl/document/component/SDocContent;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/samsung/android/support/senl/document/SDoc;->mSDocContent:Lcom/samsung/android/support/senl/document/component/SDocContent;

    new-instance p2, Lcom/samsung/android/support/senl/document/component/SDocDocument;

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/SDoc;->mRootDocDirPath:Ljava/lang/String;

    invoke-direct {p2, v0}, Lcom/samsung/android/support/senl/document/component/SDocDocument;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/samsung/android/support/senl/document/SDoc;->mSDocDocument:Lcom/samsung/android/support/senl/document/component/SDocDocument;

    new-instance p2, Lcom/samsung/android/support/senl/document/component/SDocEndTag;

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/SDoc;->mRootDocDirPath:Ljava/lang/String;

    invoke-direct {p2, v0}, Lcom/samsung/android/support/senl/document/component/SDocEndTag;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/samsung/android/support/senl/document/SDoc;->mSDocEndTag:Lcom/samsung/android/support/senl/document/component/SDocEndTag;

    new-instance p2, Lcom/samsung/android/support/senl/document/component/SDocFileManager;

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/SDoc;->mRootDocDirPath:Ljava/lang/String;

    invoke-direct {p2, v0}, Lcom/samsung/android/support/senl/document/component/SDocFileManager;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/samsung/android/support/senl/document/SDoc;->mSDocFileManager:Lcom/samsung/android/support/senl/document/component/SDocFileManager;

    new-instance p2, Lcom/samsung/android/support/senl/document/component/SDocSearchData;

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/SDoc;->mRootDocDirPath:Ljava/lang/String;

    invoke-direct {p2, v0}, Lcom/samsung/android/support/senl/document/component/SDocSearchData;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/samsung/android/support/senl/document/SDoc;->mSDocSearchData:Lcom/samsung/android/support/senl/document/component/SDocSearchData;

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/SDoc;->mComponentArray:[Lcom/samsung/android/support/senl/document/component/SDocComponent;

    iget-object v1, p0, Lcom/samsung/android/support/senl/document/SDoc;->mSDocContent:Lcom/samsung/android/support/senl/document/component/SDocContent;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/support/senl/document/SDoc;->mSDocDocument:Lcom/samsung/android/support/senl/document/component/SDocDocument;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/support/senl/document/SDoc;->mSDocFileManager:Lcom/samsung/android/support/senl/document/component/SDocFileManager;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/4 v1, 0x3

    aput-object p2, v0, v1

    iget-object p2, p0, Lcom/samsung/android/support/senl/document/SDoc;->mSDocEndTag:Lcom/samsung/android/support/senl/document/component/SDocEndTag;

    const/4 v1, 0x4

    aput-object p2, v0, v1

    new-instance p2, Lcom/samsung/android/support/senl/document/SDocLocker;

    invoke-direct {p2, p1}, Lcom/samsung/android/support/senl/document/SDocLocker;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/samsung/android/support/senl/document/SDoc;->mLocker:Lcom/samsung/android/support/senl/document/SDocLocker;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/document/SDoc;->mZipFileList:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/document/SDoc;->mExtraZipFileList:Ljava/util/ArrayList;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/samsung/android/support/senl/document/SDoc;->mRootDocDirPath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "SPenSDK30"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/io/File;->mkdir()Z

    move-result p2

    if-nez p2, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Fail to make spen sdk directory. ["

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/support/senl/document/util/SDocUtil;->logPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SDoc"

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static discardDirectory(Ljava/lang/String;J)V
    .locals 8

    const-string v0, "SDoc"

    if-nez p0, :cond_0

    const-string p0, "discardDirectory() - dirPath can not be null."

    :goto_0
    invoke-static {v0, p0}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_2

    const-string p0, "discardDirectory() - child list is null."

    goto :goto_0

    :cond_2
    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_6

    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    invoke-static {p0, p1, p2}, Lcom/samsung/android/support/senl/document/SDoc;->discardDirectory(Ljava/lang/String;J)V

    :cond_3
    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    cmp-long v5, v5, p1

    if-lez v5, :cond_5

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v5

    const-string v6, "]"

    if-nez v5, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "discardDirectory() - fail to delete file. ["

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/android/support/senl/document/util/SDocUtil;->logPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "discardDirectory() - ["

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/support/senl/document/util/SDocUtil;->logPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    return-void

    :cond_7
    :goto_2
    const-string p0, "discardDirectory() - dirPath is invalid."

    goto/16 :goto_0
.end method

.method private load(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "load() start! fileFullPath = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/samsung/android/support/senl/document/util/SDocUtil;->logPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SDoc"

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_e

    iget-object v3, p0, Lcom/samsung/android/support/senl/document/SDoc;->mSDocEndTag:Lcom/samsung/android/support/senl/document/component/SDocEndTag;

    const/4 v4, 0x1

    invoke-virtual {v3, p2, v4}, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->parse(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/samsung/android/support/senl/document/util/FileUtil;->getAvailableInternalMemorySize()J

    move-result-wide v5

    iget-object v3, p0, Lcom/samsung/android/support/senl/document/SDoc;->mSDocEndTag:Lcom/samsung/android/support/senl/document/component/SDocEndTag;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->getUncompressedSize()J

    move-result-wide v7

    cmp-long v3, v5, v7

    if-gez v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "load() - insufficient storage state, available memory space is  = ["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/support/senl/document/util/FileUtil;->getAvailableInternalMemorySize()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v3, 0x1f400000

    invoke-static {p1, v3}, Lcom/samsung/android/support/senl/document/SDocFile;->trimCache(Landroid/content/Context;I)V

    invoke-static {}, Lcom/samsung/android/support/senl/document/util/FileUtil;->getAvailableInternalMemorySize()J

    move-result-wide v5

    iget-object p1, p0, Lcom/samsung/android/support/senl/document/SDoc;->mSDocEndTag:Lcom/samsung/android/support/senl/document/component/SDocEndTag;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->getUncompressedSize()J

    move-result-wide v7

    cmp-long p1, v5, v7

    if-ltz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/samsung/android/support/senl/document/exception/InsufficientStorageException;

    const-string p2, "load() - internal storage is insufficient to open file."

    invoke-direct {p1, p2}, Lcom/samsung/android/support/senl/document/exception/InsufficientStorageException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/document/SDoc;->mSDocEndTag:Lcom/samsung/android/support/senl/document/component/SDocEndTag;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->getDocumentType()I

    move-result p1

    if-ne p1, v4, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "load() - Locked file ["

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/support/senl/document/SDoc;->mSDocEndTag:Lcom/samsung/android/support/senl/document/component/SDocEndTag;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->getDocumentType()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "], ["

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/support/senl/document/SDoc;->mSDocEndTag:Lcom/samsung/android/support/senl/document/component/SDocEndTag;

    invoke-virtual {v5}, Lcom/samsung/android/support/senl/document/component/SDocComponent;->getCurrentFormatVersion()I

    move-result v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/support/senl/document/SDoc;->mSDocEndTag:Lcom/samsung/android/support/senl/document/component/SDocEndTag;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->isEncrypted()Z

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_2

    invoke-static {}, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->getInstance()Lcom/samsung/android/support/senl/document/delegator/AppDelegator;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->getExtraValueLockConfirmed()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Lcom/samsung/android/support/senl/document/exception/InvalidPasswordException;

    const-string p2, "load() - open locked file without confirmation"

    invoke-direct {p1, p2}, Lcom/samsung/android/support/senl/document/exception/InvalidPasswordException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/document/SDoc;->mSDocEndTag:Lcom/samsung/android/support/senl/document/component/SDocEndTag;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->isEncrypted()Z

    move-result p1

    const-string p3, "load() - fail to delete temporary file."

    const-string v3, "/"

    const/4 v5, 0x0

    if-ne p1, v4, :cond_7

    iget-object p1, p0, Lcom/samsung/android/support/senl/document/SDoc;->mLocker:Lcom/samsung/android/support/senl/document/SDocLocker;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/document/SDocLocker;->getUserCode()[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, v5

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eq v0, v4, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/samsung/android/support/senl/document/SDoc;->mRootDocDirPath:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    const-string v7, "."

    invoke-virtual {p2, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {p2, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "_"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ".tmp"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, p1}, Lcom/samsung/android/support/senl/document/util/LockUtil;->decrypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_5

    new-instance p2, Lcom/samsung/android/support/senl/document/component/SDocEndTag;

    const/4 v6, 0x0

    invoke-direct {p2, v6}, Lcom/samsung/android/support/senl/document/component/SDocEndTag;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p2, v0, v4}, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->parse(Ljava/lang/String;Z)V
    :try_end_0
    .catch Lcom/samsung/android/support/senl/document/exception/UnsupportedFileException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p2, p0, Lcom/samsung/android/support/senl/document/SDoc;->mSDocEndTag:Lcom/samsung/android/support/senl/document/component/SDocEndTag;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->removeEncryptionInfo()V

    move-object v0, p1

    move p1, v4

    goto :goto_2

    :catch_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-static {v2, p3}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    new-instance p1, Lcom/samsung/android/support/senl/document/exception/InvalidPasswordException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "load() - decrypt fail. ["

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/samsung/android/support/senl/document/SDoc;->mSDocEndTag:Lcom/samsung/android/support/senl/document/component/SDocEndTag;

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/document/component/SDocComponent;->getCurrentFormatVersion()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/samsung/android/support/senl/document/exception/InvalidPasswordException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Lcom/samsung/android/support/senl/document/exception/InvalidPasswordException;

    const-string p2, "load() - fail to unlock file"

    invoke-direct {p1, p2}, Lcom/samsung/android/support/senl/document/exception/InvalidPasswordException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Lcom/samsung/android/support/senl/document/exception/InvalidPasswordException;

    const-string p2, "load() - open locked file with no password"

    invoke-direct {p1, p2}, Lcom/samsung/android/support/senl/document/exception/InvalidPasswordException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    move p1, v5

    :goto_2
    new-instance p2, Ljava/io/File;

    iget-object v6, p0, Lcom/samsung/android/support/senl/document/SDoc;->mRootDocDirPath:Ljava/lang/String;

    invoke-direct {p2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_9

    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    move-result v6

    if-eqz v6, :cond_8

    goto :goto_3

    :cond_8
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "load() - cannot create current document cache directory. ["

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/samsung/android/support/senl/document/SDoc;->mRootDocDirPath:Ljava/lang/String;

    invoke-static {p3}, Lcom/samsung/android/support/senl/document/util/SDocUtil;->logPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    :goto_3
    iget-boolean v6, p0, Lcom/samsung/android/support/senl/document/SDoc;->mRestoreUnsavedData:Z

    if-nez v6, :cond_b

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/samsung/android/support/senl/document/SDoc;->mRootDocDirPath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "endtag.dat"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "load() - check EndTag in cache - ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/samsung/android/support/senl/document/util/SDocUtil;->logPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v3

    if-ne v3, v4, :cond_a

    const-string v3, "load() - check EndTag..."

    invoke-static {v2, v3}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/samsung/android/support/senl/document/component/SDocEndTag;

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Lcom/samsung/android/support/senl/document/component/SDocEndTag;-><init>(Ljava/lang/String;)V

    :try_start_1
    invoke-virtual {v3}, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->readFile()V

    iget-object v6, p0, Lcom/samsung/android/support/senl/document/SDoc;->mSDocEndTag:Lcom/samsung/android/support/senl/document/component/SDocEndTag;

    invoke-virtual {v6}, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->getModifiedTime()J

    move-result-wide v6

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->getModifiedTime()J

    move-result-wide v8

    cmp-long v3, v6, v8

    if-nez v3, :cond_a

    const-string v3, "load() - cache has same time."

    invoke-static {v2, v3}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :cond_a
    :goto_4
    move v3, v4

    goto :goto_6

    :catch_1
    const-string v3, "load() - can\'t check cached tag modified time."

    invoke-static {v2, v3}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_b
    :goto_5
    move v3, v5

    :goto_6
    invoke-static {v0, p2, v5, v3}, Lcom/samsung/android/support/senl/document/util/ZipUtil;->unzip(Ljava/io/File;Ljava/io/File;ZZ)V

    if-ne p1, v4, :cond_c

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result p1

    if-nez p1, :cond_c

    invoke-static {v2, p3}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    :goto_7
    const/4 p1, 0x4

    if-ge v5, p1, :cond_d

    iget-object p1, p0, Lcom/samsung/android/support/senl/document/SDoc;->mComponentArray:[Lcom/samsung/android/support/senl/document/component/SDocComponent;

    aget-object p1, p1, v5

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/document/component/SDocComponent;->readFile()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_d
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "load() end, ct = ["

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/samsung/android/support/senl/document/SDoc;->mSDocEndTag:Lcom/samsung/android/support/senl/document/component/SDocEndTag;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->getCreatedTime()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, "], mt = ["

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/samsung/android/support/senl/document/SDoc;->mSDocEndTag:Lcom/samsung/android/support/senl/document/component/SDocEndTag;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->getModifiedTime()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "load() end, file revision = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/samsung/android/support/senl/document/SDoc;->mSDocEndTag:Lcom/samsung/android/support/senl/document/component/SDocEndTag;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->getFileRevision()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_e
    new-instance p1, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "load() file doesn\'t exist. ["

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/samsung/android/support/senl/document/util/SDocUtil;->logPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private save(Ljava/lang/String;ZJJZ)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "save0() start! fileFullPath = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/support/senl/document/util/SDocUtil;->logPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "], fixCache = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "],  created time = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "], modified time = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SDoc"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v2, p5, v0

    const-string v3, "] is invalid."

    if-ltz v2, :cond_1

    cmp-long v0, p3, v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/SDoc;->mSDocEndTag:Lcom/samsung/android/support/senl/document/component/SDocEndTag;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->resetFileRevision()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/SDoc;->mSDocEndTag:Lcom/samsung/android/support/senl/document/component/SDocEndTag;

    invoke-virtual {v0, p5, p6}, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->setModifiedTime(J)V

    iget-object p5, p0, Lcom/samsung/android/support/senl/document/SDoc;->mSDocEndTag:Lcom/samsung/android/support/senl/document/component/SDocEndTag;

    invoke-virtual {p5, p3, p4}, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->setCreatedTime(J)V

    invoke-direct {p0, p1, p2, p7}, Lcom/samsung/android/support/senl/document/SDoc;->save(Ljava/lang/String;ZZ)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "save3() - createdTime time ["

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "save3() - modified time ["

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private save(Ljava/lang/String;ZZ)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v2, p2

    move/from16 v3, p3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "save() start! fileFullPath = ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/support/senl/document/util/SDocUtil;->logPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "], fixCache = ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, "], checkStorage = ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "SDoc"

    invoke-static {v6, v4}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v1, Lcom/samsung/android/support/senl/document/SDoc;->mFilePath:Ljava/lang/String;

    const/4 v7, 0x1

    if-eqz v4, :cond_0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, v1, Lcom/samsung/android/support/senl/document/SDoc;->mSDocEndTag:Lcom/samsung/android/support/senl/document/component/SDocEndTag;

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->resetFileRevision()V

    if-nez v2, :cond_0

    iput-boolean v7, v1, Lcom/samsung/android/support/senl/document/SDoc;->mIsFirstSave:Z

    const/4 v4, 0x0

    iput-object v4, v1, Lcom/samsung/android/support/senl/document/SDoc;->mFilePath:Ljava/lang/String;

    :cond_0
    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_0
    const/4 v10, 0x4

    const-string v11, ".bak"

    if-ge v8, v10, :cond_3

    :try_start_0
    iget-object v10, v1, Lcom/samsung/android/support/senl/document/SDoc;->mComponentArray:[Lcom/samsung/android/support/senl/document/component/SDocComponent;

    aget-object v10, v10, v8

    invoke-virtual {v10}, Lcom/samsung/android/support/senl/document/component/SDocComponent;->isChanged()Z

    move-result v12

    if-eq v12, v7, :cond_1

    iget-boolean v12, v1, Lcom/samsung/android/support/senl/document/SDoc;->mIsFirstSave:Z

    if-ne v12, v7, :cond_2

    :cond_1
    invoke-virtual {v10}, Lcom/samsung/android/support/senl/document/component/SDocComponent;->writeFile()V

    move v9, v7

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_3
    iget-object v8, v1, Lcom/samsung/android/support/senl/document/SDoc;->mSDocEndTag:Lcom/samsung/android/support/senl/document/component/SDocEndTag;

    invoke-virtual {v8}, Lcom/samsung/android/support/senl/document/component/SDocComponent;->isChanged()Z

    move-result v8

    if-eq v8, v7, :cond_4

    if-eq v9, v7, :cond_4

    iget-boolean v8, v1, Lcom/samsung/android/support/senl/document/SDoc;->mRestoreUnsavedData:Z

    if-ne v8, v7, :cond_5

    :cond_4
    iget-object v8, v1, Lcom/samsung/android/support/senl/document/SDoc;->mSDocEndTag:Lcom/samsung/android/support/senl/document/component/SDocEndTag;

    invoke-virtual {v8}, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->increaseFileRevision()V

    iget-object v8, v1, Lcom/samsung/android/support/senl/document/SDoc;->mSDocEndTag:Lcom/samsung/android/support/senl/document/component/SDocEndTag;

    invoke-virtual {v8}, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->writeFile()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_5
    iget-object v8, v1, Lcom/samsung/android/support/senl/document/SDoc;->mComponentArray:[Lcom/samsung/android/support/senl/document/component/SDocComponent;

    array-length v9, v8

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v9, :cond_8

    aget-object v12, v8, v10

    invoke-virtual {v12}, Lcom/samsung/android/support/senl/document/component/SDocComponent;->getFileNames()[Ljava/lang/String;

    move-result-object v12

    array-length v13, v12

    const/4 v14, 0x0

    :goto_2
    if-ge v14, v13, :cond_7

    aget-object v15, v12, v14

    new-instance v4, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v15}, Lcom/samsung/android/support/senl/document/util/FileUtil;->forceRenameTo(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    add-int/lit8 v14, v14, 0x1

    const/4 v7, 0x1

    goto :goto_2

    :cond_7
    add-int/lit8 v10, v10, 0x1

    const/4 v7, 0x1

    goto :goto_1

    :cond_8
    iget-object v4, v1, Lcom/samsung/android/support/senl/document/SDoc;->mZipFileList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    iget-object v4, v1, Lcom/samsung/android/support/senl/document/SDoc;->mComponentArray:[Lcom/samsung/android/support/senl/document/component/SDocComponent;

    array-length v7, v4

    const/4 v8, 0x0

    :goto_3
    if-ge v8, v7, :cond_9

    aget-object v9, v4, v8

    iget-object v10, v1, Lcom/samsung/android/support/senl/document/SDoc;->mZipFileList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Lcom/samsung/android/support/senl/document/component/SDocComponent;->getFileNames()[Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_9
    iget-object v4, v1, Lcom/samsung/android/support/senl/document/SDoc;->mSDocFileManager:Lcom/samsung/android/support/senl/document/component/SDocFileManager;

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/document/component/SDocFileManager;->getAttachedFileList()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iget-object v8, v1, Lcom/samsung/android/support/senl/document/SDoc;->mZipFileList:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_a
    iget-object v4, v1, Lcom/samsung/android/support/senl/document/SDoc;->mExtraZipFileList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    iget-object v9, v1, Lcom/samsung/android/support/senl/document/SDoc;->mZipFileList:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v1, Lcom/samsung/android/support/senl/document/SDoc;->mRootDocDirPath:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v0, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    const-string v8, "."

    invoke-virtual {v0, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "_"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ".tmp"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v8, v1, Lcom/samsung/android/support/senl/document/SDoc;->mZipFileList:Ljava/util/ArrayList;

    iget-object v9, v1, Lcom/samsung/android/support/senl/document/SDoc;->mRootDocDirPath:Ljava/lang/String;

    invoke-static {v8, v9, v4}, Lcom/samsung/android/support/senl/document/util/ZipUtil;->zip(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v8

    iget-object v10, v1, Lcom/samsung/android/support/senl/document/SDoc;->mSDocEndTag:Lcom/samsung/android/support/senl/document/component/SDocEndTag;

    invoke-virtual {v10, v8, v9}, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->setUncompressedSize(J)V

    iget-object v10, v1, Lcom/samsung/android/support/senl/document/SDoc;->mSDocEndTag:Lcom/samsung/android/support/senl/document/component/SDocEndTag;

    invoke-virtual {v10}, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->getCreatedTime()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->setCreatedTime(J)V

    iget-object v10, v1, Lcom/samsung/android/support/senl/document/SDoc;->mSDocEndTag:Lcom/samsung/android/support/senl/document/component/SDocEndTag;

    invoke-virtual {v10}, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->getModifiedTime()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->setModifiedTime(J)V

    iget-object v10, v1, Lcom/samsung/android/support/senl/document/SDoc;->mSDocEndTag:Lcom/samsung/android/support/senl/document/component/SDocEndTag;

    const/4 v12, 0x1

    invoke-virtual {v10, v4, v12}, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->writeBytes(Ljava/lang/String;Z)V

    iget-object v10, v1, Lcom/samsung/android/support/senl/document/SDoc;->mSDocEndTag:Lcom/samsung/android/support/senl/document/component/SDocEndTag;

    invoke-virtual {v10}, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->getDocumentType()I

    move-result v10

    if-ne v10, v12, :cond_d

    :try_start_1
    iget-object v10, v1, Lcom/samsung/android/support/senl/document/SDoc;->mLocker:Lcom/samsung/android/support/senl/document/SDocLocker;

    invoke-virtual {v10}, Lcom/samsung/android/support/senl/document/SDocLocker;->getUserCode()[Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x0

    aget-object v10, v10, v12

    invoke-static {v4, v10}, Lcom/samsung/android/support/senl/document/util/LockUtil;->encrypt(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6

    :catch_0
    new-instance v0, Ljava/io/IOException;

    const-string v2, "save() - Fail to lock file"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    :goto_6
    if-eqz v3, :cond_f

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_f

    invoke-static {}, Lcom/samsung/android/support/senl/document/util/FileUtil;->getAvailableInternalMemorySize()J

    move-result-wide v12

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v14

    add-long/2addr v8, v14

    const-wide/32 v14, 0x6400000

    add-long/2addr v8, v14

    cmp-long v8, v12, v8

    if-gez v8, :cond_f

    const-string v0, "delete temporary sdoc file, not enough memory for write DB."

    invoke-static {v6, v0}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_e

    const-string v0, "save() - fail to delete temporary file."

    invoke-static {v6, v0}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    new-instance v0, Lcom/samsung/android/support/senl/document/exception/InsufficientStorageException;

    const-string v2, "No internal memory size for saving database."

    invoke-direct {v0, v2}, Lcom/samsung/android/support/senl/document/exception/InsufficientStorageException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    const-string v9, "save() - Fail to rename to output file."

    const-string v10, "save() - Fail to find temp file."

    const/4 v12, 0x1

    if-ne v8, v12, :cond_14

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v8

    if-ne v8, v12, :cond_10

    invoke-static {v11}, Lcom/samsung/android/support/senl/document/util/FileUtil;->deleteFile(Ljava/io/File;)V

    :cond_10
    invoke-virtual {v3, v11}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v8

    if-eqz v8, :cond_13

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-virtual {v8, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_15

    invoke-static {v11}, Lcom/samsung/android/support/senl/document/util/FileUtil;->deleteFile(Ljava/io/File;)V

    goto :goto_7

    :cond_11
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    new-instance v0, Ljava/io/IOException;

    const-string v2, "save() - Fail to rename origin file."

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1b

    invoke-virtual {v8, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_1a

    :cond_15
    :goto_7
    iget-object v3, v1, Lcom/samsung/android/support/senl/document/SDoc;->mFilePath:Ljava/lang/String;

    if-nez v3, :cond_17

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/support/senl/document/SDocFile;->convertPathToHashedName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lcom/samsung/android/support/senl/document/SDoc;->mRootDocDirPath:Ljava/lang/String;

    const/16 v8, 0x2f

    invoke-virtual {v4, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    const/4 v9, 0x1

    add-int/2addr v8, v9

    const/4 v9, 0x0

    invoke-virtual {v4, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lcom/samsung/android/support/senl/document/SDoc;->mRootDocDirPath:Ljava/lang/String;

    invoke-static {v4, v3}, Lcom/samsung/android/support/senl/document/util/FileUtil;->forceRenameTo(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "save() - Change directory ["

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/samsung/android/support/senl/document/SDoc;->mRootDocDirPath:Ljava/lang/String;

    invoke-static {v8}, Lcom/samsung/android/support/senl/document/util/SDocUtil;->logPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "] -> ["

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/samsung/android/support/senl/document/util/SDocUtil;->logPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, v1, Lcom/samsung/android/support/senl/document/SDoc;->mRootDocDirPath:Ljava/lang/String;

    iget v3, v1, Lcom/samsung/android/support/senl/document/SDoc;->mSDocMode:I

    if-lez v3, :cond_16

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lcom/samsung/android/support/senl/document/SDoc;->mRootDocDirPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/samsung/android/support/senl/document/SDoc;->mSDocMode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/samsung/android/support/senl/document/SDoc;->mRootDocDirPath:Ljava/lang/String;

    :cond_16
    iget-object v3, v1, Lcom/samsung/android/support/senl/document/SDoc;->mComponentArray:[Lcom/samsung/android/support/senl/document/component/SDocComponent;

    array-length v4, v3

    const/4 v12, 0x0

    :goto_8
    if-ge v12, v4, :cond_17

    aget-object v5, v3, v12

    iget-object v7, v1, Lcom/samsung/android/support/senl/document/SDoc;->mRootDocDirPath:Ljava/lang/String;

    invoke-virtual {v5, v7}, Lcom/samsung/android/support/senl/document/component/SDocComponent;->changeCacheDir(Ljava/lang/String;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_8

    :cond_17
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "save() file revision = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/samsung/android/support/senl/document/SDoc;->mSDocEndTag:Lcom/samsung/android/support/senl/document/component/SDocEndTag;

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->getFileRevision()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "save() modified time = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/samsung/android/support/senl/document/SDoc;->mSDocEndTag:Lcom/samsung/android/support/senl/document/component/SDocEndTag;

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->getModifiedTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "save() created time = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/samsung/android/support/senl/document/SDoc;->mSDocEndTag:Lcom/samsung/android/support/senl/document/component/SDocEndTag;

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->getCreatedTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v12, 0x0

    iput-boolean v12, v1, Lcom/samsung/android/support/senl/document/SDoc;->mIsFirstSave:Z

    iput-boolean v12, v1, Lcom/samsung/android/support/senl/document/SDoc;->mRestoreUnsavedData:Z

    if-nez v2, :cond_18

    iput-object v0, v1, Lcom/samsung/android/support/senl/document/SDoc;->mFilePath:Ljava/lang/String;

    :cond_18
    iget-object v0, v1, Lcom/samsung/android/support/senl/document/SDoc;->mComponentArray:[Lcom/samsung/android/support/senl/document/component/SDocComponent;

    array-length v2, v0

    move v4, v12

    :goto_9
    if-ge v4, v2, :cond_19

    aget-object v3, v0, v4

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/document/component/SDocComponent;->resetIsChanged()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_19
    const/4 v0, 0x2

    invoke-direct {v1, v0}, Lcom/samsung/android/support/senl/document/SDoc;->setCacheState(I)V

    const-string v0, "save() end"

    invoke-static {v6, v0}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1a
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v0

    const/4 v12, 0x0

    iget-object v2, v1, Lcom/samsung/android/support/senl/document/SDoc;->mComponentArray:[Lcom/samsung/android/support/senl/document/component/SDocComponent;

    array-length v3, v2

    move v4, v12

    :goto_a
    if-ge v4, v3, :cond_1e

    aget-object v5, v2, v4

    invoke-virtual {v5}, Lcom/samsung/android/support/senl/document/component/SDocComponent;->getFileNames()[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    move v7, v12

    :goto_b
    if-ge v7, v6, :cond_1d

    aget-object v8, v5, v7

    new-instance v9, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v9, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_1c

    invoke-static {v9}, Lcom/samsung/android/support/senl/document/util/FileUtil;->deleteFile(Ljava/io/File;)V

    :cond_1c
    add-int/lit8 v7, v7, 0x1

    goto :goto_b

    :cond_1d
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_1e
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "save() - Fail to write sub data file. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private setCacheState(I)V
    .locals 7

    const-string v0, "setCacheState() - Fail to close raf."

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/support/senl/document/SDoc;->mRootDocDirPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "state.dat"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    const-string v4, "]"

    const-string v5, "SDoc"

    if-nez v3, :cond_0

    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setCacheState() - Fail to create state.dat!! ["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/samsung/android/support/senl/document/util/SDocUtil;->logPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    :goto_0
    const/4 v2, 0x0

    :try_start_1
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v6, "rw"

    invoke-direct {v3, v1, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v3, p1}, Ljava/io/RandomAccessFile;->writeInt(I)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_4

    :catch_1
    invoke-static {v5, v0}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :catchall_0
    move-exception p1

    move-object v2, v3

    goto :goto_5

    :catch_2
    move-object v2, v3

    goto :goto_1

    :catch_3
    move-object v2, v3

    goto :goto_3

    :catchall_1
    move-exception p1

    goto :goto_5

    :catch_4
    :goto_1
    :try_start_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCacheState - Fail to writeInt()!! ["

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/samsung/android/support/senl/document/util/SDocUtil;->logPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v2, :cond_1

    :goto_2
    :try_start_5
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_4

    :catch_5
    :goto_3
    :try_start_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCacheState - Fail to create raf!! ["

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/samsung/android/support/senl/document/util/SDocUtil;->logPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v2, :cond_1

    goto :goto_2

    :cond_1
    :goto_4
    return-void

    :goto_5
    if-eqz v2, :cond_2

    :try_start_7
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_6

    :catch_6
    invoke-static {v5, v0}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_6
    throw p1
.end method


# virtual methods
.method public addExtraZipFileList(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addExtraZipFileList() - file is not exist!! ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/samsung/android/support/senl/document/util/SDocUtil;->logPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/document/SDoc;->mExtraZipFileList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/SDoc;->mExtraZipFileList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "addExtraZipFileList() - FilePathList is already contained!!!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bind(I)I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/SDoc;->mSDocFileManager:Lcom/samsung/android/support/senl/document/component/SDocFileManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/document/component/SDocFileManager;->bind(I)I

    move-result p1

    return p1
.end method

.method public bind(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/SDoc;->mSDocFileManager:Lcom/samsung/android/support/senl/document/component/SDocFileManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/document/component/SDocFileManager;->bind(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public clearBindData()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/SDoc;->mSDocFileManager:Lcom/samsung/android/support/senl/document/component/SDocFileManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/document/component/SDocFileManager;->clearBindData()V

    return-void
.end method

.method public clearExtraZipFileList()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/SDoc;->mExtraZipFileList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public close()V
    .locals 5

    const-string v0, "SDoc"

    const-string v1, "close() start!"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/document/SDoc;->mSDocFileManager:Lcom/samsung/android/support/senl/document/component/SDocFileManager;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/document/component/SDocFileManager;->close()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/support/senl/document/SDoc;->mLocker:Lcom/samsung/android/support/senl/document/SDocLocker;

    iget-boolean v1, p0, Lcom/samsung/android/support/senl/document/SDoc;->mIsFirstSave:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "close() - not saved, delete cache directory. ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/document/SDoc;->mRootDocDirPath:Ljava/lang/String;

    invoke-static {v2}, Lcom/samsung/android/support/senl/document/util/SDocUtil;->logPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/samsung/android/support/senl/document/SDoc;->mRootDocDirPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/samsung/android/support/senl/document/util/FileUtil;->deleteFile(Ljava/io/File;)V

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/samsung/android/support/senl/document/SDoc;->mRootDocDirPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/samsung/android/support/senl/document/SDocFile;->getDirSize(Ljava/io/File;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/samsung/android/support/senl/document/SDoc;->mRootDocDirPath:Ljava/lang/String;

    invoke-static {v3, v1, v2}, Lcom/samsung/android/support/senl/document/SDocFile;->saveCacheSize(Ljava/lang/String;J)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "close() - cache size : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/document/SDoc;->setCacheState(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public discard()V
    .locals 4

    const-string v0, "SDoc"

    const-string v1, "discard() start!"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/SDoc;->mSDocEndTag:Lcom/samsung/android/support/senl/document/component/SDocEndTag;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->getModifiedTime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/samsung/android/support/senl/document/SDoc;->mSDocFileManager:Lcom/samsung/android/support/senl/document/component/SDocFileManager;

    invoke-virtual {v2, v0, v1}, Lcom/samsung/android/support/senl/document/component/SDocFileManager;->discard(J)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/support/senl/document/SDoc;->mRootDocDirPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "SPenSDK30"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/samsung/android/support/senl/document/SDoc;->discardDirectory(Ljava/lang/String;J)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/document/SDoc;->setCacheState(I)V

    return-void
.end method

.method public getCachePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/SDoc;->mRootDocDirPath:Ljava/lang/String;

    return-object v0
.end method

.method public getContentData()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/support/senl/document/data/ContentData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/SDoc;->mSDocContent:Lcom/samsung/android/support/senl/document/component/SDocContent;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/document/component/SDocContent;->getContentData()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getCreatedTime()J
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/SDoc;->mSDocEndTag:Lcom/samsung/android/support/senl/document/component/SDocEndTag;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->getCreatedTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDocumentType()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/SDoc;->mSDocEndTag:Lcom/samsung/android/support/senl/document/component/SDocEndTag;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->getDocumentType()I

    move-result v0

    return v0
.end method

.method public getExtraDataByteArray(Ljava/lang/String;)[B
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/SDoc;->mSDocDocument:Lcom/samsung/android/support/senl/document/component/SDocDocument;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/document/component/SDocDocument;->getExtraDataByteArray(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method public getExtraDataInt(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/SDoc;->mSDocDocument:Lcom/samsung/android/support/senl/document/component/SDocDocument;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/document/component/SDocDocument;->getExtraDataInt(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getExtraDataString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/SDoc;->mSDocDocument:Lcom/samsung/android/support/senl/document/component/SDocDocument;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/document/component/SDocDocument;->getExtraDataString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getFilePath(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/SDoc;->mSDocFileManager:Lcom/samsung/android/support/senl/document/component/SDocFileManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/document/component/SDocFileManager;->getFilePath(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getModifiedTime()J
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/SDoc;->mSDocEndTag:Lcom/samsung/android/support/senl/document/component/SDocEndTag;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->getModifiedTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getReminderData()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/support/senl/document/data/ReminderData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/SDoc;->mSDocEndTag:Lcom/samsung/android/support/senl/document/component/SDocEndTag;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/document/component/SDocComponent;->getCurrentFormatVersion()I

    move-result v0

    const/16 v1, 0xf

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/SDoc;->mSDocDocument:Lcom/samsung/android/support/senl/document/component/SDocDocument;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/document/component/SDocDocument;->getReminderData()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/document/SDoc;->mSDocEndTag:Lcom/samsung/android/support/senl/document/component/SDocEndTag;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->getReminderData()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getRepositoryPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/SDoc;->mSDocFileManager:Lcom/samsung/android/support/senl/document/component/SDocFileManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/document/component/SDocFileManager;->getRepositoryPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSearchData()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/support/senl/document/data/SearchData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/SDoc;->mSDocSearchData:Lcom/samsung/android/support/senl/document/component/SDocSearchData;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/document/component/SDocSearchData;->getSearchData()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/SDoc;->mSDocContent:Lcom/samsung/android/support/senl/document/component/SDocContent;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/document/component/SDocContent;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isFavorite()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/SDoc;->mSDocEndTag:Lcom/samsung/android/support/senl/document/component/SDocEndTag;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->isFavorite()Z

    move-result v0

    return v0
.end method

.method public isLocked()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/SDoc;->mSDocEndTag:Lcom/samsung/android/support/senl/document/component/SDocEndTag;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->getDocumentType()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public lock()V
    .locals 3

    const-string v0, "SDoc"

    const-string v1, "lock()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/SDoc;->mSDocEndTag:Lcom/samsung/android/support/senl/document/component/SDocEndTag;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->getDocumentType()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/SDoc;->mSDocEndTag:Lcom/samsung/android/support/senl/document/component/SDocEndTag;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->setDocumentType(I)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lock() - invalid document type ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/document/SDoc;->mSDocEndTag:Lcom/samsung/android/support/senl/document/component/SDocEndTag;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->getDocumentType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public quickSave()V
    .locals 13

    const-string v0, "SDoc"

    const-string v1, "quickSave() start!"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    const-string v4, ".bak"

    const/4 v5, 0x4

    const/4 v6, 0x1

    if-ge v2, v5, :cond_4

    :try_start_0
    iget-object v7, p0, Lcom/samsung/android/support/senl/document/SDoc;->mComponentArray:[Lcom/samsung/android/support/senl/document/component/SDocComponent;

    aget-object v7, v7, v2

    invoke-virtual {v7}, Lcom/samsung/android/support/senl/document/component/SDocComponent;->isChanged()Z

    move-result v8

    if-ne v8, v6, :cond_0

    invoke-virtual {v7}, Lcom/samsung/android/support/senl/document/component/SDocComponent;->writeFile()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v6

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    move v2, v1

    :goto_1
    if-ge v2, v5, :cond_3

    iget-object v3, p0, Lcom/samsung/android/support/senl/document/SDoc;->mComponentArray:[Lcom/samsung/android/support/senl/document/component/SDocComponent;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/document/component/SDocComponent;->getFileNames()[Ljava/lang/String;

    move-result-object v3

    array-length v6, v3

    move v7, v1

    :goto_2
    if-ge v7, v6, :cond_2

    aget-object v8, v3, v7

    new-instance v9, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v9, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-static {v9}, Lcom/samsung/android/support/senl/document/util/FileUtil;->deleteFile(Ljava/io/File;)V

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "quickSave() - Fail to write sub data file. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    move v2, v1

    :goto_3
    if-ge v2, v5, :cond_7

    iget-object v7, p0, Lcom/samsung/android/support/senl/document/SDoc;->mComponentArray:[Lcom/samsung/android/support/senl/document/component/SDocComponent;

    aget-object v7, v7, v2

    invoke-virtual {v7}, Lcom/samsung/android/support/senl/document/component/SDocComponent;->getFileNames()[Ljava/lang/String;

    move-result-object v7

    array-length v8, v7

    move v9, v1

    :goto_4
    if-ge v9, v8, :cond_6

    aget-object v10, v7, v9

    new-instance v11, Ljava/io/File;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_5

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v10}, Lcom/samsung/android/support/senl/document/util/FileUtil;->forceRenameTo(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_7
    if-ne v3, v6, :cond_8

    invoke-direct {p0, v6}, Lcom/samsung/android/support/senl/document/SDoc;->setCacheState(I)V

    :cond_8
    const-string v1, "quickSave() end"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public release(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/SDoc;->mSDocFileManager:Lcom/samsung/android/support/senl/document/component/SDocFileManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/document/component/SDocFileManager;->release(I)V

    return-void
.end method

.method public release(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/document/SDoc;->mSDocFileManager:Lcom/samsung/android/support/senl/document/component/SDocFileManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/document/component/SDocFileManager;->release(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "release() - filePath = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/support/senl/document/util/SDocUtil;->logPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "SDoc"

    invoke-static {v1, p1, v0}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public save(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "save1() start! fileFullPath = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/support/senl/document/util/SDocUtil;->logPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SDoc"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/support/senl/document/SDoc;->save(Ljava/lang/String;Z)V

    return-void
.end method

.method public save(Ljava/lang/String;JJ)V
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "save2() start! fileFullPath = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/support/senl/document/util/SDocUtil;->logPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "], created time = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "], modified time = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SDoc"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    move-object v2, p0

    move-object v3, p1

    move-wide v5, p2

    move-wide v7, p4

    invoke-virtual/range {v2 .. v8}, Lcom/samsung/android/support/senl/document/SDoc;->save(Ljava/lang/String;ZJJ)V

    return-void
.end method

.method public save(Ljava/lang/String;JJZ)V
    .locals 10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "save5() start! fileFullPath = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/support/senl/document/util/SDocUtil;->logPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "], created time = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide v5, p2

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "], modified time = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide v7, p4

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "], checkStorage = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SDoc"

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    move-object v2, p0

    move-object v3, p1

    move/from16 v9, p6

    invoke-direct/range {v2 .. v9}, Lcom/samsung/android/support/senl/document/SDoc;->save(Ljava/lang/String;ZJJZ)V

    return-void
.end method

.method public save(Ljava/lang/String;Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "save4() start! fileFullPath = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/support/senl/document/util/SDocUtil;->logPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "], fixCache = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SDoc"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/support/senl/document/SDoc;->save(Ljava/lang/String;ZZ)V

    return-void
.end method

.method public save(Ljava/lang/String;ZJJ)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "save3() start! fileFullPath = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/support/senl/document/util/SDocUtil;->logPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "], fixCache = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "],  created time = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "], modified time = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SDoc"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v2, p5, v0

    const-string v3, "] is invalid."

    if-ltz v2, :cond_1

    cmp-long v0, p3, v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/SDoc;->mSDocEndTag:Lcom/samsung/android/support/senl/document/component/SDocEndTag;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->resetFileRevision()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/SDoc;->mSDocEndTag:Lcom/samsung/android/support/senl/document/component/SDocEndTag;

    invoke-virtual {v0, p5, p6}, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->setModifiedTime(J)V

    iget-object p5, p0, Lcom/samsung/android/support/senl/document/SDoc;->mSDocEndTag:Lcom/samsung/android/support/senl/document/component/SDocEndTag;

    invoke-virtual {p5, p3, p4}, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->setCreatedTime(J)V

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/document/SDoc;->save(Ljava/lang/String;Z)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "save3() - createdTime time ["

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "save3() - modified time ["

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setContentData(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/support/senl/document/data/ContentData;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/SDoc;->mSDocContent:Lcom/samsung/android/support/senl/document/component/SDocContent;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/document/component/SDocContent;->setContentData(Ljava/util/ArrayList;)V

    return-void
.end method

.method public setCursorPosition(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/SDoc;->mSDocDocument:Lcom/samsung/android/support/senl/document/component/SDocDocument;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/document/component/SDocDocument;->setCursorPosition(I)V

    return-void
.end method

.method public setDocumentType(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/SDoc;->mSDocEndTag:Lcom/samsung/android/support/senl/document/component/SDocEndTag;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->setDocumentType(I)V

    return-void
.end method

.method public setExtraDataByteArray(Ljava/lang/String;[B)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/SDoc;->mSDocDocument:Lcom/samsung/android/support/senl/document/component/SDocDocument;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/document/component/SDocDocument;->setExtraDataByteArray(Ljava/lang/String;[B)V

    return-void
.end method

.method public setExtraDataInt(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/SDoc;->mSDocDocument:Lcom/samsung/android/support/senl/document/component/SDocDocument;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/document/component/SDocDocument;->setExtraDataInt(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public setExtraDataString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/SDoc;->mSDocDocument:Lcom/samsung/android/support/senl/document/component/SDocDocument;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/document/component/SDocDocument;->setExtraDataString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setFavorite(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/SDoc;->mSDocEndTag:Lcom/samsung/android/support/senl/document/component/SDocEndTag;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->setFavorite(Z)V

    return-void
.end method

.method public setReminderData(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/support/senl/document/data/ReminderData;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/SDoc;->mSDocEndTag:Lcom/samsung/android/support/senl/document/component/SDocEndTag;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->setReminderData(Ljava/util/ArrayList;)V

    return-void
.end method

.method public setSearchData(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/support/senl/document/data/SearchData;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/SDoc;->mSDocSearchData:Lcom/samsung/android/support/senl/document/component/SDocSearchData;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/document/component/SDocSearchData;->setSearchData(Ljava/util/ArrayList;)V

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/SDoc;->mSDocContent:Lcom/samsung/android/support/senl/document/component/SDocContent;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/document/component/SDocContent;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/SDoc;->mSDocEndTag:Lcom/samsung/android/support/senl/document/component/SDocEndTag;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method public unlock()V
    .locals 3

    const-string v0, "SDoc"

    const-string v1, "unlock()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/SDoc;->mSDocEndTag:Lcom/samsung/android/support/senl/document/component/SDocEndTag;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->getDocumentType()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/SDoc;->mSDocEndTag:Lcom/samsung/android/support/senl/document/component/SDocEndTag;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->setDocumentType(I)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unlock() - invalid document type ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/document/SDoc;->mSDocEndTag:Lcom/samsung/android/support/senl/document/component/SDocEndTag;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->getDocumentType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
