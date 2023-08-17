.class Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateLinkifyHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateLinkifyHelper;->pruneOverlaps(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateLinkSpec;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateLinkSpec;Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateLinkSpec;)I
    .locals 4

    iget v0, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkSpec;->start:I

    iget v1, p2, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkSpec;->start:I

    const/4 v2, -0x1

    if-ge v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v3, 0x1

    if-le v0, v1, :cond_1

    return v3

    :cond_1
    iget p1, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkSpec;->end:I

    iget p2, p2, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkSpec;->end:I

    if-ge p1, p2, :cond_2

    return v3

    :cond_2
    if-le p1, p2, :cond_3

    return v2

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateLinkSpec;

    check-cast p2, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateLinkSpec;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateLinkifyHelper$1;->compare(Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateLinkSpec;Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateLinkSpec;)I

    move-result p1

    return p1
.end method
