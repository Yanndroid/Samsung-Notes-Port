.class public Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkify;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkify$MatchFilter;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkify$CustomLinkifyCustomImpl;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkify$CustomLinkifyFrameworkImpl;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkify$CustomLinkifyCommonImpl;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkify$EntityExtractorImpl;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkify$CustomLinkifyImpl;
    }
.end annotation


# static fields
.field private static final MAP_LENGTH_MINIMUM_DIGITS:I = 0xa

.field private static final PHONE_NUMBER_MINIMUM_DIGITS:I = 0x9

.field private static final TAG:Ljava/lang/String;

.field private static mHyperTextEntityExtractor:Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/HyperTextEntityExtractor;

.field private static mInstance:Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkify;

.field private static mLocale:Ljava/util/Locale;

.field private static final sPhoneNumberOnlyCountMatchFilter:Landroid/text/util/Linkify$MatchFilter;


# instance fields
.field public mCustomLinkSpecComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkSpec;",
            ">;"
        }
    .end annotation
.end field

.field private final mImpl:Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkify$CustomLinkifyImpl;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "CustomLinkify"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkify;->TAG:Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkify$1;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkify$1;-><init>()V

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkify;->sPhoneNumberOnlyCountMatchFilter:Landroid/text/util/Linkify$MatchFilter;

    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkify$CustomLinkifyImpl;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkify$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkify$2;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkify;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkify;->mCustomLinkSpecComparator:Ljava/util/Comparator;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkify;->mImpl:Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkify$CustomLinkifyImpl;

    return-void
.end method

.method public static bridge synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkify;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static bridge synthetic b()Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/HyperTextEntityExtractor;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkify;->mHyperTextEntityExtractor:Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/HyperTextEntityExtractor;

    return-object v0
.end method

.method public static bridge synthetic c()Ljava/util/Locale;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkify;->mLocale:Ljava/util/Locale;

    return-object v0
.end method

.method public static bridge synthetic d()Landroid/text/util/Linkify$MatchFilter;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkify;->sPhoneNumberOnlyCountMatchFilter:Landroid/text/util/Linkify$MatchFilter;

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkify;
    .locals 2

    const-class v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkify;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkify;->getInstance(Landroid/content/Context;Ljava/util/Locale;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkify;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;Ljava/util/Locale;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkify;
    .locals 3

    const-class v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkify;

    monitor-enter v0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    sget-object v2, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkify;->mLocale:Ljava/util/Locale;

    invoke-virtual {p1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sput-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkify;->mLocale:Ljava/util/Locale;

    sput-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkify;->mInstance:Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkify;

    sput-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkify;->mHyperTextEntityExtractor:Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/HyperTextEntityExtractor;

    :cond_0
    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkify;->mInstance:Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkify;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    monitor-exit v0

    return-object p1

    :cond_1
    :try_start_1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1f

    if-lt p1, v2, :cond_4

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkify;->mHyperTextEntityExtractor:Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/HyperTextEntityExtractor;

    if-nez p1, :cond_2

    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/HyperTextEntityExtractor;

    sget-object v2, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkify;->mLocale:Ljava/util/Locale;

    invoke-direct {p1, p0, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/HyperTextEntityExtractor;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    sput-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkify;->mHyperTextEntityExtractor:Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/HyperTextEntityExtractor;

    :cond_2
    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkify;->mHyperTextEntityExtractor:Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/HyperTextEntityExtractor;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/HyperTextEntityExtractor;->isSupported()Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkify;

    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkify$EntityExtractorImpl;

    invoke-direct {p1, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkify$EntityExtractorImpl;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/b;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkify;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkify$CustomLinkifyImpl;)V

    sput-object p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkify;->mInstance:Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkify;

    goto :goto_1

    :cond_3
    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkify;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkify$CustomLinkifyFrameworkImpl;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkify$CustomLinkifyFrameworkImpl;-><init>(Landroid/content/Context;)V

    invoke-direct {p1, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkify;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkify$CustomLinkifyImpl;)V

    :goto_0
    sput-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkify;->mInstance:Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkify;

    goto :goto_1

    :cond_4
    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkify;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkify$CustomLinkifyCustomImpl;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkify$CustomLinkifyCustomImpl;-><init>(Landroid/content/Context;)V

    invoke-direct {p1, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkify;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkify$CustomLinkifyImpl;)V

    goto :goto_0

    :goto_1
    sget-object p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkify;->mInstance:Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkify;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private pruneOverlaps(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkSpec;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkify;->mCustomLinkSpecComparator:Ljava/util/Comparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v2, v0, -0x1

    if-ge v1, v2, :cond_5

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkSpec;

    add-int/lit8 v3, v1, 0x1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkSpec;

    iget v5, v2, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkSpec;->start:I

    iget v6, v4, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkSpec;->start:I

    if-gt v5, v6, :cond_4

    iget v2, v2, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkSpec;->end:I

    if-le v2, v6, :cond_4

    iget v4, v4, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkSpec;->end:I

    const/4 v7, -0x1

    if-gt v4, v2, :cond_1

    :goto_1
    move v2, v3

    goto :goto_2

    :cond_1
    sub-int v8, v2, v5

    sub-int v9, v4, v6

    if-le v8, v9, :cond_2

    goto :goto_1

    :cond_2
    sub-int/2addr v2, v5

    sub-int/2addr v4, v6

    if-ge v2, v4, :cond_3

    move v2, v1

    goto :goto_2

    :cond_3
    move v2, v7

    :goto_2
    if-eq v2, v7, :cond_4

    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_4
    move v1, v3

    goto :goto_0

    :cond_5
    :goto_3
    return-void
.end method


# virtual methods
.method public addLinks(Ljava/lang/String;I)Ljava/util/ArrayList;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkSpec;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p2, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkify;->mImpl:Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkify$CustomLinkifyImpl;

    invoke-virtual {v1, v0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkify$CustomLinkifyImpl;->addLinks(Ljava/util/ArrayList;Ljava/lang/String;I)V

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkify;->pruneOverlaps(Ljava/util/List;)V

    return-object v0
.end method
