.class public abstract Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<SpenDocument::",
        "Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;",
        "Entity:",
        "Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DocumentRepository"


# instance fields
.field private mCaller:Ljava/lang/String;

.field private mDocumentAdjustData:Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentAdjustData;

.field private mDocumentEntity:Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TEntity;"
        }
    .end annotation
.end field

.field private mDocumentSubscriptionId:Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;

.field private final mDocumentType:Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentType;

.field private mIsNewDocument:Z

.field private mLoadPath:Ljava/lang/String;

.field private mLockAccountGuid:Ljava/lang/String;

.field private mLockConfirm:Ljava/lang/String;

.field private mMode:I
    .annotation build Lcom/samsung/android/support/senl/cm/base/spenwrapper/constants/SpenOpenMode;
    .end annotation
.end field

.field private mSavePath:Ljava/lang/String;

.field private final mSaveStrategy:Lcom/samsung/android/support/senl/cm/base/common/util/DataStrategy;

.field private mSpenDocument:Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TSpenDocument;"
        }
    .end annotation
.end field

.field private mUuid:Ljava/lang/String;

.field private mWritingMode:I
    .annotation build Lcom/samsung/android/support/senl/cm/base/spenwrapper/constants/WritingMode;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->mMode:I

    iput v0, p0, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->mWritingMode:I

    new-instance v0, Lcom/samsung/android/support/senl/cm/base/common/util/DataStrategy;

    const v1, 0x108b0

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/util/DataStrategy;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->mSaveStrategy:Lcom/samsung/android/support/senl/cm/base/common/util/DataStrategy;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->mUuid:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->mLoadPath:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->mSavePath:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->mLockConfirm:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->mCaller:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentType;->values()[Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentType;

    move-result-object v1

    aget-object v0, v1, v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->mDocumentType:Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentType;

    const-class v1, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->mDocumentSubscriptionId:Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;

    const-class v1, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->mDocumentEntity:Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->mMode:I

    const-class v1, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentAdjustData;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentAdjustData;

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->mDocumentAdjustData:Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentAdjustData;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->mWritingMode:I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DocumentUser - parcel, uuid : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->mUuid:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", loadPath : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->mLoadPath:Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/data/common/log/DataLogger;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", savePath : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->mSavePath:Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/data/common/log/DataLogger;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", lockConfirm : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->mLockConfirm:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", caller : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->mCaller:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", documentType : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", user : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->mDocumentSubscriptionId:Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", mDocumentAdjustData : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->mDocumentAdjustData:Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentAdjustData;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DocumentRepository"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentType;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->mMode:I

    iput v0, p0, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->mWritingMode:I

    new-instance v0, Lcom/samsung/android/support/senl/cm/base/common/util/DataStrategy;

    const v1, 0x108b0

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/util/DataStrategy;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->mSaveStrategy:Lcom/samsung/android/support/senl/cm/base/common/util/DataStrategy;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->mUuid:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->mLoadPath:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->mSavePath:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->mLockConfirm:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->mCaller:Ljava/lang/String;

    iput-object p6, p0, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->mDocumentType:Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentType;

    iput-object p7, p0, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->mDocumentSubscriptionId:Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;

    return-void
.end method

.method public static checkNonNullObjects(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository<",
            "+",
            "Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;",
            "+",
            "Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->getUuid()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Uuid value must be passed."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "DocumentRepository is null object."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private printDatabaseStrategy(Ljava/lang/String;Lcom/samsung/android/support/senl/cm/base/common/util/DataStrategy;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/support/senl/cm/base/common/util/DataStrategy;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, " strategy : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x2

    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/cm/base/common/util/DataStrategy;->check(I)Z

    move-result p1

    const/16 v1, 0x2c

    if-eqz p1, :cond_0

    const-string p1, "BROADCAST_RELOAD_AFTER_SAVE"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    const/4 p1, 0x4

    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/cm/base/common/util/DataStrategy;->check(I)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "CLOSE_AFTER_SAVE"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    const/16 p1, 0x8

    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/cm/base/common/util/DataStrategy;->check(I)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "CREATE_AUTO_TITLE"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    const/16 p1, 0x10

    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/cm/base/common/util/DataStrategy;->check(I)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "SHOW_SAVE_SUCCESS_MESSAGE"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    const/16 p1, 0x20

    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/cm/base/common/util/DataStrategy;->check(I)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "SHOW_DELETE_EMPTY_DOCUMENT_MESSAGE"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_4
    const/16 p1, 0x40

    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/cm/base/common/util/DataStrategy;->check(I)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "DO_NOT_DELETE_SERVICE_CACHE"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_5
    const/16 p1, 0x80

    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/cm/base/common/util/DataStrategy;->check(I)Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "FORCE_SAVE"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_6
    const/16 p1, 0x400

    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/cm/base/common/util/DataStrategy;->check(I)Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, "DO_NOT_UPDATE_DATABASE"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_7
    const/16 p1, 0x800

    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/cm/base/common/util/DataStrategy;->check(I)Z

    move-result p1

    if-eqz p1, :cond_8

    const-string p1, "CREATE_THUMBNAIL_CACHE"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_8
    const/16 p1, 0x1000

    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/cm/base/common/util/DataStrategy;->check(I)Z

    move-result p1

    if-eqz p1, :cond_9

    const-string p1, "DO_NOT_UPDATE_MAPPING_TABLE"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_9
    const/16 p1, 0x2000

    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/cm/base/common/util/DataStrategy;->check(I)Z

    move-result p1

    if-eqz p1, :cond_a

    const-string p1, "BROADCAST_FORCE_UPDATE"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_a
    const/16 p1, 0x4000

    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/cm/base/common/util/DataStrategy;->check(I)Z

    move-result p1

    if-eqz p1, :cond_b

    const-string p1, "DO_NOT_UPDATE_MODIFIED_TIME"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_b
    const p1, 0x8000

    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/cm/base/common/util/DataStrategy;->check(I)Z

    move-result p1

    if-eqz p1, :cond_c

    const-string p1, "DO_NOT_UPDATE_WIDGET"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_c
    const/high16 p1, 0x10000

    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/cm/base/common/util/DataStrategy;->check(I)Z

    move-result p1

    if-eqz p1, :cond_d

    const-string p1, "SEND_ANALYTICS"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_d
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "printDatabaseStrategy - "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DocumentRepository"

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addSaveStrategy(I)Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;
    .locals 1
    .param p1    # I
        .annotation build Lcom/samsung/android/support/senl/cm/base/common/constants/SaveStrategy;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository<",
            "TSpenDocument;TEntity;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->mSaveStrategy:Lcom/samsung/android/support/senl/cm/base/common/util/DataStrategy;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/cm/base/common/util/DataStrategy;->add(I)V

    return-object p0
.end method

.method public adjustDocument(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentAdjustData;)V
    .locals 0

    return-void
.end method

.method public caller(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository<",
            "TSpenDocument;TEntity;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->mCaller:Ljava/lang/String;

    return-object p0
.end method

.method public checkSaveStrategy(I)Z
    .locals 1
    .param p1    # I
        .annotation build Lcom/samsung/android/support/senl/cm/base/common/constants/SaveStrategy;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->mSaveStrategy:Lcom/samsung/android/support/senl/cm/base/common/util/DataStrategy;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/cm/base/common/util/DataStrategy;->check(I)Z

    move-result p1

    return p1
.end method

.method public clearSaveStrategy()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository<",
            "TSpenDocument;TEntity;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->mSaveStrategy:Lcom/samsung/android/support/senl/cm/base/common/util/DataStrategy;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/common/util/DataStrategy;->clear()V

    return-object p0
.end method

.method public abstract clone()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->clone()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    move-result-object v0

    return-object v0
.end method

.method public createDatabaseStrategy(Lcom/samsung/android/support/senl/cm/base/common/util/DataStrategy;)I
    .locals 3
    .param p1    # Lcom/samsung/android/support/senl/cm/base/common/util/DataStrategy;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/samsung/android/support/senl/cm/base/common/constants/SaveStrategy;
    .end annotation

    const-string v0, "model"

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->printDatabaseStrategy(Ljava/lang/String;Lcom/samsung/android/support/senl/cm/base/common/util/DataStrategy;)V

    new-instance v0, Lcom/samsung/android/support/senl/cm/base/common/util/DataStrategy;

    const v1, 0x10808

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/util/DataStrategy;-><init>(I)V

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Lcom/samsung/android/support/senl/cm/base/common/util/DataStrategy;->check(I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/util/DataStrategy;->remove(I)V

    :cond_0
    const/16 v1, 0x800

    invoke-virtual {p1, v1}, Lcom/samsung/android/support/senl/cm/base/common/util/DataStrategy;->check(I)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/util/DataStrategy;->remove(I)V

    :cond_1
    const/high16 v1, 0x10000

    invoke-virtual {p1, v1}, Lcom/samsung/android/support/senl/cm/base/common/util/DataStrategy;->check(I)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/util/DataStrategy;->remove(I)V

    :cond_2
    const/16 v1, 0x1000

    invoke-virtual {p1, v1}, Lcom/samsung/android/support/senl/cm/base/common/util/DataStrategy;->check(I)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/util/DataStrategy;->add(I)V

    :cond_3
    const/16 v1, 0x2000

    invoke-virtual {p1, v1}, Lcom/samsung/android/support/senl/cm/base/common/util/DataStrategy;->check(I)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/util/DataStrategy;->add(I)V

    :cond_4
    const/16 v1, 0x4000

    invoke-virtual {p1, v1}, Lcom/samsung/android/support/senl/cm/base/common/util/DataStrategy;->check(I)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/util/DataStrategy;->add(I)V

    :cond_5
    const v1, 0x8000

    invoke-virtual {p1, v1}, Lcom/samsung/android/support/senl/cm/base/common/util/DataStrategy;->check(I)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/util/DataStrategy;->add(I)V

    :cond_6
    const-string p1, "data"

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->printDatabaseStrategy(Ljava/lang/String;Lcom/samsung/android/support/senl/cm/base/common/util/DataStrategy;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/common/util/DataStrategy;->get()I

    move-result p1

    return p1
.end method

.method public abstract createLoadDatabaseRunnable(Landroid/content/Context;)Ljava/lang/Runnable;
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract createSpenDocument(Landroid/content/Context;[Ljava/lang/String;IZZ)Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[",
            "Ljava/lang/String;",
            "IZZ)TSpenDocument;"
        }
    .end annotation
.end method

.method public abstract createThumbnail(Landroid/content/Context;)V
.end method

.method public abstract deleteDatabase(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;)Z
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TEntity;)Z"
        }
    .end annotation
.end method

.method public deleteDocumentEntity(Landroid/content/Context;)Z
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deleteDocumentEntity, documentEntity : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->getDocumentEntity()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DocumentRepository"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->getDocumentEntity()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->deleteDatabase(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;)Z

    move-result p1

    return p1
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public documentSubscriptionId(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;)Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;",
            ")",
            "Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository<",
            "TSpenDocument;TEntity;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->mDocumentSubscriptionId:Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;

    return-object p0
.end method

.method public getAdjustData()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentAdjustData;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAdjustData, data : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->mDocumentAdjustData:Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentAdjustData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DocumentRepository"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->mDocumentAdjustData:Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentAdjustData;

    return-object v0
.end method

.method public getCaller()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->mCaller:Ljava/lang/String;

    return-object v0
.end method

.method public getDocumentEntity()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TEntity;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->mDocumentEntity:Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;

    return-object v0
.end method

.method public getDocumentSubscriptionId()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->mDocumentSubscriptionId:Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;

    return-object v0
.end method

.method public getDocumentType()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentType;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->mDocumentType:Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentType;

    return-object v0
.end method

.method public getLoadPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->mLoadPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->getSavePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->mLoadPath:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public getLockAccountGuid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->mLockAccountGuid:Ljava/lang/String;

    return-object v0
.end method

.method public getLockConfirm()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->mLockConfirm:Ljava/lang/String;

    return-object v0
.end method

.method public getMode()I
    .locals 1
    .annotation build Lcom/samsung/android/support/senl/cm/base/spenwrapper/constants/SpenOpenMode;
    .end annotation

    iget v0, p0, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->mMode:I

    return v0
.end method

.method public getSavePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->mSavePath:Ljava/lang/String;

    return-object v0
.end method

.method public getSaveStrategy()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->mSaveStrategy:Lcom/samsung/android/support/senl/cm/base/common/util/DataStrategy;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/common/util/DataStrategy;->get()I

    move-result v0

    return v0
.end method

.method public getSpenDocument()Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TSpenDocument;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->mSpenDocument:Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;

    return-object v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->mUuid:Ljava/lang/String;

    return-object v0
.end method

.method public getWritingMode()I
    .locals 1
    .annotation build Lcom/samsung/android/support/senl/cm/base/spenwrapper/constants/WritingMode;
    .end annotation

    iget v0, p0, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->mWritingMode:I

    return v0
.end method

.method public isNewDocument()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->mIsNewDocument:Z

    return v0
.end method

.method public isSpenNoteDocType()Z
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentType;->SPEN_NOTE_DOC:Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentType;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->getDocumentType()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isSpenSDocType()Z
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentType;->SPEN_SDOC:Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentType;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->getDocumentType()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isSpenWordDocType()Z
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentType;->SPEN_SDOCX:Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentType;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->getDocumentType()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public abstract loadDatabase(Landroid/content/Context;)V
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public loadPath(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository<",
            "TSpenDocument;TEntity;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->mLoadPath:Ljava/lang/String;

    return-object p0
.end method

.method public lockConfirm(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository<",
            "TSpenDocument;TEntity;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->mLockConfirm:Ljava/lang/String;

    return-object p0
.end method

.method public removeSaveStrategy(I)Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;
    .locals 1
    .param p1    # I
        .annotation build Lcom/samsung/android/support/senl/cm/base/common/constants/SaveStrategy;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository<",
            "TSpenDocument;TEntity;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->mSaveStrategy:Lcom/samsung/android/support/senl/cm/base/common/util/DataStrategy;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/cm/base/common/util/DataStrategy;->remove(I)V

    return-object p0
.end method

.method public abstract rollbackDatabase(Landroid/content/Context;ZLcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;)Z
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "ZTEntity;TSpenDocument;",
            "Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;",
            ")Z"
        }
    .end annotation
.end method

.method public rollbackDocumentEntity(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;)Z
    .locals 8
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rollbackDocumentEntity, documentEntity : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->getDocumentEntity()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DocumentRepository"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;->isNew()Z

    move-result v4

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->getDocumentEntity()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;

    move-result-object v5

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->getSpenDocument()Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;

    move-result-object v6

    move-object v2, p0

    move-object v3, p1

    move-object v7, p2

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->rollbackDatabase(Landroid/content/Context;ZLcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;)Z

    move-result p1

    return p1
.end method

.method public abstract saveAutoTitle(Landroid/content/Context;)Z
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public saveCacheSpenDocument()Z
    .locals 6

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->getSpenDocument()Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveCacheSpenDocument, doc : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", documentEntity : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->getDocumentEntity()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DocumentRepository"

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saveCacheSpenDocument - start, isContentChanged : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;->isContentChanged()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", savePath : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->getSavePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/support/senl/nt/data/common/log/DataLogger;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/support/senl/nt/data/common/log/DataLogger;->p(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "saveCacheSpenDocument start - uuid : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->getUuid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->getSavePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/support/senl/nt/data/common/log/DataLogger;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->getSavePath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;->quickSave(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "saveCacheSpenDocument success - uuid : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->getUuid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->getSavePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/support/senl/nt/data/common/log/DataLogger;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saveCacheSpenDocument - end, isContentChanged : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;->isContentChanged()Z

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/data/common/log/DataLogger;->p(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saveCacheSpenDocument, error : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->f(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public saveDocumentEntity(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;Z)Z
    .locals 10
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->getDocumentEntity()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveDocumentEntity, entity : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " , updateModifiedTime : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DocumentRepository"

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saveDocumentEntity, documentEntity : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;->getEntity()Landroid/os/Parcelable;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;->isNew()Z

    move-result v5

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->getDocumentEntity()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;

    move-result-object v6

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->getSpenDocument()Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;

    move-result-object v7

    move-object v3, p0

    move-object v4, p1

    move-object v8, p2

    move v9, p3

    invoke-virtual/range {v3 .. v9}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->saveToDatabase(Landroid/content/Context;ZLcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;Z)Z

    move-result p1

    return p1
.end method

.method public savePath(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository<",
            "TSpenDocument;TEntity;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->mSavePath:Ljava/lang/String;

    return-object p0
.end method

.method public saveSpenDocument(Landroid/content/Context;)Z
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->getSpenDocument()Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveSpenDocument, doc : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", documentEntity : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->getDocumentEntity()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DocumentRepository"

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saveSpenDocument - start, isContentChanged : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;->isContentChanged()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", savePath : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->getSavePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/support/senl/nt/data/common/log/DataLogger;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/support/senl/nt/data/common/log/DataLogger;->p(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "saveSpenDocument start - uuid : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->getUuid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->getSavePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/support/senl/nt/data/common/log/DataLogger;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->getSavePath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, p1, v3}, Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;->save(Landroid/content/Context;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saveSpenDocument success - uuid : "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->getUuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->getSavePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/support/senl/nt/data/common/log/DataLogger;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saveSpenDocument - end, isContentChanged : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;->isContentChanged()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/samsung/android/support/senl/nt/data/common/log/DataLogger;->p(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saveSpenDocument, error : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->f(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public abstract saveToDatabase(Landroid/content/Context;ZLcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;Z)Z
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "ZTEntity;TSpenDocument;",
            "Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;",
            "Z)Z"
        }
    .end annotation
.end method

.method public setAdjustData(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentAdjustData;)Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentAdjustData;",
            ")",
            "Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository<",
            "TSpenDocument;TEntity;>;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAdjustData, data : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DocumentRepository"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->mDocumentAdjustData:Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentAdjustData;

    return-object p0
.end method

.method public setDocumentEntity(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TEntity;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->mDocumentEntity:Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;

    return-void
.end method

.method public setLockAccountGuid(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository<",
            "TSpenDocument;TEntity;>;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setLockAccountGuid, lockAccountGuid : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->pii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DocumentRepository"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->mLockAccountGuid:Ljava/lang/String;

    return-object p0
.end method

.method public setMode(I)Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;
    .locals 0
    .param p1    # I
        .annotation build Lcom/samsung/android/support/senl/cm/base/spenwrapper/constants/SpenOpenMode;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository<",
            "TSpenDocument;TEntity;>;"
        }
    .end annotation

    iput p1, p0, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->mMode:I

    return-object p0
.end method

.method public setNewDocument(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->mIsNewDocument:Z

    return-void
.end method

.method public setSaveStrategy(I)Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository<",
            "TSpenDocument;TEntity;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->mSaveStrategy:Lcom/samsung/android/support/senl/cm/base/common/util/DataStrategy;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/cm/base/common/util/DataStrategy;->set(I)V

    return-object p0
.end method

.method public setUuid(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository<",
            "TSpenDocument;TEntity;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->mUuid:Ljava/lang/String;

    return-object p0
.end method

.method public setWritingMode(I)Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;
    .locals 0
    .param p1    # I
        .annotation build Lcom/samsung/android/support/senl/cm/base/spenwrapper/constants/WritingMode;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository<",
            "TSpenDocument;TEntity;>;"
        }
    .end annotation

    iput p1, p0, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->mWritingMode:I

    return-object p0
.end method

.method public snapSaveSpenDocument()Z
    .locals 6

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->getSpenDocument()Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "snapSaveSpenDocument, doc : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", documentEntity : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->getDocumentEntity()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DocumentRepository"

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "snapSaveSpenDocument - start, isContentChanged : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;->isContentChanged()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", savePath : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->getSavePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/support/senl/nt/data/common/log/DataLogger;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/support/senl/nt/data/common/log/DataLogger;->p(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "snapSaveSpenDocument start - uuid : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->getUuid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->getSavePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/support/senl/nt/data/common/log/DataLogger;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->getSavePath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v1}, Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;->snapSave(Ljava/lang/String;Z)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "snapSaveSpenDocument success - uuid : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->getUuid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->getSavePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/support/senl/nt/data/common/log/DataLogger;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "snapSaveSpenDocument - end, isContentChanged : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;->isContentChanged()Z

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/data/common/log/DataLogger;->p(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "snapSaveSpenDocument, error : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->f(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public spenDocument(Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;)Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TSpenDocument;)",
            "Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository<",
            "TSpenDocument;TEntity;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->mSpenDocument:Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DocumentRepository{uuid=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->mUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", documentType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->mDocumentType:Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentType;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", caller=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->mCaller:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", loadPath=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->mLoadPath:Ljava/lang/String;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/data/common/log/DataLogger;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", savePath=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->mSavePath:Ljava/lang/String;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/data/common/log/DataLogger;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", lockConfirm=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->mLockConfirm:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", guid=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->mLockAccountGuid:Ljava/lang/String;

    invoke-static {v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->pii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->mDocumentSubscriptionId:Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", strategy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->mSaveStrategy:Lcom/samsung/android/support/senl/cm/base/common/util/DataStrategy;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", entity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->mDocumentEntity:Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", document="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->mSpenDocument:Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->mMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", writingMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->mWritingMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", adjustData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->mDocumentAdjustData:Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentAdjustData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateOriginalEntityWithLatest()Z
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->getDocumentEntity()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveDocumentEntity, entity : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DocumentRepository"

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;->updateOriginalEntityWithLatest()V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saveDocumentEntity, updateOriginalEntityWithLatest - e : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->mUuid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->mLoadPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->mSavePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->mLockConfirm:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->mCaller:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->mDocumentType:Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->mDocumentSubscriptionId:Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->mDocumentEntity:Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget v0, p0, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->mMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->mDocumentAdjustData:Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentAdjustData;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget p2, p0, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->mWritingMode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
