.class abstract Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/AbsStoredIntegerSpan;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/AbsIntegerSpan;
.source "SourceFile"


# static fields
.field private static final NOT_STORED:I = -0x1


# instance fields
.field private preferenceKey:Ljava/lang/String;

.field public sharedPreferencesCompat:Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/AbsIntegerSpan;-><init>(I)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/AbsStoredIntegerSpan;->preferenceKey:Ljava/lang/String;

    const-string p1, "Composer"

    invoke-static {p1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/AbsStoredIntegerSpan;->sharedPreferencesCompat:Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    return-void
.end method

.method public static getStoredSpan(Ljava/lang/String;)I
    .locals 2

    const-string v0, "Composer"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInt(Ljava/lang/String;I)I

    move-result p0

    if-eq p0, v1, :cond_0

    return p0

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    const-string v0, "Not stored value"

    invoke-direct {p0, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getStoredSpan()I
    .locals 3

    const-string v0, "Composer"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/AbsStoredIntegerSpan;->preferenceKey:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v2, :cond_0

    return v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Not stored value"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getValue()I
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/AbsStoredIntegerSpan;->getStoredSpan()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    invoke-super {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/AbsIntegerSpan;->getValue()I

    move-result v0

    return v0
.end method

.method public setValue(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/AbsIntegerSpan;->setValue(I)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/AbsStoredIntegerSpan;->storeSpan(I)V

    return-void
.end method

.method public storeSpan(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/AbsStoredIntegerSpan;->sharedPreferencesCompat:Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/AbsStoredIntegerSpan;->preferenceKey:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->putInt(Ljava/lang/String;I)V

    return-void
.end method
