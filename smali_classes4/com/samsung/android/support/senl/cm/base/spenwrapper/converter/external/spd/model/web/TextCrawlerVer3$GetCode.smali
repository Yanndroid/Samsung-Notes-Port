.class public Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/TextCrawlerVer3$GetCode;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/TextCrawlerVer3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GetCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final mImageQuantity:I

.field private final mLinkSourceContentVer3:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/LinkSourceContentVer3;

.field public final synthetic this$0:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/TextCrawlerVer3;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/TextCrawlerVer3;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/TextCrawlerVer3$GetCode;->this$0:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/TextCrawlerVer3;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    new-instance p1, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/LinkSourceContentVer3;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/LinkSourceContentVer3;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/TextCrawlerVer3$GetCode;->mLinkSourceContentVer3:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/LinkSourceContentVer3;

    iput p2, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/TextCrawlerVer3$GetCode;->mImageQuantity:I

    return-void
.end method

.method private getDocument()Lorg/jsoup/nodes/Document;
    .locals 5

    const-string v0, "SPDToSDocXConverter$TextCrawler"

    const-string v1, "GetCode$doInBackground$getDocument"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/TextCrawlerVer3$GetCode;->mLinkSourceContentVer3:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/LinkSourceContentVer3;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/LinkSourceContentVer3;->getFinalUrl()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    invoke-static {v1}, Lorg/jsoup/Jsoup;->connect(Ljava/lang/String;)Lorg/jsoup/Connection;

    move-result-object v2

    const-string v3, "User-Agent"

    const-string v4, "Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Safari/537.36"

    invoke-interface {v2, v3, v4}, Lorg/jsoup/Connection;->header(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection;

    move-result-object v2

    const-string v3, "Accept"

    const-string v4, "text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8"

    invoke-interface {v2, v3, v4}, Lorg/jsoup/Connection;->header(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection;

    move-result-object v2

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "GetCode$doInBackground$getDocument, find cookie"

    invoke-static {v0, v4}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v1, v3}, Lorg/jsoup/Connection;->cookie(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection;

    :cond_0
    const-string v3, "GetCode$doInBackground$getDocument, start get"

    invoke-static {v0, v3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-interface {v2}, Lorg/jsoup/Connection;->get()Lorg/jsoup/nodes/Document;

    move-result-object v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GetCode$doInBackground$getDocument, IOException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/TextCrawlerVer3$GetCode;->this$0:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/TextCrawlerVer3;

    invoke-virtual {v2, v1}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/TextCrawlerBase;->request(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/jsoup/Jsoup;->parse(Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GetCode$doInBackground$getDocument, Connection Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    const-string v2, "GetCode$doInBackground$getDocument, done get"

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method private setLinkSourceContentDescription(Lorg/jsoup/nodes/Document;Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jsoup/nodes/Document;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/TextCrawlerVer3$GetCode;->mLinkSourceContentVer3:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/LinkSourceContentVer3;

    const-string v1, "description"

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p2}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/LinkSourceContentVer3;->setDescription(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/TextCrawlerVer3$GetCode;->mLinkSourceContentVer3:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/LinkSourceContentVer3;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/LinkSourceContentVer3;->getDescription()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    const-string v0, "SPDToSDocXConverter$TextCrawler"

    if-eqz p2, :cond_2

    const-string p2, "GetCode$doInBackground$setLinkSourceContentDescription, get description from doc."

    invoke-static {v0, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->text()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GetCode$doInBackground$setLinkSourceContentDescription, description: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const/16 v1, 0xc8

    if-le p2, v1, :cond_1

    const/4 p2, 0x0

    invoke-virtual {p1, p2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_1
    iget-object p2, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/TextCrawlerVer3$GetCode;->mLinkSourceContentVer3:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/LinkSourceContentVer3;

    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/LinkSourceContentVer3;->setDescription(Ljava/lang/String;)V

    :cond_2
    const-string p1, "GetCode$doInBackground$setLinkSourceContentDescription, remove script pattern."

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/TextCrawlerVer3$GetCode;->mLinkSourceContentVer3:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/LinkSourceContentVer3;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/LinkSourceContentVer3;->getDescription()Ljava/lang/String;

    move-result-object p2

    const-string v0, "<script(.*?)>(.*?)</script>"

    const-string v1, ""

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/LinkSourceContentVer3;->setDescription(Ljava/lang/String;)V

    return-void
.end method

.method private setLinkSourceContentImage()V
    .locals 2

    const-string v0, "SPDToSDocXConverter$TextCrawler"

    const-string v1, "GetCode$doInBackground$setLinkSourceContentImage"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/TextCrawlerVer3$GetCode;->mLinkSourceContentVer3:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/LinkSourceContentVer3;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/LinkSourceContentVer3;->setSuccess(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/TextCrawlerVer3$GetCode;->mLinkSourceContentVer3:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/LinkSourceContentVer3;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/LinkSourceContentVer3;->getImages()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/TextCrawlerVer3$GetCode;->mLinkSourceContentVer3:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/LinkSourceContentVer3;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/LinkSourceContentVer3;->getFinalUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/TextCrawlerVer3$GetCode;->mLinkSourceContentVer3:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/LinkSourceContentVer3;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/LinkSourceContentVer3;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/TextCrawlerVer3$GetCode;->mLinkSourceContentVer3:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/LinkSourceContentVer3;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/LinkSourceContentVer3;->setDescription(Ljava/lang/String;)V

    return-void
.end method

.method private setLinkSourceContentImages(Lorg/jsoup/nodes/Document;Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jsoup/nodes/Document;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "SPDToSDocXConverter$TextCrawler"

    const-string v1, "GetCode$doInBackground$setLinkSourceContentImages, set image uris."

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/TextCrawlerVer3$GetCode;->mImageQuantity:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const-string v0, "image"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/TextCrawlerVer3$GetCode;->mLinkSourceContentVer3:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/LinkSourceContentVer3;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/LinkSourceContentVer3;->getImages()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/TextCrawlerVer3$GetCode;->mLinkSourceContentVer3:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/LinkSourceContentVer3;

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/TextCrawlerVer3$GetCode;->this$0:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/TextCrawlerVer3;

    iget v1, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/TextCrawlerVer3$GetCode;->mImageQuantity:I

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/TextCrawlerBase;->getImages(Lorg/jsoup/nodes/Document;I)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/LinkSourceContentVer3;->setImages(Ljava/util/List;)V

    :goto_0
    return-void
.end method

.method private setLinkSourceContentNotImage()V
    .locals 5

    invoke-direct {p0}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/TextCrawlerVer3$GetCode;->getDocument()Lorg/jsoup/nodes/Document;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/TextCrawlerVer3$GetCode;->mLinkSourceContentVer3:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/LinkSourceContentVer3;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/LinkSourceContentVer3;->setSuccess(Z)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/TextCrawlerVer3$GetCode;->mLinkSourceContentVer3:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/LinkSourceContentVer3;

    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/Utils;->extendedTrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/LinkSourceContentVer3;->setHtmlCode(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/TextCrawlerVer3$GetCode;->mLinkSourceContentVer3:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/LinkSourceContentVer3;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/LinkSourceContentVer3;->getFinalUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "://"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    const-string v1, ""

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GetCode$doInBackground$setLinkSourceContentNotImage, schemeHost: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SPDToSDocXConverter$TextCrawler"

    invoke-static {v3, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/TextCrawlerVer3$GetCode;->this$0:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/TextCrawlerVer3;

    iget-object v4, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/TextCrawlerVer3$GetCode;->mLinkSourceContentVer3:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/LinkSourceContentVer3;

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/LinkSourceContentVer3;->getHtmlCode()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v1}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/TextCrawlerVer3;->a(Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/TextCrawlerVer3;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/TextCrawlerVer3$GetCode;->setLinkSourceContentTitle(Lorg/jsoup/nodes/Document;Ljava/util/HashMap;)V

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/TextCrawlerVer3$GetCode;->setLinkSourceContentDescription(Lorg/jsoup/nodes/Document;Ljava/util/HashMap;)V

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/TextCrawlerVer3$GetCode;->setLinkSourceContentImages(Lorg/jsoup/nodes/Document;Ljava/util/HashMap;)V

    const-string v0, "GetCode$doInBackground, setSuccess"

    invoke-static {v3, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/TextCrawlerVer3$GetCode;->mLinkSourceContentVer3:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/LinkSourceContentVer3;

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private setLinkSourceContentTitle(Lorg/jsoup/nodes/Document;Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jsoup/nodes/Document;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/TextCrawlerVer3$GetCode;->mLinkSourceContentVer3:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/LinkSourceContentVer3;

    const-string v1, "title"

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p2}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/LinkSourceContentVer3;->setTitle(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/TextCrawlerVer3$GetCode;->mLinkSourceContentVer3:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/LinkSourceContentVer3;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/LinkSourceContentVer3;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    const-string p2, "SPDToSDocXConverter$TextCrawler"

    const-string v0, "GetCode$doInBackground$setLinkSourceContentTitle, get title from title tag."

    invoke-static {p2, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/jsoup/nodes/Document;->title()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GetCode$doInBackground$setLinkSourceContentTitle, title: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const/16 v0, 0x31

    if-le p2, v0, :cond_2

    const/4 p2, 0x0

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_2
    iget-object p2, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/TextCrawlerVer3$GetCode;->mLinkSourceContentVer3:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/LinkSourceContentVer3;

    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/LinkSourceContentVer3;->setTitle(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/TextCrawlerVer3$GetCode;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public varargs doInBackground([Ljava/lang/String;)Ljava/lang/Void;
    .locals 3

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-static {p1}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/Utils;->matches(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/TextCrawlerVer3$GetCode;->mLinkSourceContentVer3:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/LinkSourceContentVer3;

    const-string v1, ""

    invoke-virtual {p1, v1}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/LinkSourceContentVer3;->setFinalUrl(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/TextCrawlerVer3$GetCode;->mLinkSourceContentVer3:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/LinkSourceContentVer3;

    iget-object v2, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/TextCrawlerVer3$GetCode;->this$0:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/TextCrawlerVer3;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/Utils;->extendedTrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/TextCrawlerBase;->unshortenUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/LinkSourceContentVer3;->setFinalUrl(Ljava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/TextCrawlerVer3$GetCode;->mLinkSourceContentVer3:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/LinkSourceContentVer3;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/LinkSourceContentVer3;->getFinalUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/TextCrawlerVer3$GetCode;->this$0:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/TextCrawlerVer3;

    iget-object v1, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/TextCrawlerVer3$GetCode;->mLinkSourceContentVer3:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/LinkSourceContentVer3;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/LinkSourceContentVer3;->getFinalUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/TextCrawlerBase;->isImage(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/TextCrawlerVer3$GetCode;->mLinkSourceContentVer3:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/LinkSourceContentVer3;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/LinkSourceContentVer3;->getFinalUrl()Ljava/lang/String;

    move-result-object p1

    const-string v1, "dropbox"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/TextCrawlerVer3$GetCode;->setLinkSourceContentImage()V

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/TextCrawlerVer3$GetCode;->setLinkSourceContentNotImage()V

    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/TextCrawlerVer3$GetCode;->mLinkSourceContentVer3:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/LinkSourceContentVer3;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/LinkSourceContentVer3;->getFinalUrl()Ljava/lang/String;

    move-result-object p1

    const-string v1, "&"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/TextCrawlerVer3$GetCode;->mLinkSourceContentVer3:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/LinkSourceContentVer3;

    aget-object p1, p1, v0

    invoke-virtual {v1, p1}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/LinkSourceContentVer3;->setUrl(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/TextCrawlerVer3$GetCode;->mLinkSourceContentVer3:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/LinkSourceContentVer3;

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/TextCrawlerVer3$GetCode;->this$0:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/TextCrawlerVer3;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/LinkSourceContentVer3;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/TextCrawlerBase;->stripTags(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/LinkSourceContentVer3;->setDescription(Ljava/lang/String;)V

    const-string p1, "SPDToSDocXConverter$TextCrawler"

    const-string v0, "GetCode$doInBackground, done"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public executeSync(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/LinkSourceContentVer3;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/TextCrawlerVer3$GetCode;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    iget-object p1, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/TextCrawlerVer3$GetCode;->mLinkSourceContentVer3:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/LinkSourceContentVer3;

    return-object p1
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/TextCrawlerVer3$GetCode;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method public onPostExecute(Ljava/lang/Void;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 0

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    return-void
.end method
