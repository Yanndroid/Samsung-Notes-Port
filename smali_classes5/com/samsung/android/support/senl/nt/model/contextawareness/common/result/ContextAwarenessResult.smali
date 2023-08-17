.class public Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/ContextAwarenessResult;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/IContextAwarenessResult;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDonatedAppIntent:Landroid/content/Intent;

.field private mRequest:Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/IContextAwarenessResult$Request;

.field private mResponse:Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/IContextAwarenessResult$Response;

.field private final mSuggestionInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSuggestionItem:Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionItem;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "ContextAwarenessResult"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/model/common/log/CALogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/ContextAwarenessResult;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/ContextAwarenessResult;->mSuggestionInfoList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getDonatedAppIntent()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/ContextAwarenessResult;->mDonatedAppIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getRequest()Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/IContextAwarenessResult$Request;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/ContextAwarenessResult;->mRequest:Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/IContextAwarenessResult$Request;

    return-object v0
.end method

.method public getResponse()Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/IContextAwarenessResult$Response;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/ContextAwarenessResult;->mResponse:Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/IContextAwarenessResult$Response;

    return-object v0
.end method

.method public getSuggestionInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/ContextAwarenessResult;->mSuggestionInfoList:Ljava/util/List;

    return-object v0
.end method

.method public getSuggestionItem()Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionItem;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/ContextAwarenessResult;->mSuggestionItem:Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionItem;

    return-object v0
.end method

.method public isResponseSuccess()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/ContextAwarenessResult;->mResponse:Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/IContextAwarenessResult$Response;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public makeSuggestionInfo(Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/IContextAwarenessResult$Request;)V
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/ContextAwarenessResult$1;->$SwitchMap$com$samsung$android$support$senl$nt$model$contextawareness$common$result$IContextAwarenessResult$Request:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    sget-object p1, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/ContextAwarenessResult;->TAG:Ljava/lang/String;

    const-string v0, "makeSuggestionInfo invalid request"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfoFactory;->getInstance()Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfoFactory;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/ContextAwarenessResult;->mDonatedAppIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfoFactory;->makeSuggestionInfo(Landroid/content/Intent;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfoFactory;->getInstance()Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfoFactory;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/ContextAwarenessResult;->mSuggestionItem:Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionItem;

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfoFactory;->makeSuggestionInfo(Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionItem;)Ljava/util/List;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/ContextAwarenessResult;->setSuggestionInfoList(Ljava/util/List;)V

    :goto_1
    return-void
.end method

.method public setDonatedAppIntent(Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/ContextAwarenessResult;->mDonatedAppIntent:Landroid/content/Intent;

    return-void
.end method

.method public setRequest(Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/IContextAwarenessResult$Request;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/ContextAwarenessResult;->mRequest:Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/IContextAwarenessResult$Request;

    return-void
.end method

.method public setResponse(Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/IContextAwarenessResult$Response;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/ContextAwarenessResult;->mResponse:Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/IContextAwarenessResult$Response;

    return-void
.end method

.method public setSuggestionInfoList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/ContextAwarenessResult;->mSuggestionInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/ContextAwarenessResult;->mSuggestionInfoList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public setSuggestionItem(Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionItem;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/ContextAwarenessResult;->mSuggestionItem:Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionItem;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/ContextAwarenessResult;->mSuggestionInfoList:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
