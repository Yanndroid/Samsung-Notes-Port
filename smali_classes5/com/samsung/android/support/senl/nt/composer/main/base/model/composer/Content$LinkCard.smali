.class public Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$LinkCard;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$WebCard;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LinkCard"
.end annotation


# instance fields
.field private mAction:Ljava/lang/String;

.field private mIconType:I

.field private final mPackage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$WebCard;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$LinkCard;->mPackage:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$LinkCard;->mAction:Ljava/lang/String;

    const/4 p1, 0x4

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$Base;->mType:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$LinkCard;->mIconType:I

    return-void
.end method


# virtual methods
.method public convertToSpenObject(Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$ConvertContract;)Lcom/samsung/android/sdk/pen/document/SpenObjectBase;
    .locals 1

    new-instance p1, Lcom/samsung/android/sdk/pen/document/SpenObjectLink;

    invoke-direct {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectLink;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$LinkCard;->mPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectLink;->setPackageName(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$WebCard;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectLink;->setTitle(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$WebCard;->getDescription()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$WebCard;->getDescription()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectLink;->setBody(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$WebCard;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectLink;->setOption(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$DownloadAble;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectLink;->setThumbnailPath(Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$LinkCard;->mIconType:I

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectLink;->setIconType(I)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectLink;->setViewType(I)V

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectLink;->setVersion(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$LinkCard;->mAction:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectLink;->setAction(Ljava/lang/String;)V

    return-object p1
.end method

.method public getAction()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$LinkCard;->mAction:Ljava/lang/String;

    return-object v0
.end method

.method public setAction(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$LinkCard;->mAction:Ljava/lang/String;

    return-void
.end method

.method public setLinkIconType()V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$LinkCard;->mIconType:I

    return-void
.end method
