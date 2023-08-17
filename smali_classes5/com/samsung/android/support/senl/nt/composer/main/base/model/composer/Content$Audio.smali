.class public Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$Audio;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$DownloadAble;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Audio"
.end annotation


# instance fields
.field public mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$DownloadAble;-><init>(Landroid/net/Uri;Ljava/lang/String;)V

    const/4 p1, 0x2

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$Base;->mType:I

    return-void
.end method


# virtual methods
.method public convertToSpenObject(Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$ConvertContract;)Lcom/samsung/android/sdk/pen/document/SpenObjectBase;
    .locals 3

    new-instance v0, Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;

    invoke-direct {v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$DownloadAble;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$Audio;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$ConvertContract;->getNewVoiceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;->setTitle(Ljava/lang/String;)V

    const/4 p1, 0x4

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;->setState(I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;->attachFile(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->isAddingValidated(Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$Audio;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$Audio;->mTitle:Ljava/lang/String;

    return-void
.end method
