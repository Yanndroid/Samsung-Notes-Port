.class public Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/model/ImportDocumentModel;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mCategory:Ljava/lang/String;

.field private mDataType:I

.field private mImportItem:Ld1/d;

.field private mIsChecked:Z

.field private mMemoMetaDataItem:Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/model/ImportDocumentModel;->mIsChecked:Z

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/model/ImportDocumentModel;->mDataType:I

    return-void
.end method


# virtual methods
.method public getCategory()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/model/ImportDocumentModel;->mCategory:Ljava/lang/String;

    return-object v0
.end method

.method public getDataType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/model/ImportDocumentModel;->mDataType:I

    return v0
.end method

.method public getImportItem()Ld1/d;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/model/ImportDocumentModel;->mImportItem:Ld1/d;

    return-object v0
.end method

.method public getIsChecked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/model/ImportDocumentModel;->mIsChecked:Z

    return v0
.end method

.method public getMemoMetaDataItem()Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/model/ImportDocumentModel;->mMemoMetaDataItem:Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;

    return-object v0
.end method

.method public setCategory(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/model/ImportDocumentModel;->mCategory:Ljava/lang/String;

    return-void
.end method

.method public setDataType(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/model/ImportDocumentModel;->mDataType:I

    return-void
.end method

.method public setImportItem(Ld1/d;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/model/ImportDocumentModel;->mImportItem:Ld1/d;

    return-void
.end method

.method public setIsChecked(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/model/ImportDocumentModel;->mIsChecked:Z

    return-void
.end method

.method public setMemoMetaDataItem(Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/model/ImportDocumentModel;->mMemoMetaDataItem:Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;

    return-void
.end method
