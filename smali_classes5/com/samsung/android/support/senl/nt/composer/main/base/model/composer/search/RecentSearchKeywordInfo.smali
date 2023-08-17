.class public Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/search/RecentSearchKeywordInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final mKeyword:Ljava/lang/String;

.field private final mTime:J


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/search/RecentSearchKeywordInfo;->mKeyword:Ljava/lang/String;

    iput-wide p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/search/RecentSearchKeywordInfo;->mTime:J

    return-void
.end method


# virtual methods
.method public getKeyword()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/search/RecentSearchKeywordInfo;->mKeyword:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/search/RecentSearchKeywordInfo;->mTime:J

    return-wide v0
.end method
