.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuPlay;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuItem;
.source "SourceFile"


# static fields
.field private static final EXTRA_DATA_INFO_VIDEO:I = 0xc

.field private static final EXTRA_DATA_INFO_VIDEOFRAME:I = 0xd

.field private static final EXTRA_DATA_INFO_VOICE:I = 0x17

.field private static final EXTRA_DATA_INFO_YOUTUBE:I = 0xe

.field private static final EXTRA_DATA_KEY_TIME:Ljava/lang/String; = "time"

.field private static final EXTRA_DATA_KEY_TYPE:Ljava/lang/String; = "Type"

.field private static final EXTRA_DATA_KEY_YOUTUBEID:Ljava/lang/String; = "YoutubeID"

.field private static final KEY_VOICE_BOOKMARK_IDENTIFIER:Ljava/lang/String; = "NOTES_APP_BOOKMARK_VOICE_IDENTIFIER"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDialogPresenterManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;

.field private mObjectManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

.field private mStartTime:I

.field private mVoicePlayPreparedListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/VoiceRecordingController$VoicePlayPreparedListener;

.field private mVoiceRecordMenuPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordMenuPresenter;

.field private mVoiceRecordingController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/VoiceRecordingController;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "ContextMenuPlay"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuPlay;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/VoiceRecordingController;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordMenuPresenter;)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuItem;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuPlay;->mStartTime:I

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuPlay$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuPlay$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuPlay;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuPlay;->mVoicePlayPreparedListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/VoiceRecordingController$VoicePlayPreparedListener;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->getObjectManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuPlay;->mObjectManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuPlay;->mDialogPresenterManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuPlay;->mVoiceRecordingController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/VoiceRecordingController;

    iput-object p4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuPlay;->mVoiceRecordMenuPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordMenuPresenter;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuPlay;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuPlay;->mStartTime:I

    return p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuPlay;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/VoiceRecordingController;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuPlay;->mVoiceRecordingController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/VoiceRecordingController;

    return-object p0
.end method

.method public static bridge synthetic c()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuPlay;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private findVoiceObject(Ljava/lang/String;)Lcom/samsung/android/sdk/pen/document/SpenObjectBase;
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuPlay;->mObjectManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->getNote()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    const/16 v2, 0x200

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getObjectList(I)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getAttachedFile()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    check-cast v4, Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v3, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_3
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_4
    return-object v2

    :cond_5
    const/4 p1, 0x0

    return-object p1
.end method

