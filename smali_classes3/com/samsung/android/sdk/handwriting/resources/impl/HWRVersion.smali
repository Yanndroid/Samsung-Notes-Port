.class public Lcom/samsung/android/sdk/handwriting/resources/impl/HWRVersion;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/samsung/android/sdk/handwriting/resources/impl/HWRVersion;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mFields:[I

.field private final mString:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRVersion;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRVersion;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRVersion;->mString:Ljava/lang/String;

    const/4 v0, 0x0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRVersion;->mFields:[I

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/sdk/handwriting/resources/impl/HWRVersion;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRVersion;->mString:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRVersion;->mString:Ljava/lang/String;

    iget-object p1, p1, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRVersion;->mFields:[I

    iput-object p1, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRVersion;->mFields:[I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_3

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRVersion;->mString:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v1, -0x2

    new-array v2, p1, [I

    move v3, v0

    move v4, v3

    :goto_0
    const/4 v5, -0x1

    if-eq v1, v5, :cond_2

    iget-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRVersion;->mString:Ljava/lang/String;

    const/16 v6, 0x2e

    invoke-virtual {v1, v6, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    if-ne v1, v5, :cond_1

    :try_start_0
    iget-object v5, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRVersion;->mString:Ljava/lang/String;

    invoke-virtual {v5, v3, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v2, v4

    goto :goto_1

    :cond_1
    iget-object v5, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRVersion;->mString:Ljava/lang/String;

    invoke-virtual {v5, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v2, v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v1, 0x1

    goto :goto_0

    :catch_0
    sget-object p1, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRVersion;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Number version "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRVersion;->mString:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is corrupted"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    aput v0, v2, v4

    :cond_2
    new-array p1, v4, [I

    iput-object p1, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRVersion;->mFields:[I

    :goto_2
    if-ge v0, v4, :cond_3

    iget-object p1, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRVersion;->mFields:[I

    aget v1, v2, v0

    aput v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void

    :cond_4
    :goto_3
    const-string p1, ""

    iput-object p1, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRVersion;->mString:Ljava/lang/String;

    new-array p1, v0, [I

    iput-object p1, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRVersion;->mFields:[I

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/samsung/android/sdk/handwriting/resources/impl/HWRVersion;)I
    .locals 10

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRVersion;->mString:Ljava/lang/String;

    iget-object v1, p1, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRVersion;->mString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRVersion;->mFields:[I

    array-length v0, v0

    iget-object v2, p1, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRVersion;->mFields:[I

    array-length v2, v2

    move v3, v1

    :goto_0
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-ge v3, v4, :cond_5

    const/4 v4, -0x1

    if-ne v0, v3, :cond_1

    return v4

    :cond_1
    const/4 v5, 0x1

    if-ne v2, v3, :cond_2

    return v5

    :cond_2
    iget-object v6, p1, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRVersion;->mFields:[I

    aget v7, v6, v3

    iget-object v8, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRVersion;->mFields:[I

    aget v9, v8, v3

    if-le v7, v9, :cond_3

    return v4

    :cond_3
    aget v4, v8, v3

    aget v6, v6, v3

    if-le v4, v6, :cond_4

    return v5

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    return v1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRVersion;

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRVersion;->compareTo(Lcom/samsung/android/sdk/handwriting/resources/impl/HWRVersion;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRVersion;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRVersion;

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRVersion;->compareTo(Lcom/samsung/android/sdk/handwriting/resources/impl/HWRVersion;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRVersion;->mString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRVersion;->mString:Ljava/lang/String;

    return-object v0
.end method
