.class public Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/UnknownSuggestionInfo;
.super Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfo;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfo;-><init>(Landroid/content/Intent;)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionData;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfo;-><init>(Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionData;)V

    return-void
.end method


# virtual methods
.method public isValidExecution()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setSuggestionInfo()V
    .locals 0

    return-void
.end method
