.class public Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfoFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sInstance:Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfoFactory;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "SuggestionInfoFactory"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/model/common/log/CALogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfoFactory;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfoFactory;->sInstance:Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfoFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getDonateType(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1

    const-string v0, "type"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getDonateType(Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionData;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p1}, Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionData;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "source"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/android/support/senl/nt/model/R$array;->donated_app_image:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string p1, "ImageObject"

    return-object p1

    :cond_1
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/android/support/senl/nt/model/R$array;->donated_app_internet:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string p1, "WebPage"

    return-object p1

    :cond_3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/model/R$array;->donated_app_message:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string p1, "Message"

    return-object p1

    :cond_5
    sget-object p1, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfoFactory;->TAG:Ljava/lang/String;

    const-string v0, "getDonateType invalid packageName"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfoFactory;
    .locals 2

    const-class v0, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfoFactory;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfoFactory;->sInstance:Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfoFactory;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfoFactory;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfoFactory;-><init>()V

    sput-object v1, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfoFactory;->sInstance:Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfoFactory;

    :cond_0
    sget-object v1, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfoFactory;->sInstance:Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfoFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getSuggestionInfoClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    const-string v0, "ImageObject"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-class p1, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/MediaObjectSuggestionInfo;

    return-object p1

    :cond_0
    const-string v0, "WebPage"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-class p1, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/WebPageSuggestionInfo;

    return-object p1

    :cond_1
    const-string v0, "Message"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-class p1, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/MessageSuggestionInfo;

    return-object p1

    :cond_2
    const-class p1, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/UnknownSuggestionInfo;

    return-object p1
.end method


# virtual methods
.method public makeSuggestionInfo(Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionData;)Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfo;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfoFactory;->getDonateType(Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionData;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfoFactory;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "makeSuggestionInfo donateType "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "ImageObject"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/MediaObjectSuggestionInfo;

    invoke-direct {v0, p1}, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/MediaObjectSuggestionInfo;-><init>(Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionData;)V

    goto :goto_0

    :cond_0
    const-string v2, "WebPage"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v0, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/WebPageSuggestionInfo;

    invoke-direct {v0, p1}, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/WebPageSuggestionInfo;-><init>(Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionData;)V

    goto :goto_0

    :cond_1
    const-string v2, "Message"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/MessageSuggestionInfo;

    invoke-direct {v0, p1}, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/MessageSuggestionInfo;-><init>(Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionData;)V

    goto :goto_0

    :cond_2
    const-string v0, "makeSuggestionInfo invalid donateType"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/UnknownSuggestionInfo;

    invoke-direct {v0, p1}, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/UnknownSuggestionInfo;-><init>(Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionData;)V

    :goto_0
    return-object v0
.end method

.method public makeSuggestionInfo(Landroid/content/Intent;)Ljava/util/List;
    .locals 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfoFactory;->getDonateType(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfoFactory;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "makeSuggestionInfo donateType "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "ImageObject"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v1, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/MediaObjectSuggestionInfo;

    invoke-direct {v1, p1}, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/MediaObjectSuggestionInfo;-><init>(Landroid/content/Intent;)V

    :goto_0
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    const-string v3, "WebPage"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v1, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/WebPageSuggestionInfo;

    invoke-direct {v1, p1}, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/WebPageSuggestionInfo;-><init>(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    const-string v3, "Message"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/MessageSuggestionInfo;

    invoke-direct {v1, p1}, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/MessageSuggestionInfo;-><init>(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    const-string v1, "makeSuggestionInfo invalid donateType"

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/UnknownSuggestionInfo;

    invoke-direct {v1, p1}, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/UnknownSuggestionInfo;-><init>(Landroid/content/Intent;)V

    goto :goto_0

    :goto_1
    return-object v0
.end method

.method public makeSuggestionInfo(Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionItem;)Ljava/util/List;
    .locals 7
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionItem;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionItem;->getItems()Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x1

    :try_start_0
    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionData;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionData;

    invoke-direct {p0, v3}, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfoFactory;->getDonateType(Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionData;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfoFactory;->getSuggestionInfoClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    new-array v6, v1, [Ljava/lang/Object;

    aput-object v3, v6, v4

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfo;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object v1, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfoFactory;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "makeSuggestionInfo# "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method
