.class public interface abstract Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/IContextAwarenessResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/IContextAwarenessResult$Response;,
        Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/IContextAwarenessResult$Request;
    }
.end annotation


# virtual methods
.method public abstract getDonatedAppIntent()Landroid/content/Intent;
.end method

.method public abstract getRequest()Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/IContextAwarenessResult$Request;
.end method

.method public abstract getResponse()Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/IContextAwarenessResult$Response;
.end method

.method public abstract getSuggestionInfoList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSuggestionItem()Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionItem;
.end method

.method public abstract isResponseSuccess()Z
.end method

.method public abstract makeSuggestionInfo(Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/IContextAwarenessResult$Request;)V
.end method

.method public abstract setDonatedAppIntent(Landroid/content/Intent;)V
.end method

.method public abstract setRequest(Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/IContextAwarenessResult$Request;)V
.end method

.method public abstract setResponse(Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/IContextAwarenessResult$Response;)V
.end method

.method public abstract setSuggestionInfoList(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setSuggestionItem(Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionItem;)V
.end method
