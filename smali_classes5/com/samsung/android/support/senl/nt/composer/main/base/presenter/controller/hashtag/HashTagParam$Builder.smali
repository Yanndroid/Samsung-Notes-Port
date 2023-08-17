.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagParam$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagParam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAttachmentFileNameForRecommendation:Ljava/lang/String;

.field private mBulletListTextForRecommendation:Ljava/lang/String;

.field private mHandwritingForRecommendation:Ljava/lang/String;

.field private mMaxSelectableTagCount:I

.field private mNumberListTextForRecommendation:Ljava/lang/String;

.field private mRecognitionImgUri:Ljava/lang/String;

.field private mSelectedTags:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTextContentsForRecommendation:Ljava/lang/String;

.field private mTitleForRecommendation:Ljava/lang/String;

.field private mTodoListTextForRecommendation:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagParam$Builder;->mMaxSelectableTagCount:I

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagParam$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagParam$Builder;->mAttachmentFileNameForRecommendation:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagParam$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagParam$Builder;->mBulletListTextForRecommendation:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagParam$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagParam$Builder;->mHandwritingForRecommendation:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagParam$Builder;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagParam$Builder;->mMaxSelectableTagCount:I

    return p0
.end method

.method public static bridge synthetic e(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagParam$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagParam$Builder;->mNumberListTextForRecommendation:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagParam$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagParam$Builder;->mRecognitionImgUri:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic g(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagParam$Builder;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagParam$Builder;->mSelectedTags:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic h(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagParam$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagParam$Builder;->mTextContentsForRecommendation:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic i(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagParam$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagParam$Builder;->mTitleForRecommendation:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic j(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagParam$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagParam$Builder;->mTodoListTextForRecommendation:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagParam;
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagParam;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagParam;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagParam$Builder;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/a;)V

    return-object v0
.end method

.method public setAttachmentFileNameForRecommendation(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagParam$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagParam$Builder;->mAttachmentFileNameForRecommendation:Ljava/lang/String;

    return-object p0
.end method

.method public setBulletListTextForRecommendation(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagParam$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagParam$Builder;->mBulletListTextForRecommendation:Ljava/lang/String;

    return-object p0
.end method

.method public setHandwritingForRecommendation(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagParam$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagParam$Builder;->mHandwritingForRecommendation:Ljava/lang/String;

    return-object p0
.end method

.method public setMaxSelectableTagCount(I)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagParam$Builder;
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagParam$Builder;->mMaxSelectableTagCount:I

    return-object p0
.end method

.method public setNumberListTextForRecommendation(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagParam$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagParam$Builder;->mNumberListTextForRecommendation:Ljava/lang/String;

    return-object p0
.end method

.method public setRecognitionImgUri(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagParam$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagParam$Builder;->mRecognitionImgUri:Ljava/lang/String;

    return-object p0
.end method

.method public setSelectedTags(Ljava/util/ArrayList;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagParam$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagParam$Builder;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagParam$Builder;->mSelectedTags:Ljava/util/ArrayList;

    return-object p0
.end method

.method public setTextContentsForRecommendation(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagParam$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagParam$Builder;->mTextContentsForRecommendation:Ljava/lang/String;

    return-object p0
.end method

.method public setTitleForRecommendation(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagParam$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagParam$Builder;->mTitleForRecommendation:Ljava/lang/String;

    return-object p0
.end method

.method public setTodoListTextForRecommendation(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagParam$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagParam$Builder;->mTodoListTextForRecommendation:Ljava/lang/String;

    return-object p0
.end method
