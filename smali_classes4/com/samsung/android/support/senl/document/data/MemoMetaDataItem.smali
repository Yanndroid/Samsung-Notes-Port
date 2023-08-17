.class public Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final SCRAP_BOOK_TYPE_IMAGE:I = 0x1

.field public static final SCRAP_BOOK_TYPE_MUSIC:I = 0x2

.field public static final SCRAP_BOOK_TYPE_TEXT:I = 0x5

.field public static final SCRAP_BOOK_TYPE_WEB:I = 0x4

.field public static final SCRAP_BOOK_TYPE_YOUTUBE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "MemoMetaDataItem"


# instance fields
.field private mAudioPath:Ljava/lang/String;

.field private mCategoryName:Ljava/lang/String;

.field private mCategoryOrder:Ljava/lang/String;

.field private mContent:Ljava/lang/String;

.field private mCreatedAt:Ljava/lang/String;

.field private mHasImage:Z

.field private mHasVoice:Z

.field private mImageFile:Lcom/samsung/android/support/senl/document/data/ConverterFileDataAdapter;

.field private mIsFavorite:Z

.field private mLastModifiedAt:Ljava/lang/String;

.field private mScrapBookBodyText:Ljava/lang/String;

.field private mScrapBookDrawingMemoPath:Ljava/lang/String;

.field private mScrapBookHTMLPath:Ljava/lang/String;

.field private mScrapBookOriImagePath:Ljava/lang/String;

.field private mScrapBookType:I

.field private mTitle:Ljava/lang/String;

.field private mURL:Ljava/lang/String;

.field private mUuid:Ljava/lang/String;

.field private mVideoPath:Ljava/lang/String;

.field private mVoiceRuntime:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;->mTitle:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;->mContent:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;->mCategoryName:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;->mCategoryOrder:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;->mHasVoice:Z

    iput-boolean v1, p0, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;->mHasImage:Z

    iput-boolean v1, p0, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;->mIsFavorite:Z

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;->mImageFile:Lcom/samsung/android/support/senl/document/data/ConverterFileDataAdapter;

    const-string v2, "0"

    iput-object v2, p0, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;->mLastModifiedAt:Ljava/lang/String;

    iput-object v2, p0, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;->mCreatedAt:Ljava/lang/String;

    iput-object v2, p0, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;->mVoiceRuntime:Ljava/lang/String;

    const-string v2, ""

    iput-object v2, p0, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;->mUuid:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;->mVideoPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;->mURL:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;->mAudioPath:Ljava/lang/String;

    iput v1, p0, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;->mScrapBookType:I

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;->mScrapBookBodyText:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;->mScrapBookHTMLPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;->mScrapBookOriImagePath:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;->mScrapBookDrawingMemoPath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAudioPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;->mAudioPath:Ljava/lang/String;

    return-object v0
.end method

.method public getCategoryName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;->mCategoryName:Ljava/lang/String;

    return-object v0
.end method

.method public getCategoryOrder()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;->mCategoryOrder:Ljava/lang/String;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;->mContent:Ljava/lang/String;

    return-object v0
.end method

.method public getCreatedAt()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;->mCreatedAt:Ljava/lang/String;

    return-object v0
.end method

.method public getHasImage()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;->mHasImage:Z

    return v0
.end method

.method public getHasVoice()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;->mHasVoice:Z

    return v0
.end method

.method public getImageFile()Lcom/samsung/android/support/senl/document/data/ConverterFileDataAdapter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;->mImageFile:Lcom/samsung/android/support/senl/document/data/ConverterFileDataAdapter;

    return-object v0
.end method

.method public getIsFavorite()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;->mIsFavorite:Z

    return v0
.end method

.method public getLastModifiedAt()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;->mLastModifiedAt:Ljava/lang/String;

    return-object v0
.end method

.method public getScrapBookBodyText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;->mScrapBookBodyText:Ljava/lang/String;

    return-object v0
.end method

.method public getScrapBookHTMLPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;->mScrapBookHTMLPath:Ljava/lang/String;

    return-object v0
.end method

.method public getScrapbookDrawingMemoPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;->mScrapBookDrawingMemoPath:Ljava/lang/String;

    return-object v0
.end method

.method public getScrapbookOriImagePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;->mScrapBookOriImagePath:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeForScrapBook()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;->mScrapBookType:I

    return v0
.end method

.method public getURL()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;->mURL:Ljava/lang/String;

    return-object v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;->mUuid:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;->mVideoPath:Ljava/lang/String;

    return-object v0
.end method

.method public getVoiceRuntime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;->mVoiceRuntime:Ljava/lang/String;

    return-object v0
.end method

.method public setAudioPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;->mAudioPath:Ljava/lang/String;

    return-void
.end method

.method public setCategoryName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;->mCategoryName:Ljava/lang/String;

    return-void
.end method

.method public setCategoryOrder(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;->mCategoryOrder:Ljava/lang/String;

    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;->mContent:Ljava/lang/String;

    return-void
.end method

.method public setCreatedAt(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;->mCreatedAt:Ljava/lang/String;

    return-void
.end method

.method public setHasImage(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;->mHasImage:Z

    return-void
.end method

.method public setHasVoice(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;->mHasVoice:Z

    return-void
.end method

.method public setImageFile(Lcom/samsung/android/support/senl/document/data/ConverterFileDataAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;->mImageFile:Lcom/samsung/android/support/senl/document/data/ConverterFileDataAdapter;

    return-void
.end method

.method public setIsFavorite(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;->mIsFavorite:Z

    return-void
.end method

.method public setLastModifiedAt(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;->mLastModifiedAt:Ljava/lang/String;

    return-void
.end method

.method public setScrapBookBodyText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;->mScrapBookBodyText:Ljava/lang/String;

    return-void
.end method

.method public setScrapBookDrawingMemoPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;->mScrapBookDrawingMemoPath:Ljava/lang/String;

    return-void
.end method

.method public setScrapBookHTMLPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;->mScrapBookHTMLPath:Ljava/lang/String;

    return-void
.end method

.method public setScrapBookOriImagePath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;->mScrapBookOriImagePath:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;->mTitle:Ljava/lang/String;

    return-void
.end method

.method public setTypeForScrapBook(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;->mScrapBookType:I

    return-void
.end method

.method public setURL(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;->mURL:Ljava/lang/String;

    return-void
.end method

.method public setUuid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;->mUuid:Ljava/lang/String;

    return-void
.end method

.method public setVideoPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;->mVideoPath:Ljava/lang/String;

    return-void
.end method

.method public setVoiceRuntime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;->mVoiceRuntime:Ljava/lang/String;

    return-void
.end method
