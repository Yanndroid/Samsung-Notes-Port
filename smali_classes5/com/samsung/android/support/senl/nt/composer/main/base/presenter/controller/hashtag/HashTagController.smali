.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagController$HashTagListManager;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagController$HashTagActionListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final TAG_BUFFER_LIMIT_SIZE:I = 0x2710


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mHashTagActionListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagController$HashTagActionListener;

.field private final mHashTagListManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagController$HashTagListManager;

.field private mHashTagPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagContract$Presenter;

.field private mModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "HashTagController"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagController$HashTagListManager;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagController$HashTagListManager;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagController;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagController;->mHashTagListManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagController$HashTagListManager;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagController;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagContract$Presenter;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagController;->mHashTagPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagContract$Presenter;

    return-object p0
.end method

.method public static bridge synthetic b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private convertRecommendationByObjects(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getObjectList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getType()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_5

    const/16 v3, 0xa

    if-eq v2, v3, :cond_4

    const/16 v3, 0xd

    if-eq v2, v3, :cond_3

    const/16 v3, 0x11

    if-eq v2, v3, :cond_2

    goto :goto_0

    :cond_2
    check-cast v1, Lcom/samsung/android/sdk/pen/document/SpenObjectLink;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectLink;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_3
    check-cast v1, Lcom/samsung/android/sdk/pen/document/SpenObjectWeb;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectWeb;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_4
    check-cast v1, Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_5
    check-cast v1, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    :goto_1
    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_6
    return-void
.end method

.method private getHandwritingForRecommendation(Ljava/lang/String;)Ljava/lang/StringBuffer;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/model/collector/util/RecognitionUtil;->isSupported(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagController;->mModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getDocState()Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->isContentChanged()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagController;->mModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getDocInfo()Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo;->getUuid()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/4 v4, 0x3

    aput v4, v2, v3

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectResolver;->getRecognizeTextsWithExcludedTypes(Ljava/lang/String;[I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method private getTagEditorBundle(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagParam;)Landroid/os/Bundle;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagParam;->getTitleForRecommendation()Ljava/lang/String;

    move-result-object v1

    const-string v2, "recognition_title_string"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagParam;->getTextContentsForRecommendation()Ljava/lang/String;

    move-result-object v1

    const-string v2, "recognition_text_string"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagParam;->getAttachmentFileNameForRecommendation()Ljava/lang/String;

    move-result-object v1

    const-string v2, "recognition_attachment_string"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "recognition_handwriting_string"

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagParam;->getHandwritingForRecommendation()Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagParam;->getBulletListTextForRecommendation()Ljava/lang/String;

    move-result-object p1

    const-string v1, "recognition_symbol_list_string"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagParam;->getTodoListTextForRecommendation()Ljava/lang/String;

    move-result-object p1

    const-string v1, "recognition_todo_list_string"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagParam;->getNumberListTextForRecommendation()Ljava/lang/String;

    move-result-object p1

    const-string p2, "recognition_number_list_string"

    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private setRecommendationString(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagParam$Builder;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagParam$Builder;
    .locals 11

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagController;->TAG:Ljava/lang/String;

    const-string v1, "getTextForRecommendation() - start"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagController;->mModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getDoc()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getTitle()Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getBodyText()Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    const-string v10, "\n"

    if-nez v9, :cond_1

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    invoke-direct {p0, v1, v3, v4, v10}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagController;->convertRecommendationByObjects(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;Ljava/lang/String;)V

    invoke-direct {p0, v10}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagController;->getHandwritingForRecommendation(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagController;->checkLimitLength(Ljava/lang/StringBuffer;)V

    invoke-virtual {p0, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagController;->checkLimitLength(Ljava/lang/StringBuffer;)V

    invoke-virtual {p0, v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagController;->checkLimitLength(Ljava/lang/StringBuffer;)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagController;->checkLimitLength(Ljava/lang/StringBuffer;)V

    const-string v8, "getTextForRecommendation() - end"

    invoke-static {v0, v8}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagParam$Builder;->setTitleForRecommendation(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagParam$Builder;

    move-result-object p1

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagParam$Builder;->setTextContentsForRecommendation(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagParam$Builder;

    move-result-object p1

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagParam$Builder;->setAttachmentFileNameForRecommendation(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagParam$Builder;

    move-result-object p1

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagParam$Builder;->setNumberListTextForRecommendation(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagParam$Builder;

    move-result-object p1

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagParam$Builder;->setBulletListTextForRecommendation(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagParam$Builder;

    move-result-object p1

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagParam$Builder;->setTodoListTextForRecommendation(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagParam$Builder;

    move-result-object p1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagParam$Builder;->setHandwritingForRecommendation(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagParam$Builder;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public checkLimitLength(Ljava/lang/StringBuffer;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    const/16 v1, 0x2710

    if-le v0, v1, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    :cond_0
    return-void
.end method

.method public executeHashNotesActivity(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagController;->TAG:Ljava/lang/String;

    const-string v1, "executeHashNotesActivity."

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagController;->mActivity:Landroid/app/Activity;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/access/hashtag/HashTagAccessHandler;->getHashTagNotesActivityClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string p1, "key_selected_tags"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/high16 p1, 0x20000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagController;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public executeHashTagEditor(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagController;->mModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getDoc()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagParam$Builder;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagParam$Builder;-><init>()V

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagParam$Builder;->setMaxSelectableTagCount(I)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagParam$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagController;->mHashTagListManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagController$HashTagListManager;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagController$HashTagListManager;->getTagList()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/hashtag/HashTagDataHelper;->convertToTagStringList(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagParam$Builder;->setSelectedTags(Ljava/util/ArrayList;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagParam$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagController;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/util/HashTagUtils;->isSupportedTagEditor(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagController;->TAG:Ljava/lang/String;

    const-string v2, "executeHashTagEditor() - start a TagEditor by tagService"

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagController;->setRecommendationString(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagParam$Builder;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagParam$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagParam$Builder;->build()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagParam;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.samsung.android.service.tagservice"

    const-string v3, "com.samsung.android.service.tagservice.ui.tageditor.TagEditorActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagController;->getTagEditorBundle(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagParam;)Landroid/os/Bundle;

    move-result-object p1

    const-string v2, "recognition_note_extra"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagController;->mActivity:Landroid/app/Activity;

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;->isSecBrandAsGalaxy()Z

    move-result v2

    if-eqz v2, :cond_1

    sget v2, Lcom/samsung/android/support/senl/nt/composer/R$string;->notes_jp:I

    goto :goto_0

    :cond_1
    sget v2, Lcom/samsung/android/support/senl/nt/composer/R$string;->notes:I

    :goto_0
    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v2, "app_name"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :cond_2
    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagController;->TAG:Ljava/lang/String;

    const-string v1, "executeHashTagEditor() - start a custom tag editor"

    invoke-static {p1, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagParam$Builder;->build()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagParam;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagController;->mActivity:Landroid/app/Activity;

    const-class v2, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/TagEditorActivity;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :goto_1
    const/high16 p1, 0x4000000

    invoke-virtual {v1, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagParam;->getSelectedTags()Ljava/util/ArrayList;

    move-result-object p1

    const-string v2, "selected_tags"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagParam;->getMaxSelectableTagCount()I

    move-result p1

    const-string v0, "max_selectable_tags"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagController;->mActivity:Landroid/app/Activity;

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;->HashTag:Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;->getId()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagController;->mModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getComposerState()Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;

    move-result-object p1

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;->setLastRequestCode(I)V

    return-void

    :cond_3
    :goto_2
    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagController;->TAG:Ljava/lang/String;

    const-string v0, "executeHashTagEditor() - mModel or getDoc is null"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getTagList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagController;->mHashTagListManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagController$HashTagListManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagController$HashTagListManager;->getTagList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/hashtag/HashTagDataHelper;->convertToTagStringList(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public init(Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagController;->mModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagController;->mHashTagListManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagController$HashTagListManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagController$HashTagListManager;->init(Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;)V

    return-void
.end method

.method public initPresenter(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagContract$Presenter;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagController;->mHashTagPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagContract$Presenter;

    return-void
.end method

.method public insertHashTagList(Landroid/content/Intent;)Z
    .locals 7

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insertHashTagList#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const-string p1, "insertHashTagList#, the result data is null"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    const-string v0, "result_selected_tags"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-nez p1, :cond_1

    return v1

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/model/repository/data/tag/DocumentTagFactory;->create(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/model/documents/data/TagData;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagController;->mModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getModeManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;->isEditMode()Z

    move-result v1

    const-string v2, "4053"

    const-string v3, "4054"

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagController;->mHashTagPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagContract$Presenter;

    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagContract$Presenter;->getTagList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const-string v4, "401"

    if-eqz v1, :cond_3

    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    int-to-long v5, v1

    invoke-static {v4, v2, v5, v6}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_3

    :cond_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v4, v3, v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_3

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagController;->mModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getComposerState()Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;->isInAppCollaborationMode()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagController;->mHashTagPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagContract$Presenter;

    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagContract$Presenter;->getTagList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const-string v4, "672"

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagController;->mHashTagPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagContract$Presenter;

    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagContract$Presenter;->getTagList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const-string v2, "301"

    if-eqz v1, :cond_6

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    int-to-long v3, v1

    const-string v1, "3026"

    goto :goto_2

    :cond_6
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    int-to-long v3, v1

    const-string v1, "3027"

    :goto_2
    invoke-static {v2, v1, v3, v4}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;J)V

    :goto_3
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagController;->mHashTagListManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagController$HashTagListManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagController$HashTagListManager;->saveHashTagList(Ljava/util/List;Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagController;->mHashTagPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagContract$Presenter;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagContract$Presenter;->setTagListToComposerView(Ljava/util/List;)V

    return v2
.end method

.method public isNeedToExecuteAsyncForRecognition()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagController;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/util/HashTagUtils;->isSupportedTagEditor(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagController;->mModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getDocState()Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->isContentChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagController;->mModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getDocState()Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->isContentEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 1

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagController;->TAG:Ljava/lang/String;

    const-string v0, "onActivityResult#"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    invoke-virtual {p0, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagController;->insertHashTagList(Landroid/content/Intent;)Z

    move-result p2

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagController;->mModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getModeManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;

    move-result-object p3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;->View:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;

    invoke-virtual {p3, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;->isMode(Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;)Z

    move-result p3

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagController;->mModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    const/4 v0, 0x1

    invoke-virtual {p3, p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->save(ZZ)Z

    :cond_0
    return p2

    :cond_1
    return p1
.end method

.method public onAttachView(Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagController;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public onDetachView()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagController;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public onHashTagAdded(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagController;->onHashTagAdded(Ljava/lang/String;Z)V

    return-void
.end method

.method public onHashTagAdded(Ljava/lang/String;Z)V
    .locals 6

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagController;->TAG:Ljava/lang/String;

    const-string v1, "onHashTagAdded#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagController;->mHashTagListManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagController$HashTagListManager;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagController$HashTagListManager;->getTagList()Ljava/util/List;

    move-result-object v1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/util/HashTagUtils;->convertByFilter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string p1, "onHashTagAdded# Failed to add a tag by filter"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/model/repository/data/tag/DocumentTagFactory;->create(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/model/documents/data/TagData;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    const/16 v5, 0x1e

    if-ge v3, v5, :cond_3

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/util/HashTagUtils;->containsIgnoreCase(Ljava/util/List;Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/model/documents/data/TagData;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/model/documents/data/TagData;->setName(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/model/documents/data/TagData;

    goto :goto_0

    :cond_1
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagController;->mHashTagListManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagController$HashTagListManager;

    invoke-virtual {p1, v1, v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagController$HashTagListManager;->saveHashTagList(Ljava/util/List;Z)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagController;->mHashTagPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagContract$Presenter;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/hashtag/HashTagDataHelper;->convertToTagStringList(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagContract$Presenter;->setTagListToComposerView(Ljava/util/List;)V

    if-eqz p2, :cond_2

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagController;->mHashTagActionListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagController$HashTagActionListener;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagController$HashTagActionListener;->onHashTagAdded()V

    :cond_2
    const-string p1, "401"

    const-string p2, "4037"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string p1, "onHashTagAdded() : Failed to add a tag by max."

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagController;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$string;->tag_toast_input_error_max_number_tag:I

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p2, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v3}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHandler;->show(Landroid/content/Context;Ljava/lang/String;I)V

    :goto_1
    return-void
.end method

.method public onHashTagRemoved(Ljava/lang/String;)V
    .locals 5

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagController;->TAG:Ljava/lang/String;

    const-string v1, "onHashTagRemoved()#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "onHashTagRemoved()# Failed to remove a tag by filter"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagController;->mHashTagListManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagController$HashTagListManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagController$HashTagListManager;->getTagList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, -0x1

    if-ge v2, v3, :cond_2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/senl/nt/model/documents/data/TagData;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/model/documents/data/TagData;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move v2, v4

    :goto_1
    if-eq v2, v4, :cond_3

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onHashTagRemoved() : removed tag "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagController;->mHashTagListManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagController$HashTagListManager;

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagController$HashTagListManager;->saveHashTagList(Ljava/util/List;Z)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagController;->mHashTagPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagContract$Presenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/hashtag/HashTagDataHelper;->convertToTagStringList(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagContract$Presenter;->setTagListToComposerView(Ljava/util/List;)V

    :cond_3
    return-void
.end method

.method public onHashTagRenameed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagController;->mHashTagListManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagController$HashTagListManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagController$HashTagListManager;->getTagList()Ljava/util/List;

    move-result-object v0

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/util/HashTagUtils;->convertByFilter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagController;->TAG:Ljava/lang/String;

    const-string p2, "onHashTagAdded() : Failed to add a tag by filter"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/util/HashTagUtils;->containsIgnoreCase(Ljava/util/List;Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_2

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/model/documents/data/TagData;

    invoke-static {v0, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/util/HashTagUtils;->containsIgnoreCase(Ljava/util/List;Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_1

    if-eq v2, p1, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v1, p2}, Lcom/samsung/android/support/senl/nt/model/documents/data/TagData;->setName(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/model/documents/data/TagData;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagController;->mHashTagListManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagController$HashTagListManager;

    const/4 p2, 0x1

    invoke-virtual {p1, v0, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagController$HashTagListManager;->saveHashTagList(Ljava/util/List;Z)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagController;->mHashTagPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagContract$Presenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/hashtag/HashTagDataHelper;->convertToTagStringList(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagContract$Presenter;->setTagListToComposerView(Ljava/util/List;)V

    :cond_2
    return-void
.end method

.method public saveHashTagList(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/model/documents/data/TagData;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagController;->mHashTagListManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagController$HashTagListManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagController$HashTagListManager;->saveHashTagList(Ljava/util/List;Z)V

    return-void
.end method

.method public setActionListener(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagController$HashTagActionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagController;->mHashTagActionListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagController$HashTagActionListener;

    return-void
.end method
