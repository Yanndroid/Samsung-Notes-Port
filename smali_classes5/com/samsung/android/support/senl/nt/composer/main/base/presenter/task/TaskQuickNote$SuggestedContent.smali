.class public abstract Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskQuickNote$SuggestedContent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskQuickNote;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SuggestedContent"
.end annotation


# static fields
.field public static final INPUT_TYPE_CONTENT:I = 0x1

.field public static final INPUT_TYPE_LINK:I = 0x2


# instance fields
.field public mContent:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$Base;

.field public mInputType:I

.field private mIsMaking:Z

.field public mSuggestionInfo:Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfo;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskQuickNote$SuggestedContent;->mInputType:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskQuickNote$SuggestedContent;->mIsMaking:Z

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskQuickNote$SuggestedContent;Landroid/content/Context;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskQuickNote$InputValues;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/composer/main/base/util/StorageChecker;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskQuickNote$SuggestedContent;->makeContentWrap(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskQuickNote$InputValues;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/composer/main/base/util/StorageChecker;)Z

    move-result p0

    return p0
.end method

.method private makeContentWrap(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskQuickNote$InputValues;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/composer/main/base/util/StorageChecker;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskQuickNote$SuggestedContent;->mIsMaking:Z

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskQuickNote$SuggestedContent;->makeContent(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskQuickNote$InputValues;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/composer/main/base/util/StorageChecker;)Z

    move-result p1

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskQuickNote$SuggestedContent;->mIsMaking:Z

    return p1
.end method


# virtual methods
.method public abstract cancel()V
.end method

.method public abstract getContent()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$Base;
.end method

.method public getError()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskQuickNote$SuggestedContent;->mContent:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$Base;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$Base;->getError()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getSuggestionInfo()Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskQuickNote$SuggestedContent;->mSuggestionInfo:Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfo;

    return-object v0
.end method

.method public isMaking()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskQuickNote$SuggestedContent;->mIsMaking:Z

    return v0
.end method

.method public abstract makeContent(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskQuickNote$InputValues;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/composer/main/base/util/StorageChecker;)Z
.end method

.method public setSuggestionInfo(Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskQuickNote$SuggestedContent;->mSuggestionInfo:Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfo;

    return-void
.end method
