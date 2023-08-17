.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/web/TextCrawler$GetCode;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/web/TextCrawler;
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
.field private final imageQuantity:I

.field private final linkSourceContent:Lcom/samsung/android/support/senl/nt/composer/main/base/model/web/LinkSourceContent;

.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/web/TextCrawler;

.field private urls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/web/TextCrawler;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/web/TextCrawler$GetCode;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/web/TextCrawler;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/web/LinkSourceContent;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/web/LinkSourceContent;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/web/TextCrawler$GetCode;->linkSourceContent:Lcom/samsung/android/support/senl/nt/composer/main/base/model/web/LinkSourceContent;

    iput p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/web/TextCrawler$GetCode;->imageQuantity:I

    return-void
.end method

.method private getDocument()Lorg/jsoup/nodes/Document;
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/web/TextCrawler$GetCode;->linkSourceContent:Lcom/samsung/android/support/senl/nt/composer/main/base/model/web/LinkSourceContent;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/LinkSourceContentVer3;->getFinalUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\b(https?|ftp|file)://[-a-zA-Z0-9+&@#/%?=~_|!:,.;]*[-a-zA-Z0-9+&@#/%=~_|!:,.;]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lorg/jsoup/Jsoup;->connect(Ljava/lang/String;)Lorg/jsoup/Connection;

    move-result-object v1

    const-string v2, "User-Agent"

    const-string v3, "Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Safari/537.36"

    invoke-interface {v1, v2, v3}, Lorg/jsoup/Connection;->header(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection;

    move-result-object v1

    const-string v2, "Accept"

    const-string v3, "text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8"

    invoke-interface {v1, v2, v3}, Lorg/jsoup/Connection;->header(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/TextCrawlerBase;->getCurrentAcceptLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Accept-Language"

    invoke-interface {v1, v3, v2}, Lorg/jsoup/Connection;->header(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection;

    move-result-object v1

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/web/TextCrawler;->d()Ljava/lang/String;

    move-result-object v3

    const-string v4, "GetCode$doInBackground, find cookie"

    invoke-static {v3, v4}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v0, v2}, Lorg/jsoup/Connection;->cookie(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection;

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/web/TextCrawler;->d()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GetCode$doInBackground, start get"

    invoke-static {v2, v3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-interface {v1}, Lorg/jsoup/Connection;->get()Lorg/jsoup/nodes/Document;

    move-result-object v0
    :try_end_0
    .catch Lorg/jsoup/HttpStatusException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/web/TextCrawler;->d()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GetCode$doInBackground, e: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/web/TextCrawler$GetCode;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/web/TextCrawler;

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/web/TextCrawler;->access$300(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/web/TextCrawler;Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jsoup/Jsoup;->parse(Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Ljava/net/MalformedURLException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is invalid URL to Jsoup.connect(Not English URL) because It makes Fatal Exception without java exception"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private setDescriptionContent(Lorg/jsoup/nodes/Document;)V
    .locals 3

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/web/TextCrawler;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GetCode$doInBackground, get description from doc."

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->text()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/web/TextCrawler;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GetCode$doInBackground, description: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xc8

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/web/TextCrawler$GetCode;->linkSourceContent:Lcom/samsung/android/support/senl/nt/composer/main/base/model/web/LinkSourceContent;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/LinkSourceContentVer3;->setDescription(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private setImageLinkSourceContent()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/web/TextCrawler$GetCode;->linkSourceContent:Lcom/samsung/android/support/senl/nt/composer/main/base/model/web/LinkSourceContent;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/LinkSourceContentVer3;->setSuccess(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/web/TextCrawler$GetCode;->linkSourceContent:Lcom/samsung/android/support/senl/nt/composer/main/base/model/web/LinkSourceContent;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/web/LinkSourceContent;->getImages()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/web/TextCrawler$GetCode;->linkSourceContent:Lcom/samsung/android/support/senl/nt/composer/main/base/model/web/LinkSourceContent;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/LinkSourceContentVer3;->getFinalUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/web/TextCrawler$GetCode;->linkSourceContent:Lcom/samsung/android/support/senl/nt/composer/main/base/model/web/LinkSourceContent;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/LinkSourceContentVer3;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/web/TextCrawler$GetCode;->linkSourceContent:Lcom/samsung/android/support/senl/nt/composer/main/base/model/web/LinkSourceContent;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/LinkSourceContentVer3;->setDescription(Ljava/lang/String;)V

    return-void
.end method

.method private setLinkSourceContent()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/web/TextCrawler$GetCode;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/web/TextCrawler;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/web/TextCrawler$GetCode;->linkSourceContent:Lcom/samsung/android/support/senl/nt/composer/main/base/model/web/LinkSourceContent;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/LinkSourceContentVer3;->getFinalUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/web/TextCrawler;->access$200(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/web/TextCrawler;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/web/TextCrawler$GetCode;->linkSourceContent:Lcom/samsung/android/support/senl/nt/composer/main/base/model/web/LinkSourceContent;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/LinkSourceContentVer3;->getFinalUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dropbox"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/web/TextCrawler$GetCode;->setImageLinkSourceContent()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/web/TextCrawler$GetCode;->setNormalLinkSourceContent()V

    :goto_0
    return-void
.end method

.method private setNormalLinkSourceContent()V
    .locals 7

    const-string v0, "image"

    :try_start_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/web/TextCrawler;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GetCode$doInBackground"

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/web/TextCrawler$GetCode;->getDocument()Lorg/jsoup/nodes/Document;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/web/TextCrawler;->d()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GetCode$doInBackground, done get"

    invoke-static {v2, v3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/web/TextCrawler$GetCode;->linkSourceContent:Lcom/samsung/android/support/senl/nt/composer/main/base/model/web/LinkSourceContent;

    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/web/Utils;->extendedTrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/LinkSourceContentVer3;->setHtmlCode(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/web/TextCrawler$GetCode;->linkSourceContent:Lcom/samsung/android/support/senl/nt/composer/main/base/model/web/LinkSourceContent;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/LinkSourceContentVer3;->getFinalUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, ""

    if-eqz v2, :cond_0

    :try_start_1
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "://"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/web/TextCrawler;->d()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GetCode$doInBackground, schemeHost: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/web/TextCrawler$GetCode;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/web/TextCrawler;

    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/web/TextCrawler$GetCode;->linkSourceContent:Lcom/samsung/android/support/senl/nt/composer/main/base/model/web/LinkSourceContent;

    invoke-virtual {v5}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/LinkSourceContentVer3;->getHtmlCode()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/web/TextCrawler;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/web/TextCrawler;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/web/TextCrawler$GetCode;->linkSourceContent:Lcom/samsung/android/support/senl/nt/composer/main/base/model/web/LinkSourceContent;

    invoke-virtual {v4, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/web/LinkSourceContent;->setMetaTags(Ljava/util/HashMap;)V

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/web/TextCrawler$GetCode;->linkSourceContent:Lcom/samsung/android/support/senl/nt/composer/main/base/model/web/LinkSourceContent;

    const-string v5, "title"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/LinkSourceContentVer3;->setTitle(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/web/TextCrawler$GetCode;->linkSourceContent:Lcom/samsung/android/support/senl/nt/composer/main/base/model/web/LinkSourceContent;

    const-string v5, "description"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/LinkSourceContentVer3;->setDescription(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/web/TextCrawler$GetCode;->linkSourceContent:Lcom/samsung/android/support/senl/nt/composer/main/base/model/web/LinkSourceContent;

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/LinkSourceContentVer3;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-direct {p0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/web/TextCrawler$GetCode;->setTitleContent(Lorg/jsoup/nodes/Document;)V

    :cond_1
    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/web/TextCrawler$GetCode;->linkSourceContent:Lcom/samsung/android/support/senl/nt/composer/main/base/model/web/LinkSourceContent;

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/LinkSourceContentVer3;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-direct {p0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/web/TextCrawler$GetCode;->setDescriptionContent(Lorg/jsoup/nodes/Document;)V

    :cond_2
    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/web/TextCrawler;->d()Ljava/lang/String;

    move-result-object v4

    const-string v5, "GetCode$doInBackground, remove script pattern."

    invoke-static {v4, v5}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/web/TextCrawler$GetCode;->linkSourceContent:Lcom/samsung/android/support/senl/nt/composer/main/base/model/web/LinkSourceContent;

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/LinkSourceContentVer3;->getDescription()Ljava/lang/String;

    move-result-object v5

    const-string v6, "<script(.*?)>(.*?)</script>"

    invoke-virtual {v5, v6, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/LinkSourceContentVer3;->setDescription(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/web/TextCrawler;->d()Ljava/lang/String;

    move-result-object v3

    const-string v4, "GetCode$doInBackground, set image uris."

    invoke-static {v3, v4}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/web/TextCrawler$GetCode;->imageQuantity:I

    const/4 v4, -0x2

    if-eq v3, v4, :cond_4

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/web/TextCrawler$GetCode;->linkSourceContent:Lcom/samsung/android/support/senl/nt/composer/main/base/model/web/LinkSourceContent;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/web/LinkSourceContent;->getImages()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/web/TextCrawler$GetCode;->linkSourceContent:Lcom/samsung/android/support/senl/nt/composer/main/base/model/web/LinkSourceContent;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/web/TextCrawler$GetCode;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/web/TextCrawler;

    iget v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/web/TextCrawler$GetCode;->imageQuantity:I

    invoke-virtual {v2, v1, v3}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/TextCrawlerBase;->getImages(Lorg/jsoup/nodes/Document;I)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/web/LinkSourceContent;->setImages(Ljava/util/List;)V

    :cond_4
    :goto_1
    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/web/TextCrawler;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GetCode$doInBackground, setSuccess"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/web/TextCrawler$GetCode;->linkSourceContent:Lcom/samsung/android/support/senl/nt/composer/main/base/model/web/LinkSourceContent;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/LinkSourceContentVer3;->setSuccess(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/web/TextCrawler$GetCode;->linkSourceContent:Lcom/samsung/android/support/senl/nt/composer/main/base/model/web/LinkSourceContent;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/LinkSourceContentVer3;->setSuccess(Z)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/web/TextCrawler;->d()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GetCode$doInBackground, e : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method private setTitleContent(Lorg/jsoup/nodes/Document;)V
    .locals 3

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/web/TextCrawler;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GetCode$doInBackground, get title from title tag."

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/jsoup/nodes/Document;->title()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/web/TextCrawler;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GetCode$doInBackground, title: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x31

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/web/TextCrawler$GetCode;->linkSourceContent:Lcom/samsung/android/support/senl/nt/composer/main/base/model/web/LinkSourceContent;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/LinkSourceContentVer3;->setTitle(Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/web/TextCrawler$GetCode;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public varargs doInBackground([Ljava/lang/String;)Ljava/lang/Void;
    .locals 3

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/web/Utils;->matches(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/web/TextCrawler$GetCode;->urls:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/web/TextCrawler$GetCode;->linkSourceContent:Lcom/samsung/android/support/senl/nt/composer/main/base/model/web/LinkSourceContent;

    const-string v1, ""

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/web/TextCrawler$GetCode;->linkSourceContent:Lcom/samsung/android/support/senl/nt/composer/main/base/model/web/LinkSourceContent;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/web/TextCrawler$GetCode;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/web/TextCrawler;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/web/TextCrawler$GetCode;->urls:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/web/Utils;->extendedTrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/web/TextCrawler;->access$000(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/web/TextCrawler;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {p1, v1}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/LinkSourceContentVer3;->setFinalUrl(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/web/TextCrawler$GetCode;->linkSourceContent:Lcom/samsung/android/support/senl/nt/composer/main/base/model/web/LinkSourceContent;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/LinkSourceContentVer3;->getFinalUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/web/TextCrawler$GetCode;->setLinkSourceContent()V

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/web/TextCrawler$GetCode;->linkSourceContent:Lcom/samsung/android/support/senl/nt/composer/main/base/model/web/LinkSourceContent;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/LinkSourceContentVer3;->getFinalUrl()Ljava/lang/String;

    move-result-object p1

    const-string v1, "&"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/web/TextCrawler$GetCode;->linkSourceContent:Lcom/samsung/android/support/senl/nt/composer/main/base/model/web/LinkSourceContent;

    aget-object p1, p1, v0

    invoke-virtual {v1, p1}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/LinkSourceContentVer3;->setUrl(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/web/TextCrawler$GetCode;->linkSourceContent:Lcom/samsung/android/support/senl/nt/composer/main/base/model/web/LinkSourceContent;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/web/TextCrawler$GetCode;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/web/TextCrawler;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/LinkSourceContentVer3;->getFinalUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/web/TextCrawler;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/web/TextCrawler;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/web/LinkSourceContent;->setCannonicalUrl(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/web/TextCrawler$GetCode;->linkSourceContent:Lcom/samsung/android/support/senl/nt/composer/main/base/model/web/LinkSourceContent;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/web/TextCrawler$GetCode;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/web/TextCrawler;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/LinkSourceContentVer3;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/web/TextCrawler;->access$100(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/web/TextCrawler;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/LinkSourceContentVer3;->setDescription(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/web/TextCrawler;->d()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GetCode$doInBackground, done"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public executeSync(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/web/LinkSourceContent;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/web/TextCrawler$GetCode;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/web/TextCrawler$GetCode;->linkSourceContent:Lcom/samsung/android/support/senl/nt/composer/main/base/model/web/LinkSourceContent;

    return-object p1
.end method

.method public isNull()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/web/TextCrawler$GetCode;->linkSourceContent:Lcom/samsung/android/support/senl/nt/composer/main/base/model/web/LinkSourceContent;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/LinkSourceContentVer3;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/web/TextCrawler$GetCode;->linkSourceContent:Lcom/samsung/android/support/senl/nt/composer/main/base/model/web/LinkSourceContent;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/LinkSourceContentVer3;->getHtmlCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/web/Utils;->extendedTrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/web/TextCrawler$GetCode;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/web/TextCrawler;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/web/TextCrawler$GetCode;->linkSourceContent:Lcom/samsung/android/support/senl/nt/composer/main/base/model/web/LinkSourceContent;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/LinkSourceContentVer3;->getFinalUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/web/TextCrawler;->access$400(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/web/TextCrawler;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/web/TextCrawler$GetCode;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method public onPostExecute(Ljava/lang/Void;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/web/TextCrawler$GetCode;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/web/TextCrawler;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/web/TextCrawler;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/web/TextCrawler;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/web/LinkViewCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/web/TextCrawler$GetCode;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/web/TextCrawler;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/web/TextCrawler;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/web/TextCrawler;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/web/LinkViewCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/web/TextCrawler$GetCode;->linkSourceContent:Lcom/samsung/android/support/senl/nt/composer/main/base/model/web/LinkSourceContent;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/web/TextCrawler$GetCode;->isNull()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/web/LinkViewCallback;->onAfterLoading(Lcom/samsung/android/support/senl/nt/composer/main/base/model/web/LinkSourceContent;Z)V

    :cond_0
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/web/TextCrawler$GetCode;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/web/TextCrawler;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/web/TextCrawler;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/web/TextCrawler;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/web/LinkViewCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/web/TextCrawler$GetCode;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/web/TextCrawler;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/web/TextCrawler;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/web/TextCrawler;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/web/LinkViewCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/web/LinkViewCallback;->onBeforeLoading()V

    :cond_0
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    return-void
.end method
