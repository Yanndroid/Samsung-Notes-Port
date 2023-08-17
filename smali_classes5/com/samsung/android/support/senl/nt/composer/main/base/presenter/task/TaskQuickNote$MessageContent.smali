.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskQuickNote$MessageContent;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskQuickNote$SuggestedContent;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskQuickNote;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MessageContent"
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskQuickNote$SuggestedContent;-><init>(I)V

    return-void
.end method

.method private makeLink(Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/MessageSuggestionInfo;Ljava/lang/String;)Z
    .locals 2

    :try_start_0
    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/quicknote/LinkCardFactory;->createMessageCard(Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/MessageSuggestionInfo;Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$LinkCard;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskQuickNote$SuggestedContent;->mContent:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$Base;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskQuickNote;->d()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MessageContent.makeLink# "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public cancel()V
    .locals 0

    return-void
.end method

.method public getContent()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$Base;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskQuickNote$SuggestedContent;->mContent:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$Base;

    return-object v0
.end method

.method public makeContent(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskQuickNote$InputValues;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/composer/main/base/util/StorageChecker;)Z
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskQuickNote$SuggestedContent;->mSuggestionInfo:Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfo;

    check-cast p1, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/MessageSuggestionInfo;

    iget p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskQuickNote$SuggestedContent;->mInputType:I

    const/4 p4, 0x2

    if-ne p2, p4, :cond_0

    invoke-direct {p0, p1, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskQuickNote$MessageContent;->makeLink(Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/MessageSuggestionInfo;Ljava/lang/String;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
