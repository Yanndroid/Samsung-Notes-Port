.class public Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$WebCard;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$DownloadAble;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WebCard"
.end annotation


# instance fields
.field public mDescription:Ljava/lang/String;

.field public mImageTypeId:I

.field public mTitle:Ljava/lang/String;

.field public mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$DownloadAble;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$WebCard;->mTitle:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$WebCard;->mUrl:Ljava/lang/String;

    const/4 p1, 0x3

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$Base;->mType:I

    return-void
.end method


# virtual methods
.method public convertToSpenObject(Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$ConvertContract;)Lcom/samsung/android/sdk/pen/document/SpenObjectBase;
    .locals 1

    new-instance p1, Lcom/samsung/android/sdk/pen/document/SpenObjectWeb;

    invoke-direct {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectWeb;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$WebCard;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectWeb;->setUri(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$WebCard;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectWeb;->setTitle(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$WebCard;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectWeb;->setBody(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$DownloadAble;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectWeb;->setThumbnailPath(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$WebCard;->getImageTypeId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectWeb;->setImageTypeId(I)V

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectWeb;->setVersion(I)V

    return-object p1
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$WebCard;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getImageTypeId()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$WebCard;->mImageTypeId:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$WebCard;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$WebCard;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$WebCard;->mDescription:Ljava/lang/String;

    return-void
.end method

.method public setImageTypeId(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$WebCard;->mImageTypeId:I

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$WebCard;->mTitle:Ljava/lang/String;

    return-void
.end method
