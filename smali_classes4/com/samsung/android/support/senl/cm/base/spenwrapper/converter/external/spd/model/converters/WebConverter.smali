.class public Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/converters/WebConverter;
.super Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/converters/AbsObjectConverter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/converters/AbsObjectConverter<",
        "Lcom/samsung/android/sdk/pen/document/SpenObjectImage;",
        ">;"
    }
.end annotation


# static fields
.field private static final SETTINGS_PREFS_NAME:Ljava/lang/String; = "Settings"

.field private static final SETTINGS_SHOW_WEB_PREVIEWS:Ljava/lang/String; = "settings_show_web_previews"

.field private static final TAG:Ljava/lang/String; = "SPDToSDocXConverter$WebConverter"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/converters/AbsObjectConverter;-><init>()V

    return-void
.end method

.method private isShowWebPreviewsEnabled()Z
    .locals 3

    const-string v0, "Settings"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    const-string v1, "settings_show_web_previews"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public bridge synthetic convertObject(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/converters/IConvertParams;)Z
    .locals 0

    check-cast p1, Lcom/samsung/android/sdk/pen/document/SpenObjectImage;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/converters/WebConverter;->convertObject(Lcom/samsung/android/sdk/pen/document/SpenObjectImage;Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/converters/IConvertParams;)Z

    move-result p1

    return p1
.end method

.method public convertObject(Lcom/samsung/android/sdk/pen/document/SpenObjectImage;Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/converters/IConvertParams;)Z
    .locals 5

    const-string v0, "SPDToSDocXConverter$WebConverter"

    const-string v1, "convert object"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/converters/IConvertParams;->getNoteComposer()Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/converters/INoteComposer;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/constructor/SpenObjectConstructor;->makeObjectWeb()Lcom/samsung/android/sdk/pen/document/SpenObjectWeb;

    move-result-object v2

    const-string v3, "Info"

    invoke-virtual {p1, v3}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getExtraDataString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string p1, "convert fail:  URL is empty"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-interface {v1}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/converters/INoteComposer;->getCachePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/converters/WebConverter;->isShowWebPreviewsEnabled()Z

    move-result v4

    invoke-interface {p2}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/converters/IConvertParams;->getResourceGetter()Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/converters/IResourceGetter;

    move-result-object p2

    invoke-interface {p2}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/converters/IResourceGetter;->getScreenMinSize()F

    move-result p2

    invoke-static {v3, v0, v4, p2}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/WebCardDataVer3;->createWebCard(Ljava/lang/String;Ljava/lang/String;ZF)Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/WebCardDataVer3;

    move-result-object p2

    iget-object v0, p2, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/WebCardDataBase;->url:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectWeb;->setUri(Ljava/lang/String;)V

    iget-object v0, p2, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/WebCardDataBase;->path:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectWeb;->setThumbnailPath(Ljava/lang/String;)V

    iget-object v0, p2, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/WebCardDataBase;->title:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectWeb;->setTitle(Ljava/lang/String;)V

    iget v0, p2, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/WebCardDataBase;->imageTypeId:I

    invoke-virtual {v2, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectWeb;->setImageTypeId(I)V

    iget-object p2, p2, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/WebCardDataBase;->description:Ljava/lang/String;

    invoke-virtual {v2, p2}, Lcom/samsung/android/sdk/pen/document/SpenObjectWeb;->setBody(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getRect()Landroid/graphics/RectF;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {v2, p2, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->setRect(Landroid/graphics/RectF;Z)V

    invoke-interface {v1, p1}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/converters/INoteComposer;->removeObject(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)V

    invoke-interface {v1, v2}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/converters/INoteComposer;->appendObject(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)V

    return v0
.end method
