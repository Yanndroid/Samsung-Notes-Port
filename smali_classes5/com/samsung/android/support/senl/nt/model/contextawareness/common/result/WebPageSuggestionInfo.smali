.class public Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/WebPageSuggestionInfo;
.super Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfo;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mUrl:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "WebPageSuggestionInfo"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/model/common/log/CALogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/WebPageSuggestionInfo;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfo;-><init>(Landroid/content/Intent;)V

    sget-object p1, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/WebPageSuggestionInfo;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SuggestionInfo from intent - url : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/WebPageSuggestionInfo;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionData;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfo;-><init>(Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionData;)V

    return-void
.end method


# virtual methods
.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/WebPageSuggestionInfo;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public isValidExecution()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setSuggestionInfo()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfo;->mIntent:Landroid/content/Intent;

    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/WebPageSuggestionInfo;->mUrl:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WebPageSuggestionInfo{mUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/WebPageSuggestionInfo;->mUrl:Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