.method private getIntentToPlayOnYouTubeApp(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vnd.youtube:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    return-object v0
.end method

.method private getIntentToPlayOnYouTubeHttp(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://www.youtube.com/watch?v="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    return-object v0
.end method

.method private getYoutubeID(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)Ljava/lang/String;
    .locals 1

    const-string v0, "YoutubeID"

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getSorDataString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private isVideoObject(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)Z
    .locals 3

    const-string v0, "Type"

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getExtraDataInt(Ljava/lang/String;)I

    move-result p1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuPlay;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isVideoObject : type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xc

    if-eq p1, v0, :cond_1

    const/16 v0, 0xd

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private isVoiceMemoObject(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)Z
    .locals 5

    const-string v0, "Type"

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getExtraDataInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x17

    if-ne v1, v2, :cond_1

    const-string v1, "NOTES_APP_BOOKMARK_VOICE_IDENTIFIER"

    invoke-virtual {p1, v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->hasExtraDataString(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1, v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getExtraDataString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuPlay;->findVoiceObject(Ljava/lang/String;)Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    move-result-object v1

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    return v3

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getType()I

    move-result v1

    const/4 v4, 0x4

    if-ne v1, v4, :cond_1

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getExtraDataInt(Ljava/lang/String;)I

    move-result p1

    if-ne p1, v2, :cond_1

    return v3

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private isYoutubeObject(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)Z
    .locals 3

    const-string v0, "Type"

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getExtraDataInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xe

    if-ne v0, v1, :cond_0

    const-string v0, "YoutubeID"

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getSorDataString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuPlay;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isYoutubeObject() : videoId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private playVideo(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuPlay;->mObjectManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->playVideo(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)Z

    move-result p1

    return p1
.end method

.method private playVoice(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuPlay;->mVoiceRecordMenuPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordMenuPresenter;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordMenuPresenter;->setSPDVoiceTagPath(Ljava/lang/String;)V

    const-string v0, "NOTES_APP_BOOKMARK_VOICE_IDENTIFIER"

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getExtraDataString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "time"

    invoke-virtual {p1, v2}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->hasExtraDataInt(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1, v2}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getExtraDataInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuPlay;->mStartTime:I

    :cond_0
    sget-object v2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuPlay;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "playVoice( "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " / "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuPlay;->mStartTime:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " ) "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuPlay;->findVoiceObject(Ljava/lang/String;)Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string p1, "playVoice# play start"

    invoke-static {v2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuPlay;->mVoiceRecordingController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/VoiceRecordingController;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuPlay;->mVoicePlayPreparedListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/VoiceRecordingController$VoicePlayPreparedListener;

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/VoiceRecordingController;->setVoicePlayPreparedListener(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/VoiceRecordingController$VoicePlayPreparedListener;)V

    check-cast v1, Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;

    invoke-static {v1}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->play(Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;)Z

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getType()I

    move-result v1

    const/4 v3, 0x4

    if-ne v1, v3, :cond_4

    const-string v1, "Type"

    invoke-virtual {p1, v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getExtraDataInt(Ljava/lang/String;)I

    move-result v1

    const/16 v3, 0x17

    if-ne v1, v3, :cond_4

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/constructor/SpenObjectConstructor;->makeObjectVoice()Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getAttachedFile()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    const-string p1, "getAttachedFile null"

    invoke-static {v2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-virtual {v1, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;->attachFile(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_3

    const-string p1, "attachedFile invalid"

    invoke-static {v2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/data/common/utils/VoiceTimeDataUtils;->getPlayTime(Ljava/lang/String;)I

    move-result v4

    div-int/lit16 v4, v4, 0x3e8

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/samsung/android/support/senl/nt/data/common/utils/VoiceTimeDataUtils;->createTimeString(IZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;->setPlayTime(Ljava/lang/String;)V

    new-instance v4, Landroid/graphics/RectF;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v5, v5, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->setRect(Landroid/graphics/RectF;Z)V

    const-string v4, "title"

    invoke-virtual {v1, v4}, Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;->setTitle(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->setExtraDataString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuPlay;->mVoiceRecordingController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/VoiceRecordingController;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuPlay;->mVoicePlayPreparedListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/VoiceRecordingController$VoicePlayPreparedListener;

    invoke-virtual {v0, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/VoiceRecordingController;->setVoicePlayPreparedListener(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/VoiceRecordingController$VoicePlayPreparedListener;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuPlay;->mVoiceRecordMenuPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordMenuPresenter;

    invoke-virtual {v0, v5}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordMenuPresenter;->setPlayingAudio(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuPlay;->mVoiceRecordMenuPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordMenuPresenter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordMenuPresenter;->setSPDVoiceTagPath(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->play(Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "playVoice - filePath: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playVoice - play : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void
.end method


# virtual methods
.method public addMenu(Landroid/view/Menu;)V
    .locals 4

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuConstants$ContextMenuCode;->CONTEXT_MENU_ID_PLAY:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuConstants$ContextMenuCode;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuConstants$ContextMenuCode;->getId()I

    move-result v1

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuConstants$ContextMenuCode;->getId()I

    move-result v0

    sget v2, Lcom/samsung/android/support/senl/nt/composer/R$string;->composer_ctx_menu_play:I

    const/4 v3, 0x0

    invoke-interface {p1, v3, v1, v0, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuPlay;->canShow()Z

    move-result v0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    return-void
.end method

.method public canShow()Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuPlay;->mObjectManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->getSelectedObjectList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuPlay;->mObjectManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->getSelectedObjectList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuPlay;->mObjectManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->getSelectedObjectList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuPlay;->isVideoObject(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuPlay;->isYoutubeObject(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuPlay;->isVoiceMemoObject(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    return v2

    :cond_3
    :goto_1
    return v1
.end method

.method public executeMenu()V
    .locals 4

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuPlay;->TAG:Ljava/lang/String;

    const-string v1, "executePlayMenu#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuPlay;->mObjectManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->getSelectedObjectList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-direct {p0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuPlay;->isVideoObject(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuPlay;->playVideo(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuPlay;->mDialogPresenterManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->showVideoErrDialog()V

    return-void

    :cond_0
    invoke-direct {p0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuPlay;->isYoutubeObject(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuPlay;->getYoutubeID(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    invoke-direct {p0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuPlay;->getIntentToPlayOnYouTubeApp(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuItem;->mActivity:Landroid/app/Activity;

    invoke-static {v3, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/IntentUtil;->startActivity(Landroid/content/Context;Landroid/content/Intent;)Z

    const-string v2, "onYouTubePlay() : YouTube App"

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuPlay;->TAG:Ljava/lang/String;

    const-string v1, "Failed to play YouTube video"

    goto :goto_0

    :catch_1
    invoke-direct {p0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuPlay;->getIntentToPlayOnYouTubeHttp(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuItem;->mActivity:Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/IntentUtil;->startActivity(Landroid/content/Context;Landroid/content/Intent;)Z

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuPlay;->TAG:Ljava/lang/String;

    const-string v1, "onYouTubePlay() : Browser"

    :goto_0
    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-direct {p0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuPlay;->isVoiceMemoObject(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuPlay;->playVoice(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)V

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuPlay;->mObjectManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->clearSelectObject()V

    return-void
.end method
