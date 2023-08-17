.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/actionsend/ActionSendHelperText;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/actionsend/ActionSendHelperCommon;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final WEB_RANGE_END_OFFSET:Ljava/lang/String; = "web_range_end_offset"

.field private static final WEB_RANGE_START_OFFSET:Ljava/lang/String; = "web_range_start_offset"


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "ActionSendHelperText"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/actionsend/ActionSendHelperText;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/actionsend/ActionSendHelperCommon;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private createJSONObjectByIntentForWebAppCard(Landroid/content/Intent;Ljava/lang/CharSequence;)Lorg/json/JSONObject;
    .locals 5

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/quicknote/ExtraDataHelper;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/quicknote/ExtraDataHelper;-><init>()V

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v2, "android.intent.action.VIEW"

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, p2, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/quicknote/ExtraDataHelper;->createJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/quicknote/ExtraDataHelper$ExtraPutter;

    const/4 v1, 0x0

    invoke-direct {p2, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/quicknote/ExtraDataHelper$ExtraPutter;-><init>(I)V

    new-instance v2, Landroid/util/Pair;

    const-string v3, "web_range_start_offset"

    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p2, v0, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/quicknote/ExtraDataHelper$ExtraPutter;->put(Lorg/json/JSONObject;Landroid/util/Pair;)V

    new-instance v2, Landroid/util/Pair;

    const-string v3, "web_range_end_offset"

    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p2, v0, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/quicknote/ExtraDataHelper$ExtraPutter;->put(Lorg/json/JSONObject;Landroid/util/Pair;)V

    new-instance p2, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/quicknote/ExtraDataHelper$ExtraPutter;

    const/4 v1, 0x1

    invoke-direct {p2, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/quicknote/ExtraDataHelper$ExtraPutter;-><init>(I)V

    new-instance v1, Landroid/util/Pair;

    const-string v2, "app_card_extra"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p2, v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/quicknote/ExtraDataHelper$ExtraPutter;->put(Lorg/json/JSONObject;Landroid/util/Pair;)V

    return-object v0
.end method

.method private executeDownloadWebCardTask(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$WebCard;)Z
    .locals 3

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/common/DownloadObjectHelper$DownloadWebCardTask;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/actionsend/ActionSendHelperCommon;->mCachePath:Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/WebCardUtil;->isShowWebPreviewsEnabled()Z

    move-result v2

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/common/DownloadObjectHelper$DownloadWebCardTask;-><init>(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$WebCard;Ljava/lang/String;Z)V

    const/4 p1, 0x0

    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/actionsend/ActionSendHelperText;->TAG:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    move p2, p1

    :goto_0
    if-nez p2, :cond_0

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/actionsend/ActionSendHelperText;->TAG:Ljava/lang/String;

    const-string p2, "DownloadWebCardTask fail"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    :cond_0
    return p1
.end method

.method private handleMessageAppCard(Landroid/content/Intent;)Z
    .locals 5

    const-string v0, "action_send_addition"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.android.messaging"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return v2

    :cond_0
    const-string v0, "action_send_addition_uri"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/actionsend/ActionSendHelperText;->TAG:Ljava/lang/String;

    const-string v0, "handleMessageAppCard# uri empty "

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v3, "type"

    const-string v4, "Message"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "url"

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "source"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance p1, Lcom/samsung/android/support/senl/nt/model/contextawareness/ContextAwarenessCreator;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/nt/model/contextawareness/ContextAwarenessCreator;-><init>()V

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/model/contextawareness/ContextAwarenessCreator;->createSuggestionInfo(Landroid/content/Intent;)Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfo;

    move-result-object p1

    instance-of v0, p1, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/MessageSuggestionInfo;

    if-nez v0, :cond_2

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/actionsend/ActionSendHelperText;->TAG:Ljava/lang/String;

    const-string v0, "handleMessageAppCard# type error "

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_2
    :try_start_0
    check-cast p1, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/MessageSuggestionInfo;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/actionsend/ActionSendHelperCommon;->mContentList:Ljava/util/List;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/actionsend/ActionSendHelperCommon;->mCachePath:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/quicknote/LinkCardFactory;->createMessageCard(Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/MessageSuggestionInfo;Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$LinkCard;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/actionsend/ActionSendHelperText;->TAG:Ljava/lang/String;

    const-string v0, "add handleMessageAppCard"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/actionsend/ActionSendHelperText;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessageAppCard# JSONException "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method private handleText(Landroid/content/Context;Landroid/content/Intent;)I
    .locals 8

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/actionsend/ActionSendHelperCommon;->getText(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/WebCardUtil;->getSubTextList(Landroid/text/SpannableStringBuilder;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/actionsend/ActionSendHelperText;->handleWebClip(Landroid/content/Intent;Ljava/util/ArrayList;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/actionsend/ActionSendHelperText;->handleWebAppCard(Landroid/content/Context;Landroid/content/Intent;Ljava/util/ArrayList;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/actionsend/ActionSendHelperCommon;->getSubject(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, ""

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/senl/nt/composer/main/base/util/WebCardUtil$SubText;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/WebCardUtil$SubText;->getData()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/WebCardUtil$SubText;->getType()I

    move-result v3

    const/4 v6, 0x1

    if-eq v3, v6, :cond_5

    const/4 v6, 0x2

    if-eq v3, v6, :cond_3

    goto :goto_0

    :cond_3
    new-instance v3, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$WebCard;

    iget-object v6, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/actionsend/ActionSendHelperCommon;->mContentList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4

    move-object v4, v1

    :cond_4
    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$WebCard;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/actionsend/ActionSendHelperCommon;->mContentList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/actionsend/ActionSendHelperCommon;->mDownloadObjList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/actionsend/ActionSendHelperCommon;->mCallableList:Ljava/util/ArrayList;

    new-instance v5, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/common/DownloadObjectHelper$DownloadWebCardTask;

    iget-object v6, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/actionsend/ActionSendHelperCommon;->mCachePath:Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/WebCardUtil;->isShowWebPreviewsEnabled()Z

    move-result v7

    invoke-direct {v5, p1, v3, v6, v7}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/common/DownloadObjectHelper$DownloadWebCardTask;-><init>(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$WebCard;Ljava/lang/String;Z)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/actionsend/ActionSendHelperCommon;->mContentList:Ljava/util/List;

    new-instance v4, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$Text;

    invoke-direct {v4, v5}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$Text;-><init>(Ljava/lang/CharSequence;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/actionsend/ActionSendHelperCommon;->mContentList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/actionsend/ActionSendHelperCommon;->mContentList:Ljava/util/List;

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$Text;

    invoke-direct {v0, v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$Text;-><init>(Ljava/lang/CharSequence;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    const-string p1, "android.intent.extra.STREAM"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    if-eqz p1, :cond_8

    const/16 v2, 0x100

    :cond_8
    return v2
.end method

.method private handleWebAppCard(Landroid/content/Context;Landroid/content/Intent;Ljava/util/ArrayList;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/util/WebCardUtil$SubText;",
            ">;)Z"
        }
    .end annotation

    const-string v0, ""

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/IntentParser;->hasWebAppCard(Landroid/content/Intent;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/composer/main/base/util/WebCardUtil$SubText;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/WebCardUtil$SubText;->getData()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/WebCardUtil$SubText;->getType()I

    move-result v1

    const/4 v4, 0x2

    if-eq v1, v4, :cond_2

    goto :goto_0

    :cond_2
    :try_start_0
    const-string p3, "action_send_addition"

    invoke-virtual {p2, p3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p2, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/actionsend/ActionSendHelperText;->createJSONObjectByIntentForWebAppCard(Landroid/content/Intent;Ljava/lang/CharSequence;)Lorg/json/JSONObject;

    move-result-object v1

    new-instance v4, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$LinkCard;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v0, v3, p3, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$LinkCard;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-direct {p0, p1, v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/actionsend/ActionSendHelperText;->executeDownloadWebCardTask(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$WebCard;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v2

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/actionsend/ActionSendHelperCommon;->mContentList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/actionsend/ActionSendHelperCommon;->mContentList:Ljava/util/List;

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p1, "app_card_extra"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/IntentParser;->removeUnicodeObj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "\\n"

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$WebCard;->setDescription(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$LinkCard;->setLinkIconType()V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/actionsend/ActionSendHelperCommon;->mContentList:Ljava/util/List;

    new-instance p3, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$Text;

    invoke-direct {p3, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$Text;-><init>(Ljava/lang/CharSequence;)V

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    sget-object p2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/actionsend/ActionSendHelperText;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handleWebAppCard# "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return v2
.end method

.method private handleWebClip(Landroid/content/Intent;Ljava/util/ArrayList;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/util/WebCardUtil$SubText;",
            ">;)Z"
        }
    .end annotation

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/IntentParser;->hasWebClip(Landroid/content/Intent;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/support/senl/nt/composer/main/base/util/WebCardUtil$SubText;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/WebCardUtil$SubText;->getData()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/WebCardUtil$SubText;->getType()I

    move-result p2

    const/4 v2, 0x2

    if-ne p2, v2, :cond_1

    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$WebClip;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$WebClip;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/actionsend/ActionSendHelperCommon;->mContentList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/actionsend/ActionSendHelperCommon;->mContentList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1

    :cond_3
    return v0
.end method


# virtual methods
.method public getUrlForWebClip()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/actionsend/ActionSendHelperCommon;->mContentList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$WebClip;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$WebClip;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleIntent(Landroid/content/Context;Landroid/content/Intent;)I
    .locals 1

    invoke-direct {p0, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/actionsend/ActionSendHelperText;->handleMessageAppCard(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/actionsend/ActionSendHelperText;->handleText(Landroid/content/Context;Landroid/content/Intent;)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public hasWebClip()Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/actionsend/ActionSendHelperCommon;->mContentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/actionsend/ActionSendHelperCommon;->mContentList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$Base;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$Base;->getType()I

    move-result v0

    const/4 v3, 0x5

    if-ne v0, v3, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method
