.class Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkify$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkify;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkSpec;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkify;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkify;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkify$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkify;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkSpec;Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkSpec;)I
    .locals 4

    iget v0, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkSpec;->start:I

    iget v1, p2, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkSpec;->start:I

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ge v0, v1, :cond_0

    :goto_0
    move v2, v3

    goto :goto_1

    :cond_0
    if-le v0, v1, :cond_1

    goto :goto_1

    :cond_1
    iget p1, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkSpec;->end:I

    iget p2, p2, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkSpec;->end:I

    if-ge p1, p2, :cond_2

    goto :goto_1

    :cond_2
    if-le p1, p2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_1
    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkSpec;

    check-cast p2, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkSpec;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkify$2;->compare(Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkSpec;Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkSpec;)I

    move-result p1

    return p1
.end method
