.class public Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeData;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeLinkifyDelegateImpl;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$EntityExtractorImpl;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeLinkifyDelegate;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mHyperTextEntityExtractor:Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/HyperTextEntityExtractor;

.field private final mImpl:Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeLinkifyDelegate;

.field private final mLocale:Ljava/util/Locale;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/Locale;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify;->mLocale:Ljava/util/Locale;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/HyperTextEntityExtractor;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/HyperTextEntityExtractor;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify;->mHyperTextEntityExtractor:Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/HyperTextEntityExtractor;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/HyperTextEntityExtractor;->isSupported()Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 p2, 0x0

    if-eqz p1, :cond_1

    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$EntityExtractorImpl;

    invoke-direct {p1, p0, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$EntityExtractorImpl;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify;Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/f;)V

    goto :goto_1

    :cond_1
    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeLinkifyDelegateImpl;

    invoke-direct {p1, p0, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeLinkifyDelegateImpl;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify;Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/e;)V

    :goto_1
    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify;->mImpl:Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeLinkifyDelegate;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/HyperTextEntityExtractor;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify;->mHyperTextEntityExtractor:Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/HyperTextEntityExtractor;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify;)Ljava/util/Locale;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify;->mLocale:Ljava/util/Locale;

    return-object p0
.end method


# virtual methods
.method public getIntentForDate(Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify;->mImpl:Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeLinkifyDelegate;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeLinkify$DateTimeLinkifyDelegate;->setIntentExtraForDate(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method
