.class public Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$Image;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$DownloadAble;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Image"
.end annotation


# direct methods
.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$DownloadAble;-><init>(Landroid/net/Uri;Ljava/lang/String;)V

    const/4 p1, 0x1

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$Base;->mType:I

    return-void
.end method


# virtual methods
.method public convertToSpenObject(Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$ConvertContract;)Lcom/samsung/android/sdk/pen/document/SpenObjectBase;
    .locals 1

    new-instance p1, Lcom/samsung/android/sdk/pen/document/SpenObjectImage;

    invoke-direct {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectImage;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$DownloadAble;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectImage;->setImage(Ljava/lang/String;)V

    return-object p1
.end method
