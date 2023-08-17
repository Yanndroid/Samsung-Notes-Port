.class public Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/LinkSourceContentVer3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private description:Ljava/lang/String;

.field private finalUrl:Ljava/lang/String;

.field private htmlCode:Ljava/lang/String;

.field private images:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private success:Z

.field private title:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/LinkSourceContentVer3;->success:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/LinkSourceContentVer3;->htmlCode:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/LinkSourceContentVer3;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/LinkSourceContentVer3;->description:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/LinkSourceContentVer3;->url:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/LinkSourceContentVer3;->finalUrl:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/LinkSourceContentVer3;->images:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/LinkSourceContentVer3;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getFinalUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/LinkSourceContentVer3;->finalUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getHtmlCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/LinkSourceContentVer3;->htmlCode:Ljava/lang/String;

    return-object v0
.end method

.method public getImages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/LinkSourceContentVer3;->images:Ljava/util/List;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/LinkSourceContentVer3;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/LinkSourceContentVer3;->url:Ljava/lang/String;

    return-object v0
.end method

.method public isSuccess()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/LinkSourceContentVer3;->success:Z

    return v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/LinkSourceContentVer3;->description:Ljava/lang/String;

    return-void
.end method

.method public setFinalUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/LinkSourceContentVer3;->finalUrl:Ljava/lang/String;

    return-void
.end method

.method public setHtmlCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/LinkSourceContentVer3;->htmlCode:Ljava/lang/String;

    return-void
.end method

.method public setImages(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/LinkSourceContentVer3;->images:Ljava/util/List;

    return-void
.end method

.method public setSuccess(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/LinkSourceContentVer3;->success:Z

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/LinkSourceContentVer3;->title:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/LinkSourceContentVer3;->url:Ljava/lang/String;

    return-void
.end method
